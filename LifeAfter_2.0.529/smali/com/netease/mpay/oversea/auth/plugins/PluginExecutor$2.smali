.class Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;
.super Ljava/lang/Object;
.source "PluginExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->dispatchOnResumeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    iget-object v0, v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 87
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor$2;->this$0:Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    iget-object v0, v0, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->mRunOnResumeTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
