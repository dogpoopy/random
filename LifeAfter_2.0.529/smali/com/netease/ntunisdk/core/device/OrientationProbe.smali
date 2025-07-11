.class public final Lcom/netease/ntunisdk/core/device/OrientationProbe;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/ntunisdk/core/device/OrientationProbe;


# instance fields
.field private b:I

.field private c:Landroid/view/OrientationEventListener;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/core/device/OnOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/device/OrientationProbe;I)I
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->b:I

    return p1
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->e:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/device/OrientationProbe;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->e:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic a()Lcom/netease/ntunisdk/core/device/OrientationProbe;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/ntunisdk/core/device/OrientationProbe;)I
    .locals 0

    iget p0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->b:I

    return p0
.end method

.method static synthetic c(Lcom/netease/ntunisdk/core/device/OrientationProbe;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/core/device/OrientationProbe;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/ntunisdk/core/device/OrientationProbe;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/core/device/OrientationProbe;

    invoke-direct {v1}, Lcom/netease/ntunisdk/core/device/OrientationProbe;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a:Lcom/netease/ntunisdk/core/device/OrientationProbe;

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
    sget-object v0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->a:Lcom/netease/ntunisdk/core/device/OrientationProbe;

    return-object v0
.end method


# virtual methods
.method public final destroy(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c:Landroid/view/OrientationEventListener;

    iput-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->e:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final disable()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public final enable()V
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized setOrientationListener(Landroid/app/Activity;Lcom/netease/ntunisdk/core/device/OnOrientationListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->e:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c:Landroid/view/OrientationEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p2, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;

    invoke-direct {p2, p0, p1, p1}, Lcom/netease/ntunisdk/core/device/OrientationProbe$1;-><init>(Lcom/netease/ntunisdk/core/device/OrientationProbe;Landroid/content/Context;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/core/device/OrientationProbe;->c:Landroid/view/OrientationEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method
