.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$isForceQuit:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    :cond_0
    return-void
.end method
