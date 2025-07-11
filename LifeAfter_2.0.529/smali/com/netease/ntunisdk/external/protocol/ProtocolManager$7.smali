.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->gameLoginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Ljava/lang/String;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$700(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->isProtocolUrlChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->saveConfirmByUid(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$702(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$702(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Z)Z

    .line 474
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
