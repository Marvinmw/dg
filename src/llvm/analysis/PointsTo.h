#ifndef _LLVM_DG_POINTS_TO_ANALYSIS_H_
#define _LLVM_DG_POINTS_TO_ANALYSIS_H_

#include <llvm/IR/Function.h>
#include <llvm/IR/DataLayout.h>
#include <llvm/Support/raw_ostream.h>

#include "analysis/PointsTo/PointerSubgraph.h"
#include "analysis/PointsTo/PointerAnalysis.h"
#include "llvm/analysis/PointerSubgraph.h"

namespace dg {

using analysis::pta::PointerSubgraph;
using analysis::pta::PSNode;
using analysis::pta::LLVMPointerSubgraphBuilder;

template <typename PTType>
class LLVMPointerAnalysisImpl : public PTType
{
    LLVMPointerSubgraphBuilder *builder;

    bool callIsCompatible(const llvm::Function *F, const llvm::CallInst *CI)
    {
        using namespace llvm;

        if (F->arg_size() > CI->getNumArgOperands())
            return false;

        if (!F->getReturnType()->canLosslesslyBitCastTo(CI->getType()))
            return false;

        int idx = 0;
        for (auto A = F->arg_begin(), E = F->arg_end(); A != E; ++A, ++idx) {
            Type *CTy = CI->getArgOperand(idx)->getType();
            Type *ATy = A->getType();

            if (!CTy->canLosslesslyBitCastTo(ATy))
                return false;
        }

        return true;
    }

public:
    LLVMPointerAnalysisImpl(PointerSubgraph *PS, LLVMPointerSubgraphBuilder *b)
    : PTType(PS), builder(b) {}

    // build new subgraphs on calls via pointer
    virtual bool functionPointerCall(PSNode *callsite, PSNode *called)
    {
        // with vararg it may happen that we get pointer that
        // is not to function, so just bail out here in that case
        if (!llvm::isa<llvm::Function>(called->getUserData<llvm::Value>()))
            return false;

        const llvm::Function *F = called->getUserData<llvm::Function>();
        const llvm::CallInst *CI = callsite->getUserData<llvm::CallInst>();

        // incompatible prototypes, skip it...
        if (!callIsCompatible(F, CI))
            return false;

        if (F->size() == 0) {
            // calling declaration that returns a pointer?
            // That is unknown pointer
            return callsite->getPairedNode()->addPointsTo(analysis::pta::PointerUnknown);
        }

        std::pair<PSNode *, PSNode *> cf = builder->createCallToFunction(CI, F);
        assert(cf.first && cf.second);

        // we got the return site for the call stored as the paired node
        PSNode *ret = callsite->getPairedNode();
        // ret is a PHI node, so pass the values returned from the
        // procedure call
        ret->addOperand(cf.second);

        // replace the edge from call->ret that we
        // have due to connectivity of the graph until we
        // insert the subgraph
        if (callsite->successorsNum() == 1 &&
            callsite->getSingleSuccessor() == ret) {
            callsite->replaceSingleSuccessor(cf.first);
        } else
            callsite->addSuccessor(cf.first);

        cf.second->addSuccessor(ret);

        return true;
    }

    /*
    virtual bool error(PSNode *at, const char *msg)
    {
        llvm::Value *val = at->getUserData<llvm::Value>();
        assert(val);

        llvm::errs() << "PTA - error @ " << *val << " : " << msg << "\n";
        return false;
    }

    virtual bool errorEmptyPointsTo(PSNode *from, PSNode *to)
    {
        // this is valid even in flow-insensitive points-to
        // because we process the nodes in CFG order
        llvm::Value *val = from->getUserData<llvm::Value>();
        assert(val);
        llvm::Value *val2 = to->getUserData<llvm::Value>();
        assert(val2);

        // due to int2ptr we may have spurious loads
        // in PointerSubgraph. Don't do anything in this case
        if (!val->getType()->isPointerTy())
            return false;

        llvm::errs() << "PTA - error @ " << *val << " : no points-to >>\n\t"
                     << *val2 << "\n";

        return false;
    }
    */
};

class LLVMPointerAnalysis
{
    const llvm::Module *M;
    PointerSubgraph *PS;
    LLVMPointerSubgraphBuilder *builder;

public:

    LLVMPointerAnalysis(const llvm::Module *m,
                        uint64_t field_sensitivity = UNKNOWN_OFFSET)
        : M(m), PS(new PointerSubgraph()),
          builder(new LLVMPointerSubgraphBuilder(m, field_sensitivity)) {}

    ~LLVMPointerAnalysis()
    {
        delete PS;
        delete builder;
    }

    PSNode *getNode(const llvm::Value *val)
    {
        return builder->getNode(val);
    }

    PSNode *getPointsTo(const llvm::Value *val)
    {
        return builder->getPointsTo(val);
    }

    const std::unordered_map<const llvm::Value *, PSNode *>&
    getNodesMap() const
    {
        return builder->getNodesMap();
    }

    void getNodes(std::set<PSNode *>& cont)
    {
        PS->getNodes(cont);
    }

    template <typename PTType>
    void run()
    {
        // build the subgraph
        assert(PS && "Incorrectly constructer PTA, missing PS");
        PS->setRoot(builder->buildLLVMPointerSubgraph());

        // run the analysis itself
        assert(builder && "Incorrectly constructer PTA, missing builder");
        auto PTA = LLVMPointerAnalysisImpl<PTType>(PS, builder);
        PTA.run();
    }
};

} // namespace dg

#endif // _LLVM_DG_POINTS_TO_ANALYSIS_H_
