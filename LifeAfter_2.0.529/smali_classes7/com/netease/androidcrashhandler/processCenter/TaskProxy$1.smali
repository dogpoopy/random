.class Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->access$000(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "trace"

    const-string v1, "TaskProxy [start] thread start"

    .line 89
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->access$100(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/netease/androidcrashhandler/processCenter/TaskProxy$1;->this$0:Lcom/netease/androidcrashhandler/processCenter/TaskProxy;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/processCenter/TaskProxy;->access$000(Lcom/netease/androidcrashhandler/processCenter/TaskProxy;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 97
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 100
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskProxy [start] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
