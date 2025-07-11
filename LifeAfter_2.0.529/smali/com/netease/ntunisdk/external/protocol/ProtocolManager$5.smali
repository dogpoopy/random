.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocol()V
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

    .line 344
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$800(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)V
    :try_end_0
    .catch Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;->printStackTrace()V

    .line 354
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;)V

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V

    return-void
.end method
