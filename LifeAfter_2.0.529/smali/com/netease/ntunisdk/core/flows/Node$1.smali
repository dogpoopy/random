.class final Lcom/netease/ntunisdk/core/flows/Node$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/core/flows/FlowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/flows/Node;->start(Lcom/netease/ntunisdk/core/flows/FlowCallback;)Lcom/netease/ntunisdk/core/flows/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/flows/FlowCallback;

.field final synthetic b:Lcom/netease/ntunisdk/core/flows/Node;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/flows/Node$1;->b:Lcom/netease/ntunisdk/core/flows/Node;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/flows/Node$1;->a:Lcom/netease/ntunisdk/core/flows/FlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/flows/Node$1;->a:Lcom/netease/ntunisdk/core/flows/FlowCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/core/flows/FlowCallback;->onFinish(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;)V

    :cond_0
    return-void
.end method

.method public final onUpdate(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/flows/Node$1;->a:Lcom/netease/ntunisdk/core/flows/FlowCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/core/flows/FlowCallback;->onUpdate(Lcom/netease/ntunisdk/core/flows/Node;Lcom/netease/ntunisdk/core/flows/FlowResult;)V

    :cond_0
    return-void
.end method
