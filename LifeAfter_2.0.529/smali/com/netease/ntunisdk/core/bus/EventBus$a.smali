.class final Lcom/netease/ntunisdk/core/bus/EventBus$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field volatile b:Z

.field c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/ntunisdk/core/bus/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/netease/ntunisdk/core/bus/EventBus;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/core/bus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->d:Lcom/netease/ntunisdk/core/bus/EventBus;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->a:Z

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->b:Z

    const-string p1, "EventBus HandOutExecutor new"

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/bus/EventBus$a;->setDaemon(Z)V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->a:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/core/bus/a;

    const-string v1, "EventBus HandOutExecutor handOut: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/ntunisdk/core/bus/EventBus;->a()V

    iget-object v1, v0, Lcom/netease/ntunisdk/core/bus/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->d:Lcom/netease/ntunisdk/core/bus/EventBus;

    invoke-static {v2}, Lcom/netease/ntunisdk/core/bus/EventBus;->a(Lcom/netease/ntunisdk/core/bus/EventBus;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    const-string v3, "once"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/netease/ntunisdk/core/bus/a;

    invoke-direct {v4, v0}, Lcom/netease/ntunisdk/core/bus/a;-><init>(Lcom/netease/ntunisdk/core/bus/a;)V

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/core/bus/Observer;

    iput-object v5, v4, Lcom/netease/ntunisdk/core/bus/a;->c:Lcom/netease/ntunisdk/core/bus/Observer;

    invoke-static {v4}, Lcom/netease/ntunisdk/core/bus/EventBus;->a(Lcom/netease/ntunisdk/core/bus/a;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/netease/ntunisdk/core/bus/a;

    invoke-direct {v4, v0}, Lcom/netease/ntunisdk/core/bus/a;-><init>(Lcom/netease/ntunisdk/core/bus/a;)V

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/core/bus/Observer;

    iput-object v3, v4, Lcom/netease/ntunisdk/core/bus/a;->c:Lcom/netease/ntunisdk/core/bus/Observer;

    invoke-static {v4}, Lcom/netease/ntunisdk/core/bus/EventBus;->a(Lcom/netease/ntunisdk/core/bus/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->a:Z

    invoke-static {}, Lcom/netease/ntunisdk/core/bus/EventBus$a;->interrupted()Z

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
