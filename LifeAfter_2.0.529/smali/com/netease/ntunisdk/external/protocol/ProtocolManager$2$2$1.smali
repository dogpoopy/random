.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2$1;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2$1;->this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2$1;->this$2:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2$2;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->showProtocolWhenLaunch()V

    return-void
.end method
