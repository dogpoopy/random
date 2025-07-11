.class public abstract Lcom/netease/ntunisdk/ngplugin/core/PluginTask;
.super Ljava/lang/Object;
.source "PluginTask.java"


# annotations
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
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "PluginTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->CPU_COUNT:I

    .line 23
    sget v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->CORE_POOL_SIZE:I

    .line 24
    sget v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->MAXIMUM_POOL_SIZE:I

    .line 26
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/ngplugin/core/PluginTask$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->CORE_POOL_SIZE:I

    sget v5, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->MAXIMUM_POOL_SIZE:I

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v10, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 41
    sput-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
