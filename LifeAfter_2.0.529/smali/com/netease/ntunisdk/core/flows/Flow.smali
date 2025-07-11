.class public interface abstract Lcom/netease/ntunisdk/core/flows/Flow;
.super Ljava/lang/Object;


# virtual methods
.method public abstract finish(ILcom/netease/ntunisdk/core/flows/FlowResult;)V
.end method

.method public abstract getLifeCycleManager()Lcom/netease/ntunisdk/core/life/LifeCycleManager;
.end method

.method public abstract next(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;Lcom/netease/ntunisdk/core/flows/FlowCallback;)Lcom/netease/ntunisdk/core/flows/Node;
.end method

.method public abstract start(Lcom/netease/ntunisdk/core/flows/FlowCallback;)Lcom/netease/ntunisdk/core/flows/Flow;
.end method

.method public abstract update(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;I)V
.end method
