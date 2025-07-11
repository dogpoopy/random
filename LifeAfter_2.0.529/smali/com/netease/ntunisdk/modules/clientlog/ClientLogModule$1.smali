.class Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;
.super Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;
.source "ClientLogModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/modules/base/call/IModulesCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Landroid/os/Looper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;->this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$FHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;->this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->access$000(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule$1;->this$0:Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;->access$100(Lcom/netease/ntunisdk/modules/clientlog/ClientLogModule;Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogMessage;)V

    :cond_1
    :goto_0
    return-void
.end method
