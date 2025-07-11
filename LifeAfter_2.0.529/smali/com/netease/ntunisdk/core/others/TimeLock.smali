.class public Lcom/netease/ntunisdk/core/others/TimeLock;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/ntunisdk/core/others/TimeLock;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static declared-synchronized a()Lcom/netease/ntunisdk/core/others/TimeLock;
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/core/others/TimeLock;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/others/TimeLock;->a:Lcom/netease/ntunisdk/core/others/TimeLock;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/others/TimeLock;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/others/TimeLock;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/others/TimeLock;->a:Lcom/netease/ntunisdk/core/others/TimeLock;

    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/core/others/TimeLock;->a:Lcom/netease/ntunisdk/core/others/TimeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static clear()V
    .locals 1

    invoke-static {}, Lcom/netease/ntunisdk/core/others/TimeLock;->a()Lcom/netease/ntunisdk/core/others/TimeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/others/TimeLock;->iClear()V

    return-void
.end method

.method public static lock()Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/core/others/TimeLock;->a()Lcom/netease/ntunisdk/core/others/TimeLock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/core/others/TimeLock;->lock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized iClear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/TimeLock;->b:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
