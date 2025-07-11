.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->killProcess(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOpen()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$1;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$100(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onOpen()V

    :cond_0
    return-void
.end method
