.class synthetic Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;
.super Ljava/lang/Object;
.source "CCMiniMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 527
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->values()[Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;->$SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I

    :try_start_0
    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PLAY:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;->$SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->STOP:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;->$SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->PAUSE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$7;->$SwitchMap$com$netease$cc$org$webrtc$voiceengine$music$CCMiniMusicPlayer$STATE:[I

    sget-object v1, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->RELEASE:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;

    invoke-virtual {v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
