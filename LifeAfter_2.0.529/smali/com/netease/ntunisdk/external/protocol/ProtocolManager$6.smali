.class Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->notShowCallback()V
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

    .line 444
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolManager$6;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->access$1000(Lcom/netease/ntunisdk/external/protocol/ProtocolManager;)Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolCallback;->onFinish(I)V

    return-void
.end method
