.class public Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final INPUT_CHANNELS:I = 0x1

.field private static final OUTPUT_CHANNELS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JavaWebRtcAudioManager"


# instance fields
.field private final DEFAULT_PLAY_SAMPLERATE:I

.field private final DEFAULT_RECORD_SAMPLERATE:I

.field private final audioManager:Landroid/media/AudioManager;

.field private initialized:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeAudioManager:J

.field private playSampleRate:I

.field private recordSampleRate:I

.field private recording:Z


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 51
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->DEFAULT_PLAY_SAMPLERATE:I

    .line 52
    iput v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->DEFAULT_RECORD_SAMPLERATE:I

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 63
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recording:Z

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->enableEngineLogging(Z)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaWebRtcAudioManager"

    invoke-static {v2, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 69
    iput-wide p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    const-string p2, "audio"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 72
    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->logDeviceInfo(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;Ljava/lang/String;J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->nativeEngineLogging(Ljava/lang/String;J)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private dispose()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioManager"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    return-void
.end method

.method private getLowLatencyOutputFramesPerBuffer()I
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 192
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private static getMinInputFrameSize(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 242
    :goto_0
    invoke-static {v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    const/16 p1, 0x10

    const/4 v1, 0x2

    .line 243
    invoke-static {p0, p1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 3

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 p1, 0xc

    .line 232
    :goto_0
    invoke-static {p0, p1, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getNativeOutputSampleRate()I
    .locals 5

    .line 158
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v0

    const-string v1, "JavaWebRtcAudioManager"

    if-eqz v0, :cond_0

    const-string v0, "Running emulator, overriding sample rate to 8 kHz."

    .line 159
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f40

    return v0

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recording:Z

    const-string v2, ", old "

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->GetConfigVoipPlaybackSampleRate()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onlineConfig playSample rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->playSampleRate:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 170
    :cond_1
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->getSampleRateOnJellyBeanMR10OrHigher()I

    move-result v0

    goto :goto_0

    :cond_2
    const v0, 0xac44

    .line 175
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSample rate is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->playSampleRate:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getSampleRateOnJellyBeanMR10OrHigher()I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0xac44

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private init()Z
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioManager"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    return v1
.end method

.method private static isAcousticEchoCancelerSupported()Z
    .locals 1

    .line 208
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    return v0
.end method

.method private static isAutomaticGainControlSupported()Z
    .locals 1

    .line 212
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    return v0
.end method

.method private isDeviceBlacklistedForOpenSLESUsage()Z
    .locals 3

    .line 118
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->deviceIsBlacklistedForOpenSLESUsage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for OpenSL ES usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaWebRtcAudioManager"

    invoke-static {v2, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private isLowLatencyOutputSupported()Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isOpenSLESSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isNoiseSuppressorSupported()Z
    .locals 1

    .line 216
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    return v0
.end method

.method private static isOpenSLESSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native nativeCacheAudioParameters(IIIIZZZZIIJ)V
.end method

.method private native nativeEngineLogging(Ljava/lang/String;J)V
.end method

.method private storeAudioParameters(I)V
    .locals 13

    .line 127
    iput p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    .line 128
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->getNativeOutputSampleRate()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->playSampleRate:I

    .line 129
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isAcousticEchoCancelerSupported()Z

    move-result v5

    .line 130
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isAutomaticGainControlSupported()Z

    move-result v6

    .line 131
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isNoiseSuppressorSupported()Z

    move-result v7

    .line 132
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result p1

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->playSampleRate:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result p1

    :goto_0
    move v9, p1

    .line 136
    iget p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result v10

    .line 138
    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    iget v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->playSampleRate:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v11, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->nativeCacheAudioParameters(IIIIZZZZIIJ)V

    return-void
.end method


# virtual methods
.method public commonCoreJson(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 293
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cmd"

    .line 294
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "set-server-config"

    .line 295
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "turnoff_effect_devices"

    .line 296
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 299
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle common json error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JavaWebRtcAudioManager"

    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public enableEngineLogging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 277
    new-instance p1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager$1;

    invoke-direct {p1, p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager$1;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;)V

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/Logging;->installEngineLogListener(Lcom/netease/cc/org/webrtc/Logging$LogListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 286
    invoke-static {p1}, Lcom/netease/cc/org/webrtc/Logging;->installEngineLogListener(Lcom/netease/cc/org/webrtc/Logging$LogListener;)V

    :goto_0
    return-void
.end method

.method public enableLogging(Z)V
    .locals 0

    .line 272
    invoke-static {p1}, Lcom/netease/cc/org/webrtc/Logging;->setLoggingEnabled(Z)V

    return-void
.end method

.method public refreshPlaybackSampleRate()V
    .locals 1

    .line 114
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    invoke-direct {p0, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters(I)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audiomanager set mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JavaWebRtcAudioManager"

    invoke-static {v0, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecordSampleRate(I)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordSampleRate current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaWebRtcAudioManager"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recordSampleRate:I

    if-eq v0, p1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters(I)V

    :cond_0
    return-void
.end method

.method public setRecording(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioManager;->recording:Z

    return-void
.end method
