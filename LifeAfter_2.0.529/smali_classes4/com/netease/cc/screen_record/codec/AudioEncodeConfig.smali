.class public Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;
.super Ljava/lang/Object;
.source "AudioEncodeConfig.java"


# instance fields
.field final bUseGameVoice:Z

.field final bitRate:I

.field final channelCount:I

.field final codecName:Ljava/lang/String;

.field final mimeType:Ljava/lang/String;

.field final profile:I

.field final sampleRate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->codecName:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->mimeType:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->bitRate:I

    .line 38
    iput p4, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->sampleRate:I

    .line 39
    iput p5, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->channelCount:I

    .line 40
    iput p6, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->profile:I

    .line 41
    iput-boolean p7, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->bUseGameVoice:Z

    return-void
.end method


# virtual methods
.method toFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->mimeType:Ljava/lang/String;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->sampleRate:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->channelCount:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->profile:I

    const-string v2, "aac-profile"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->bitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioEncodeConfig{codecName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->bitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
