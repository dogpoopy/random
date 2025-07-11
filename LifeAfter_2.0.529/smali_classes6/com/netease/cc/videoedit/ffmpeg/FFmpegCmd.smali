.class public Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;
.super Ljava/lang/Object;
.source "FFmpegCmd.java"


# static fields
.field private static final RESULT_ERROR:I = 0x0

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_FINISH:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FFmpegCmd"

.field private static loglevelExe:I

.field private static mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media-handle"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 37
    sput v0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->loglevelExe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 15
    sget v0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->loglevelExe:I

    return v0
.end method

.method static synthetic access$100([Ljava/lang/String;I)I
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->handle([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;)Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;
    .locals 0

    .line 15
    sput-object p0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    return-object p0
.end method

.method public static cancelTask(Z)V
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->cancelTaskJni(I)V

    return-void
.end method

.method private static native cancelTaskJni(I)V
.end method

.method public static execute(Ljava/util/List;Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;",
            "I)V"
        }
    .end annotation

    .line 81
    sput-object p1, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    .line 82
    new-instance v0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$2;-><init>(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;Ljava/util/List;I)V

    invoke-static {v0}, Lcom/netease/cc/videoedit/ffmpeg/handler/ThreadPoolUtil;->executeSingleThreadPool(Ljava/lang/Runnable;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static execute([Ljava/lang/String;Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;I)V
    .locals 0

    .line 45
    sput-object p1, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    .line 46
    sput p2, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->loglevelExe:I

    .line 47
    new-instance p2, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;

    invoke-direct {p2, p1, p0}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd$1;-><init>(Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/netease/cc/videoedit/ffmpeg/handler/ThreadPoolUtil;->executeSingleThreadPool(Ljava/lang/Runnable;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static executeProbeSynchronize([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "probe execute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFmpegCmd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p0}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->handleProbe([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static executeSync(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 68
    invoke-static {v0, p1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->handle([Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FFmpegCmd"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static native fastStart(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native handle([Ljava/lang/String;I)I
.end method

.method private static native handleProbe([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static onProgressCallback(III)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFmpegCmd"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le p0, p1, :cond_0

    if-lez p1, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    if-eqz v0, :cond_3

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    const/16 v0, 0x64

    mul-int/lit8 p0, p0, 0x64

    .line 149
    div-int/2addr p0, p1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 151
    :cond_1
    sget-object p2, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    invoke-interface {p2, p0, p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onProgress(II)V

    goto :goto_0

    .line 154
    :cond_2
    sget-object p2, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->mProgressListener:Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;

    invoke-interface {p2, p0, p1}, Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;->onProgress(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public moveMoovAhead(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1, p2}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->fastStart(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
