.class public Lcom/netease/cc/videoedit/transcoder/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;,
        Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field public static final SUCCESS_NOT_NEEDED:I = 0x1

.field public static final SUCCESS_TRANSCODED:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile sTranscoder:Lcom/netease/cc/videoedit/transcoder/Transcoder;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/Transcoder;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 74
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/netease/cc/videoedit/transcoder/Transcoder$Factory;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V

    const-wide/16 v4, 0x3c

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/netease/cc/videoedit/transcoder/internal/Logger;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/cc/videoedit/transcoder/Transcoder;
    .locals 2

    .line 83
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->sTranscoder:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    if-nez v0, :cond_1

    .line 84
    const-class v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/Transcoder;->sTranscoder:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/Transcoder;

    invoke-direct {v1}, Lcom/netease/cc/videoedit/transcoder/Transcoder;-><init>()V

    sput-object v1, Lcom/netease/cc/videoedit/transcoder/Transcoder;->sTranscoder:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->sTranscoder:Lcom/netease/cc/videoedit/transcoder/Transcoder;

    return-object v0
.end method

.method public static into(Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 127
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    invoke-direct {v0, p0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;-><init>(Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)V

    return-object v0
.end method

.method public static into(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 102
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    invoke-direct {v0, p0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public transcode(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;

    iget-object v1, p1, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->listenerHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cc/videoedit/transcoder/Transcoder$ListenerWrapper;-><init>(Landroid/os/Handler;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;Lcom/netease/cc/videoedit/transcoder/Transcoder$1;)V

    .line 140
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/Transcoder;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "[Transcode]---------------------- transcode ----------------------"

    invoke-virtual {v1, v2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/Transcoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/netease/cc/videoedit/transcoder/Transcoder$1;-><init>(Lcom/netease/cc/videoedit/transcoder/Transcoder;Lcom/netease/cc/videoedit/transcoder/TranscoderListener;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
