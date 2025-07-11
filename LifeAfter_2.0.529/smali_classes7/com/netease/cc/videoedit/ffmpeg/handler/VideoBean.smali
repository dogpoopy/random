.class public Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;
.super Ljava/lang/Object;
.source "VideoBean.java"


# instance fields
.field private avgFrameRate:I

.field private displayAspectRatio:Ljava/lang/String;

.field private frameRate:I

.field private height:I

.field private level:I

.field private pixelFormat:Ljava/lang/String;

.field private profile:Ljava/lang/String;

.field private videoCodec:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvgFrameRate()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->avgFrameRate:I

    return v0
.end method

.method public getDisplayAspectRatio()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->displayAspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->height:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->level:I

    return v0
.end method

.method public getPixelFormat()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->pixelFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->videoCodec:Ljava/lang/String;

    const-string v1, "[0][0][0][0]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->videoCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->width:I

    return v0
.end method

.method public setAvgFrameRate(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->avgFrameRate:I

    return-void
.end method

.method public setDisplayAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->displayAspectRatio:Ljava/lang/String;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->frameRate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->height:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->level:I

    return-void
.end method

.method public setPixelFormat(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->pixelFormat:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->profile:Ljava/lang/String;

    return-void
.end method

.method public setVideoCodec(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->videoCodec:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;->width:I

    return-void
.end method
