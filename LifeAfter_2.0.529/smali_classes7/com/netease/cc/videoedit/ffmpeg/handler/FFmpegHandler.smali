.class public Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;
.super Ljava/lang/Object;
.source "FFmpegHandler.java"


# static fields
.field public static final MSG_BEGIN:I = 0x2334

.field public static final MSG_CONTINUE:I = 0x7dc

.field public static final MSG_FINISH:I = 0x458

.field public static final MSG_PROGRESS:I = 0x3ea

.field public static final MSG_TOAST:I = 0x11d2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isContinue:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->isContinue:Z

    .line 34
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->isContinue:Z

    return p0
.end method


# virtual methods
.method public cancelExecute(Z)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->cancelTask(Z)V

    return-void
.end method

.method public executeFFmpegCmd([Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;

    invoke-direct {v0, p0}, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler$1;-><init>(Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;)V

    invoke-static {p1, v0, p2}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->execute([Ljava/lang/String;Lcom/netease/cc/videoedit/ffmpeg/handler/OnHandleListener;I)V

    return-void
.end method

.method public executeFFmpegCmds(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, -0x65

    return p1

    .line 92
    :cond_0
    invoke-static {p1, p2}, Lcom/netease/cc/videoedit/ffmpeg/FFmpegCmd;->executeSync(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public isContinue(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/FFmpegHandler;->isContinue:Z

    return-void
.end method
