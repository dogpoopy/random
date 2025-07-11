.class public Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"

# interfaces
.implements Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager$MusicDataHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_CODE_DEVICE_OCCUPIED:I = -0xca

.field private static final AUDIO_RECORD_CODE_IN_CALL:I = -0xcd

.field private static final AUDIO_RECORD_CODE_PARAM_ERROR:I = -0xcc

.field private static final AUDIO_RECORD_CODE_PERMISSION_DENIED:I = -0x1

.field private static final AUDIO_RECORD_CODE_REPEAT_INIT:I = -0xcb

.field private static final AUDIO_RECORD_CODE_SUC:I = 0x0

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "JavaWebRtcAudioRecord"

.field private static volatile isFirstRecord:Z = true

.field private static volatile isInCall:Z

.field private static volatile microphoneMute:Z


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

.field private buildInEffectsEnabled:Z

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

.field private emptyBytes:[B

.field private musicBuffer:Ljava/nio/ByteBuffer;

.field private final nativeAudioRecord:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    .line 69
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 70
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    .line 152
    iput-wide p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 156
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->create()Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    .line 157
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->resetBuiltInEffects()Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isInCall:Z

    return v0
.end method

.method static synthetic access$500(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;IJ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeDataIsRecorded(IJ)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private enableBuiltInAEC(Z)Z
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInAEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in AEC is not supported on this platform"

    .line 170
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->setAEC(Z)Z

    move-result p1

    return p1
.end method

.method private enableBuiltInAGC(Z)Z
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInAGC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in AGC is not supported on this platform"

    .line 179
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 182
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->setAGC(Z)Z

    move-result p1

    return p1
.end method

.method private enableBuiltInNS(Z)Z
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInNS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in NS is not supported on this platform"

    .line 188
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->setNS(Z)Z

    move-result p1

    return p1
.end method

.method private initRecording(III)I
    .locals 11

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRecording(sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->resetBuiltInEffects()Z

    .line 200
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    const-string v3, "Init Recording Failed"

    if-nez v0, :cond_0

    const-string p1, "RECORD_AUDIO permission is missing"

    .line 203
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v3, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string p1, "InitRecording() called twice without StopRecording()"

    .line 209
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v3, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xcb

    return p1

    :cond_1
    const/4 v0, 0x2

    mul-int/lit8 p2, p2, 0x2

    .line 214
    div-int/lit8 v4, p1, 0x64

    mul-int p2, p2, v4

    .line 215
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteBuffer.capacity: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    .line 221
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, p2, v5, v6}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    const/16 p2, 0x10

    .line 226
    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p2

    if-eq p2, v2, :cond_5

    const/4 v5, -0x2

    if-ne p2, v5, :cond_2

    goto/16 :goto_0

    .line 237
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioRecord.getMinBufferSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 p2, p2, 0x2

    .line 242
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 244
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bufferSizeInBytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Record in audioSource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance p2, Landroid/media/AudioRecord;

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, p2

    move v6, p3

    move v7, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "record state error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v3, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    const/16 p1, -0xcd

    return p1

    .line 273
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioRecord session ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 274
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", audio format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 275
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", channels: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 276
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", sample rate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 277
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz p1, :cond_4

    .line 279
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->enable(I)V

    :cond_4
    return v4

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v3, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 232
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioRecord.getMinBufferSize failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {v3, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xcc

    return p1
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeCacheMusicBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJ)V
.end method

.method private native nativeGetMusicData(IJ)V
.end method

.method private native nativeSetMusicDataParams(IIIJ)V
.end method

.method private reportDeviceInfo(Z)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "JavaWebRtcAudioRecord"

    .line 411
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 413
    iget-object v0, v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v4, 0x17

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    const-string v7, ""

    .line 417
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v7, "MODE_CALL_SCREENING"

    goto :goto_0

    :pswitch_1
    const-string v7, "MODE_IN_COMMUNICATION"

    goto :goto_0

    :pswitch_2
    const-string v7, "MODE_IN_CALL"

    goto :goto_0

    :pswitch_3
    const-string v7, "MODE_RINGTONE"

    goto :goto_0

    :pswitch_4
    const-string v7, "MODE_NORMAL"

    goto :goto_0

    :pswitch_5
    const-string v7, "MODE_CURRENT"

    goto :goto_0

    :pswitch_6
    const-string v7, "MODE_INVALID"

    :goto_0
    const-string v8, "audiomanager_mode"

    .line 442
    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "music_volume"

    const/4 v8, 0x3

    .line 443
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "call_volume"

    .line 444
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "is_wired_headset"

    .line 445
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "is_bluetooth_sco"

    .line 446
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "is_bluetooth_headset_a2dp"

    const-string v9, "is_bluetooth_headset"

    const/4 v10, 0x2

    if-lt v7, v4, :cond_7

    .line 450
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 451
    array-length v7, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v10, v7, :cond_4

    aget-object v13, v0, v10

    .line 452
    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    const/4 v12, 0x1

    goto :goto_4

    .line 454
    :cond_2
    invoke-virtual {v13}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v13

    const/4 v14, 0x7

    if-ne v13, v14, :cond_3

    const/4 v11, 0x1

    :cond_3
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    if-eqz v11, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 458
    :goto_5
    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v12, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 459
    :goto_6
    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 462
    :cond_7
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 464
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v7

    if-ne v7, v10, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 465
    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v10, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 468
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bluetooth adapter error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_a
    :goto_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_c

    .line 474
    iget-object v0, v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v4, "input_device_name"

    .line 476
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "input_device_type"

    .line 477
    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    const-string v0, "output_device"

    .line 479
    sget-object v4, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->outputDeviceName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "output_device_type"

    .line 480
    sget v4, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->outputDeviceType:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_c
    const-string v0, "is_other_use_mic"

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 483
    :goto_a
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "has_record_permission"

    .line 484
    iget-object v4, v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v7}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_aec_supported"

    .line 485
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_agc_supported"

    .line 486
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_ns_supported"

    .line 487
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_e

    :cond_11
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    iget-object v0, v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v4, "target_sdk_version"

    .line 490
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_12
    const-string v0, "device_sdk_version"

    .line 492
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "Android Device Info"

    .line 494
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->Report(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report json error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetBuiltInEffects()Z
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->enableBuiltInAEC(Z)Z

    move-result v0

    .line 162
    iget-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    invoke-direct {p0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->enableBuiltInAGC(Z)Z

    move-result v1

    .line 163
    iget-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    invoke-direct {p0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->enableBuiltInNS(Z)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setMicrophoneMute(Z)V
    .locals 2

    const-string v0, "JavaWebRtcAudioRecord"

    const-string v1, "setMicrophoneMute API will be deprecated soon."

    .line 355
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sput-boolean p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return-void
.end method

.method public static setPhoneState(Z)V
    .locals 0

    .line 360
    sput-boolean p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isInCall:Z

    return-void
.end method

.method private startRecording()I
    .locals 7

    const-string v0, "Start Recording Failed"

    const-string v1, "JavaWebRtcAudioRecord"

    const-string v2, "startRecording"

    .line 285
    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 287
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 288
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/16 v5, -0xca

    .line 290
    :try_start_0
    iget-object v6, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    if-nez v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 298
    :cond_3
    sget-boolean v2, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isFirstRecord:Z

    if-eqz v2, :cond_4

    .line 299
    sput-boolean v4, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isFirstRecord:Z

    .line 300
    invoke-direct {p0, v3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->reportDeviceInfo(Z)V

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v6, :cond_5

    const-string v2, "AudioRecord.startRecording failed"

    .line 305
    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {v0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 309
    :cond_5
    sget-boolean v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isFirstRecord:Z

    if-eqz v0, :cond_6

    .line 310
    sput-boolean v4, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->isFirstRecord:Z

    .line 311
    invoke-direct {p0, v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->reportDeviceInfo(Z)V

    .line 313
    :cond_6
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const-string v1, "AudioRecordJavaThread"

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 314
    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->start()V

    return v4

    :catch_0
    move-exception v2

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord.startRecording exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {v0, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private stopRecording()Z
    .locals 3

    const-string v0, "JavaWebRtcAudioRecord"

    const-string v1, "stopRecording"

    .line 320
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 322
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->joinThread()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 324
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->release()V

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 328
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return v1
.end method


# virtual methods
.method public enableBuildInEffects(Z)V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 404
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->buildInEffectsEnabled:Z

    .line 405
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->resetBuiltInEffects()Z

    :cond_0
    return-void
.end method

.method public enableMusic(Z)V
    .locals 7

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMusic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicVolume()F

    move-result p1

    .line 367
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getSampleRate()I

    move-result v2

    .line 368
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getChannels()I

    move-result v3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int v4, p1

    .line 369
    iget-wide v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeSetMusicDataParams(IIIJ)V

    .line 371
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->registerMusicDataHandler(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager$MusicDataHandler;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->unregisterMusicDataHandler(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager$MusicDataHandler;)V

    :goto_0
    return-void
.end method

.method public onMusicData([BI)V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->musicBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt v0, p2, :cond_1

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    .line 386
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->musicBuffer:Ljava/nio/ByteBuffer;

    .line 387
    iget-wide v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeCacheMusicBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->musicBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 391
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->musicBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, p2, v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeGetMusicData(IJ)V

    return-void
.end method

.method public onMusicStart(II)V
    .locals 7

    .line 379
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v4, v0

    .line 380
    iget-wide v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeSetMusicDataParams(IIIJ)V

    return-void
.end method

.method public onVolumeChange(F)V
    .locals 7

    .line 397
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getSampleRate()I

    move-result v2

    .line 398
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getMusicManager(Landroid/content/Context;)Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicManager;->getChannels()I

    move-result v3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int v4, p1

    .line 399
    iget-wide v5, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRecord;->nativeSetMusicDataParams(IIIJ)V

    return-void
.end method
