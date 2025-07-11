.class public abstract Lcom/netease/mpay/httpdns/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/httpdns/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/ThreadFactory;

.field public static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/netease/mpay/httpdns/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/httpdns/b$b;-><init>(Lcom/netease/mpay/httpdns/b$a;)V

    sput-object v0, Lcom/netease/mpay/httpdns/b;->b:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/netease/mpay/httpdns/b;->c:I

    sget v0, Lcom/netease/mpay/httpdns/b;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/netease/mpay/httpdns/b;->d:I

    sget v0, Lcom/netease/mpay/httpdns/b;->c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/netease/mpay/httpdns/b;->e:I

    new-instance v0, Lcom/netease/mpay/httpdns/b$a;

    invoke-direct {v0}, Lcom/netease/mpay/httpdns/b$a;-><init>()V

    sput-object v0, Lcom/netease/mpay/httpdns/b;->f:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/mpay/httpdns/b;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/netease/mpay/httpdns/b;->d:I

    sget v5, Lcom/netease/mpay/httpdns/b;->e:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/netease/mpay/httpdns/b;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v10, Lcom/netease/mpay/httpdns/b;->f:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/netease/mpay/httpdns/b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
