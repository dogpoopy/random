.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    sget-object v1, Lcom/netease/ntunisdk/external/protocol/Scene;->REVIEW:Lcom/netease/ntunisdk/external/protocol/Scene;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    iget-object v2, v2, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$200(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$600(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;IZ)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2$1;-><init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$5$2;)V

    invoke-static {v0, v3, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$500(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;ZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method
