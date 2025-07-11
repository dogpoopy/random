.class public Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;
.super Ljava/lang/Object;
.source "WebRtcAudioOnlineConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebRtcAudioOnlineConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConfigVoipPlaybackSampleRate()I
    .locals 3

    .line 33
    :try_start_0
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetCurrentDeviceConfigs()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "voip_playback_samplerate"

    .line 35
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckPlaybackSampleRate error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioOnlineConfig"

    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static GetOnlineConfigBool(Ljava/lang/String;Z)Z
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetOnlineConfigBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static GetOnlineConfigBoolWithGrayscale(Ljava/lang/String;Z)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetOnlineConfigBoolWithGrayscale(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static GetOnlineConfigDouble(Ljava/lang/String;D)D
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetOnlineConfigDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static GetOnlineConfigInt(Ljava/lang/String;I)I
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetOnlineConfigInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static GetOnlineConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->nativeGetOnlineConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final native nativeGetCurrentDeviceConfigs()Ljava/lang/String;
.end method

.method private static final native nativeGetOnlineConfigBool(Ljava/lang/String;Z)Z
.end method

.method private static final native nativeGetOnlineConfigBoolWithGrayscale(Ljava/lang/String;Z)Z
.end method

.method private static final native nativeGetOnlineConfigDouble(Ljava/lang/String;D)D
.end method

.method private static final native nativeGetOnlineConfigInt(Ljava/lang/String;I)I
.end method

.method private static final native nativeGetOnlineConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
