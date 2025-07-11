.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;
.super Ljava/lang/Object;
.source "WebRtcAudioEffects.java"


# static fields
.field private static final AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

.field private static final AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioEffects"

.field private static canUseAcousticEchoCanceler:Ljava/lang/Boolean;

.field private static canUseAutomaticGainControl:Ljava/lang/Boolean;

.field private static canUseNoiseSuppressor:Ljava/lang/Boolean;


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private agc:Landroid/media/audiofx/AutomaticGainControl;

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private shouldEnableAec:Z

.field private shouldEnableAgc:Z

.field private shouldEnableNs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    .line 38
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    const-string v0, "aa8130e0-66fc-11e0-bad0-0002a5d5c51b"

    .line 40
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    .line 42
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 48
    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    .line 49
    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 54
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 55
    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 63
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    .line 64
    iput-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 404
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static canUseAcousticEchoCanceler()Z
    .locals 2

    .line 171
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/Boolean;

    .line 173
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedAcousticEchoCanceler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerBlacklisted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerExcludedByUUID()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUseAcousticEchoCanceler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canUseAutomaticGainControl()Z
    .locals 2

    .line 186
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/Boolean;

    .line 188
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedAutomaticGainControl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlBlacklisted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlExcludedByUUID()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUseAutomaticGainControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canUseNoiseSuppressor()Z
    .locals 2

    .line 201
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/Boolean;

    .line 203
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->useWebRtcBasedNoiseSuppressor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorBlacklisted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorExcludedByUUID()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUseNoiseSuppressor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static create()Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;
    .locals 2

    .line 214
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WebRtcAudioEffects"

    const-string v1, "API level 16 or higher is required!"

    .line 215
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-direct {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;-><init>()V

    return-object v0
.end method

.method private effectTypeIsVoIP(Ljava/util/UUID;)Z
    .locals 2

    .line 390
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR2OrHigher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 393
    :cond_0
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    .line 395
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 397
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 398
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isAcousticEchoCancelerBlacklisted()Z
    .locals 3

    .line 90
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForAecUsage()Ljava/util/List;

    move-result-object v0

    .line 91
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for HW AEC usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioEffects"

    invoke-static {v2, v1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static isAcousticEchoCancelerExcludedByUUID()Z
    .locals 7

    .line 124
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 128
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    .line 129
    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .locals 1

    .line 69
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutomaticGainControlBlacklisted()Z
    .locals 3

    .line 101
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForAgcUsage()Ljava/util/List;

    move-result-object v0

    .line 102
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for HW AGC usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioEffects"

    invoke-static {v2, v1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static isAutomaticGainControlExcludedByUUID()Z
    .locals 7

    .line 140
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 144
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    .line 145
    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isAutomaticGainControlSupported()Z
    .locals 1

    .line 76
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNoiseSuppressorBlacklisted()Z
    .locals 3

    .line 112
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForNsUsage()Ljava/util/List;

    move-result-object v0

    .line 113
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for HW NS usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioEffects"

    invoke-static {v2, v1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static isNoiseSuppressorExcludedByUUID()Z
    .locals 7

    .line 156
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 160
    iget-object v5, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v5, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    .line 161
    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isNoiseSuppressorSupported()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public enable(I)V
    .locals 11

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable(audioSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 285
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 286
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 288
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 295
    :cond_3
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 296
    iget-object v7, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-direct {p0, v7}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->effectTypeIsVoIP(Ljava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    .line 297
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", implementor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", UUID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 304
    :cond_5
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v0

    const-string v4, ", is now: "

    const-string v5, ", enable: "

    const-string v6, "enabled"

    const-string v7, "disabled"

    if-eqz v0, :cond_b

    .line 307
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_a

    .line 309
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    .line 310
    iget-boolean v8, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    .line 311
    :goto_5
    iget-object v9, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v9, v8}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "Failed to set the AcousticEchoCanceler state"

    .line 312
    invoke-static {v1, v9}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AcousticEchoCanceler: was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    move-object v0, v6

    goto :goto_6

    :cond_8
    move-object v0, v7

    .line 315
    :goto_6
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v6

    goto :goto_7

    :cond_9
    move-object v0, v7

    :goto_7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    const-string v0, "Failed to create the AcousticEchoCanceler instance"

    .line 319
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_b
    :goto_8
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isAutomaticGainControlSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 326
    invoke-static {p1}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_10

    .line 328
    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v0

    .line 329
    iget-boolean v8, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    .line 330
    :goto_9
    iget-object v9, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v9, v8}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "Failed to set the AutomaticGainControl state"

    .line 331
    invoke-static {v1, v9}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutomaticGainControl: was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_e

    move-object v0, v6

    goto :goto_a

    :cond_e
    move-object v0, v7

    .line 334
    :goto_a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v6

    goto :goto_b

    :cond_f
    move-object v0, v7

    :goto_b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    const-string v0, "Failed to create the AutomaticGainControl instance"

    .line 338
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_11
    :goto_c
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 345
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz p1, :cond_16

    .line 347
    invoke-virtual {p1}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p1

    .line 348
    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    .line 349
    :goto_d
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "Failed to set the NoiseSuppressor state"

    .line 350
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoiseSuppressor: was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    move-object p1, v6

    goto :goto_e

    :cond_14
    move-object p1, v7

    .line 353
    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {p1}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_f

    :cond_15
    move-object v6, v7

    :goto_f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_16
    const-string p1, "Failed to create the NoiseSuppressor instance"

    .line 357
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_10
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "WebRtcAudioEffects"

    const-string v1, "release"

    .line 366
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 369
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 373
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 377
    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    :cond_2
    return-void
.end method

.method public setAEC(Z)Z
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AEC is not supported"

    .line 232
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    return v2

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform AEC state can\'t be modified while recording"

    .line 237
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 240
    :cond_1
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setAGC(Z)Z
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAGC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseAutomaticGainControl()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform AGC is not supported"

    .line 251
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    return v2

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform AGC state can\'t be modified while recording"

    .line 256
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 259
    :cond_1
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableAgc:Z

    const/4 p1, 0x1

    return p1
.end method

.method public setNS(Z)Z
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioEffects"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Platform NS is not supported"

    .line 270
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-boolean v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    return v2

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eq p1, v0, :cond_1

    const-string p1, "Platform NS state can\'t be modified while recording"

    .line 275
    invoke-static {v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 278
    :cond_1
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    const/4 p1, 0x1

    return p1
.end method
