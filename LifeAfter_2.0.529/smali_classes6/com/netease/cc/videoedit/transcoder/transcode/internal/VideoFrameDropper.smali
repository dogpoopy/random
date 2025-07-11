.class public abstract Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
.super Ljava/lang/Object;
.source "VideoFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper2;,
        Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/netease/cc/videoedit/transcoder/internal/Logger;
    .locals 1

    .line 10
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-object v0
.end method

.method public static newDropper(II)Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper;
    .locals 2

    .line 21
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$Dropper1;-><init>(IILcom/netease/cc/videoedit/transcoder/transcode/internal/VideoFrameDropper$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract shouldRenderFrame(J)Z
.end method
