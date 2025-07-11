.class public interface abstract Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$AudioListener;
.super Ljava/lang/Object;
.source "CCMiniMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioListener"
.end annotation


# static fields
.field public static final ERROR_DECODER:I = 0x0

.field public static final ERROR_FILE_NOT_EXIST:I = 0x1

.field public static final ERROR_FORMAT:I = 0x2

.field public static final ERROR_INIT_AUDIO_TRACK:I = 0x3

.field public static final ERROR_STATE:I = 0x4


# virtual methods
.method public abstract onAudioData([BI)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onMusicStart(II)V
.end method

.method public abstract onPlayEnd(Ljava/lang/String;)V
.end method

.method public abstract onStateChange(I)V
.end method

.method public abstract onVolumeChange(F)V
.end method
