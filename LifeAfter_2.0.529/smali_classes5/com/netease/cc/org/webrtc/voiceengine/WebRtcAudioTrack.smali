.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrack"

.field private static volatile isInCall:Z = false

.field private static volatile streamType:I = 0x3


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final nativeAudioTrack:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 47
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput-wide p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    const-string p2, "audio"

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;IJ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->nativeGetPlayoutData(IJ)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->isInCall:Z

    return v0
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private getStreamMaxVolume()I
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamMaxVolume"

    .line 279
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 281
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private getStreamVolume()I
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamVolume"

    .line 309
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 311
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private initPlayout(III)V
    .locals 10

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPlayout(sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), streamTypeNeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, p2, 0x2

    .line 205
    div-int/lit8 v2, p1, 0x64

    mul-int v0, v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteBuffer.capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    invoke-direct {p0, v0, v2, v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 p2, 0xc

    const/16 v5, 0xc

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    const/4 v5, 0x4

    .line 218
    :goto_0
    invoke-static {p1, v5, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioTrack.getMinBufferSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    const/4 v9, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 228
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, v7, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 229
    sput p3, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initPlayout use streamtype: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :try_start_0
    new-instance p2, Landroid/media/AudioTrack;

    sget v3, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, p2

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-ne p1, v9, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 246
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    if-ne p1, v9, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 247
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getStreamType()I

    move-result p1

    sget p2, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    if-ne p1, p2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    return-void

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isVolumeFixed()Z
    .locals 1

    .line 300
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    return v0
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeGetPlayoutData(IJ)V
.end method

.method public static setPhoneState(Z)V
    .locals 0

    .line 272
    sput-boolean p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->isInCall:Z

    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 290
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "The device implements a fixed volume policy."

    .line 291
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->streamType:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method

.method private startPlayout()Z
    .locals 3

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "startPlayout"

    .line 251
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 253
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 254
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const-string v1, "AudioTrackJavaThread"

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 255
    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->start()V

    return v2
.end method

.method private stopPlayout()Z
    .locals 3

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "stopPlayout"

    .line 260
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 262
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->joinThread()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 264
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 266
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_1
    return v1
.end method
