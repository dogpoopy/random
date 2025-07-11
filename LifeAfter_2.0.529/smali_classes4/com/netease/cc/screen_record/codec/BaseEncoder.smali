.class abstract Lcom/netease/cc/screen_record/codec/BaseEncoder;
.super Ljava/lang/Object;
.source "BaseEncoder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/Encoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

.field protected mCodecCallback:Landroid/media/MediaCodec$Callback;

.field private mCodecName:Ljava/lang/String;

.field protected mEncoder:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 192
    new-instance v0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;

    invoke-direct {v0, p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;-><init>(Lcom/netease/cc/screen_record/codec/BaseEncoder;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 192
    new-instance v0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;

    invoke-direct {v0, p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;-><init>(Lcom/netease/cc/screen_record/codec/BaseEncoder;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    .line 47
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecName:Ljava/lang/String;

    return-void
.end method

.method private createEncoder(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecName:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create MediaCodec by name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' failure!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract createMediaFormat()Landroid/media/MediaFormat;
.end method

.method protected final getEncoder()Landroid/media/MediaCodec;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    const-string v1, "doesn\'t prepare()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected onEncoderConfigured(Landroid/media/MediaCodec;)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->createMediaFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create media format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encoder"

    invoke-static {v2, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime"

    .line 78
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {p0, v1}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->createEncoder(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCodecCallback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->onEncoderConfigured(Landroid/media/MediaCodec;)V

    .line 86
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    return-void

    :catch_0
    move-exception v1

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configure codec failure!\n  with format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaCodec$CodecException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    throw v1

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prepared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should run in a HandlerThread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_0
    return-void
.end method

.method public final releaseOutputBuffer(I)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method setCallback(Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mEncoder is not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/netease/cc/screen_record/codec/Encoder$Callback;)V
    .locals 1

    .line 52
    instance-of v0, p1, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/BaseEncoder;->setCallback(Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Encoder"

    const-string v2, "catch IllegalStateException when stop encoder"

    .line 169
    invoke-static {v1, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
