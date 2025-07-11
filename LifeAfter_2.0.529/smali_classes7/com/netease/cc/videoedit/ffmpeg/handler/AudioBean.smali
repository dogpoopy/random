.class public Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;
.super Ljava/lang/Object;
.source "AudioBean.java"


# instance fields
.field private audioCodec:Ljava/lang/String;

.field private channelLayout:Ljava/lang/String;

.field private channels:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioCodec()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->audioCodec:Ljava/lang/String;

    const-string v1, "[0][0][0][0]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->audioCodec:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelLayout()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->channelLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->channels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->sampleRate:I

    return v0
.end method

.method public setAudioCodec(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->audioCodec:Ljava/lang/String;

    return-void
.end method

.method public setChannelLayout(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->channelLayout:Ljava/lang/String;

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->channels:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/netease/cc/videoedit/ffmpeg/handler/AudioBean;->sampleRate:I

    return-void
.end method
