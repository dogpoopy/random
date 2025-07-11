.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2$1;->this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2$1;->this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2$1;->this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$4;->val$uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolIfNeed(Ljava/lang/String;)V

    return-void
.end method
