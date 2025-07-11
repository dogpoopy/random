.class public Lcom/netease/mcount/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/mcount/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private volatile c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/a;
    .locals 3

    invoke-static {p0, p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/netease/mcount/a/a;

    invoke-direct {v2, p0, p1}, Lcom/netease/mcount/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mcount/a/a;->e:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/mcount/a/a;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/content/Context;J)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    const-string v2, "setAlarmTask is called! "

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Lcom/netease/mcount/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/netease/mcount/a/a$2;

    invoke-direct {v4, p0, p1}, Lcom/netease/mcount/a/a$2;-><init>(Lcom/netease/mcount/a/a;Landroid/content/Context;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, p2

    move-wide v7, p2

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/netease/mcount/a/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mcount/a/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mcount/a/b;->c:Z

    iget-object v1, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v1

    iget-wide v1, v1, Lcom/netease/mcount/a/b;->b:J

    iget-object v3, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/netease/mcount/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/a/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {p1, v3, v4, v0}, Lcom/netease/mcount/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mcount/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/a;

    move-result-object v0

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mcount/a/a;->a(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    const-string v2, "startAlarmTask is called! "

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v0

    iget-wide v5, v0, Lcom/netease/mcount/a/b;->b:J

    sget-object v1, Lcom/netease/mcount/a/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/netease/mcount/a/a$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/mcount/a/a$1;-><init>(Lcom/netease/mcount/a/a;Landroid/content/Context;)V

    const-wide/16 v3, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/netease/mcount/a/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mcount/a/a;->b:Ljava/lang/String;

    const-string v1, "cancelAlarmTask is called! "

    invoke-static {p1, v0, v1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/mcount/a/a;->c:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
