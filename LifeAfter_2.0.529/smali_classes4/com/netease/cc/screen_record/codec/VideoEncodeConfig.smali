.class public Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;
.super Ljava/lang/Object;
.source "VideoEncodeConfig.java"


# instance fields
.field final bitrate:I

.field final codecName:Ljava/lang/String;

.field final codecProfileLevel:Landroid/media/MediaCodecInfo$CodecProfileLevel;

.field framerate:I

.field final height:I

.field final iframeInterval:F

.field final mimeType:Ljava/lang/String;

.field final width:I


# direct methods
.method public constructor <init>(IIIIFLjava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->width:I

    .line 45
    iput p2, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->height:I

    .line 46
    iput p3, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->bitrate:I

    .line 47
    iput p4, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->framerate:I

    .line 48
    iput p5, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->iframeInterval:F

    .line 49
    iput-object p6, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecName:Ljava/lang/String;

    .line 50
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p7, Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->mimeType:Ljava/lang/String;

    .line 51
    iput-object p8, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecProfileLevel:Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->bitrate:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->framerate:I

    return v0
.end method

.method public getIFrameInterval()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->iframeInterval:F

    return v0
.end method

.method toFormat()Landroid/media/MediaFormat;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->mimeType:Ljava/lang/String;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->width:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->height:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 57
    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->bitrate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 58
    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->framerate:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "i-frame-interval"

    const/16 v3, 0x19

    if-lt v1, v3, :cond_0

    .line 60
    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->iframeInterval:F

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 62
    :cond_0
    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->iframeInterval:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecProfileLevel:Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecProfileLevel:Landroid/media/MediaCodecInfo$CodecProfileLevel;

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoEncodeConfig{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", framerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iframeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->iframeInterval:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", codecName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", codecProfileLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;->codecProfileLevel:Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/Utils;->avcProfileLevelToString(Landroid/media/MediaCodecInfo$CodecProfileLevel;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
