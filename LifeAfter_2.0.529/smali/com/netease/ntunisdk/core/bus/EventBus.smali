.class public Lcom/netease/ntunisdk/core/bus/EventBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/bus/EventBus$a;,
        Lcom/netease/ntunisdk/core/bus/EventBus$c;,
        Lcom/netease/ntunisdk/core/bus/EventBus$b;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/ntunisdk/core/bus/EventBus;

.field private static b:Lcom/netease/ntunisdk/core/bus/EventBus$b;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/netease/ntunisdk/core/bus/Observer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/netease/ntunisdk/core/bus/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/netease/ntunisdk/core/bus/EventBus$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->d:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/netease/ntunisdk/core/bus/EventBus$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/core/bus/EventBus$b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/ntunisdk/core/bus/EventBus;->b:Lcom/netease/ntunisdk/core/bus/EventBus$b;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/bus/EventBus;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/netease/ntunisdk/core/bus/EventBus;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/bus/a;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/core/bus/EventBus;->b:Lcom/netease/ntunisdk/core/bus/EventBus$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/netease/ntunisdk/core/bus/EventBus$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b()V
    .locals 1

    const-string v0, "EventBus printObservers"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    const-string v0, "EventBus printObservers ignore"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    return-void
.end method

.method private c()Lcom/netease/ntunisdk/core/bus/EventBus$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/core/bus/EventBus$a;-><init>(Lcom/netease/ntunisdk/core/bus/EventBus;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/core/bus/EventBus;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/bus/EventBus;->a:Lcom/netease/ntunisdk/core/bus/EventBus;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/ntunisdk/core/bus/EventBus;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/bus/EventBus;->a:Lcom/netease/ntunisdk/core/bus/EventBus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/bus/EventBus;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/bus/EventBus;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/bus/EventBus;->a:Lcom/netease/ntunisdk/core/bus/EventBus;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/core/bus/EventBus;->a:Lcom/netease/ntunisdk/core/bus/EventBus;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    if-eqz v0, :cond_1

    const-string v1, "EventBus HandOutExecutor destroy"

    invoke-static {v1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->b:Z

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/bus/EventBus$a;->interrupt()V

    iget-object v1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v2, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    :cond_0
    iput-object v2, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->e:Lcom/netease/ntunisdk/core/bus/EventBus$a;

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/bus/EventBus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EventBus clearObserverCache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "default"

    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/core/bus/EventBus;->c()Lcom/netease/ntunisdk/core/bus/EventBus$a;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/core/bus/a;

    invoke-direct {v1, p1, p2}, Lcom/netease/ntunisdk/core/bus/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->b:Z

    if-nez p1, :cond_3

    monitor-enter v0

    :try_start_0
    iget-boolean p1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->b:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->b:Z

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/bus/EventBus$a;->start()V

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EventBus HandOutExecutor offer: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    :try_start_1
    iget-object p1, v0, Lcom/netease/ntunisdk/core/bus/EventBus$a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public registerObserver(Lcom/netease/ntunisdk/core/bus/Observer;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/bus/EventBus;->registerObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;)V

    return-void
.end method

.method public registerObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/core/bus/EventBus;->registerObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;Z)V

    return-void
.end method

.method public registerObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventBus registerObserver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz p3, :cond_5

    new-instance p1, Ljava/lang/ref/SoftReference;

    iget-object p3, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/netease/ntunisdk/core/bus/EventBus$c;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/core/bus/EventBus$c;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/netease/ntunisdk/core/bus/EventBus;->b()V

    return-void
.end method

.method public registerOnceObserver(Lcom/netease/ntunisdk/core/bus/Observer;)V
    .locals 1

    const-string v0, "once"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/bus/EventBus;->registerObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;)V

    return-void
.end method

.method public unregisterObserver(Lcom/netease/ntunisdk/core/bus/Observer;)V
    .locals 1

    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/core/bus/EventBus;->unregisterObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;)V

    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventBus unregisterObserver: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;Lcom/netease/ntunisdk/core/bus/Observer;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventBus unregisterObserver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "default"

    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_3

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/core/bus/EventBus;->b()V

    return-void
.end method
