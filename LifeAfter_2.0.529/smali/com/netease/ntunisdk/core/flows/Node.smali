.class public abstract Lcom/netease/ntunisdk/core/flows/Node;
.super Lcom/netease/ntunisdk/core/life/LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/ntunisdk/core/life/LifeCycleListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/netease/ntunisdk/core/life/LifeCycleManager;

.field protected scene:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/core/life/LifeCycleManager;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/life/LifeCycleManager;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/life/LifeCycleListener;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/core/flows/Node;->scene:Ljava/lang/Object;

    iput-object p1, p0, Lcom/netease/ntunisdk/core/flows/Node;->a:Lcom/netease/ntunisdk/core/life/LifeCycleManager;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/flows/Node;->a:Lcom/netease/ntunisdk/core/life/LifeCycleManager;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/core/life/LifeCycleManager;->registerLifeCycle(Lcom/netease/ntunisdk/core/life/LifeCycle;)V

    return-void
.end method


# virtual methods
.method public abstract exec(Lcom/netease/ntunisdk/core/flows/FlowCallback;)V
.end method

.method public final getLifeCycleManager()Lcom/netease/ntunisdk/core/life/LifeCycleManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/flows/Node;->a:Lcom/netease/ntunisdk/core/life/LifeCycleManager;

    return-object v0
.end method

.method public getScene()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/core/flows/Node;->scene:Ljava/lang/Object;

    return-object v0
.end method

.method public needRetry()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/netease/ntunisdk/core/flows/FlowCallback;)Lcom/netease/ntunisdk/core/flows/Node;
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/core/flows/Node$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/core/flows/Node$1;-><init>(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowCallback;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/core/flows/Node;->exec(Lcom/netease/ntunisdk/core/flows/FlowCallback;)V

    return-object p0
.end method
