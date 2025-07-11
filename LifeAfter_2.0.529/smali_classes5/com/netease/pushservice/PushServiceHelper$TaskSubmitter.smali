.class public Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;
.super Ljava/lang/Object;
.source "PushServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pushservice/PushServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSubmitter"
.end annotation


# instance fields
.field final m_executorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/netease/pushservice/PushServiceHelper;


# direct methods
.method public constructor <init>(Lcom/netease/pushservice/PushServiceHelper;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->this$0:Lcom/netease/pushservice/PushServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
