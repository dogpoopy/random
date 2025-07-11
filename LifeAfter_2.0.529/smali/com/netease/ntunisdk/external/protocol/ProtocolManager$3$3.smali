.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 238
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->val$isForceQuit:Z

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3$3;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$3;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getCallback()Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    :cond_0
    return-void
.end method
