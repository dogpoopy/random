.class public Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;
.super Ljava/lang/Object;
.source "MediaBean.java"


# instance fields
.field private audioBean:Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

.field private bitRate:I

.field private duration:J

.field private formatName:Ljava/lang/String;

.field private size:J

.field private streamNum:I

.field private videoBean:Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioBean()Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->audioBean:Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    return-object v0
.end method

.method public getBitRate()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->bitRate:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->duration:J

    return-wide v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->size:J

    return-wide v0
.end method

.method public getStreamNum()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->streamNum:I

    return v0
.end method

.method public getVideoBean()Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->videoBean:Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    return-object v0
.end method

.method public setAudioBean(Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->audioBean:Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->bitRate:I

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->duration:J

    return-void
.end method

.method public setFormatName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->formatName:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->size:J

    return-void
.end method

.method public setStreamNum(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->streamNum:I

    return-void
.end method

.method public setVideoBean(Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/MediaBean;->videoBean:Lcom/netease/cc/videoedit/ffmpeg/handler/VideoBean;

    return-void
.end method
