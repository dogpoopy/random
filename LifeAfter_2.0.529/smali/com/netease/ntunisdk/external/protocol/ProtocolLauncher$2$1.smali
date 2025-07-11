.class Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;
.super Ljava/lang/Object;
.source "ProtocolLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->onFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    iget-object v2, v2, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    iget-object v3, v3, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-static {v3}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->access$000(Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->startActivity(Landroid/content/Intent;)V

    .line 255
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->overridePendingTransition(II)V

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2$1;->this$1:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher$2;->this$0:Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolLauncher;->finish()V

    return-void
.end method
