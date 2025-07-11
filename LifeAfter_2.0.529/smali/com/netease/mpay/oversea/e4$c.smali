.class Lcom/netease/mpay/oversea/e4$c;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/e4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ExecutorService;

.field final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/netease/mpay/oversea/e4$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/oversea/e4$d;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/e4$c;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/e4$c;->b:Ljava/util/ArrayDeque;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$c;->c:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/e4$c;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e4$c;)Lcom/netease/mpay/oversea/e4$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/e4$c;->d:Lcom/netease/mpay/oversea/e4$d;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e4$c;Lcom/netease/mpay/oversea/e4$d;)Lcom/netease/mpay/oversea/e4$d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$c;->d:Lcom/netease/mpay/oversea/e4$d;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/netease/mpay/oversea/e4$b;)Z
    .locals 5

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e4$c;->b:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/netease/mpay/oversea/e4$d;

    iget-object v2, p0, Lcom/netease/mpay/oversea/e4$c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/mpay/oversea/e4$c;->e:Z

    new-instance v4, Lcom/netease/mpay/oversea/e4$c$a;

    invoke-direct {v4, p0, p2}, Lcom/netease/mpay/oversea/e4$c$a;-><init>(Lcom/netease/mpay/oversea/e4$c;Lcom/netease/mpay/oversea/e4$b;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/netease/mpay/oversea/e4$d;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/e4$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/e4$c;->d:Lcom/netease/mpay/oversea/e4$d;

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/e4$c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/e4$d;

    iput-object p1, p0, Lcom/netease/mpay/oversea/e4$c;->d:Lcom/netease/mpay/oversea/e4$d;

    if-eqz p1, :cond_1

    .line 19
    iget-object p2, p0, Lcom/netease/mpay/oversea/e4$c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
