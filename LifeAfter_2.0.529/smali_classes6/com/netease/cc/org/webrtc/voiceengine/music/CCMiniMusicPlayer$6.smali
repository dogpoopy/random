.class Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;
.super Landroid/telephony/PhoneStateListener;
.source "CCMiniMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initPhoneStateListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;


# direct methods
.method constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 887
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 889
    iget-object p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$902(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z

    .line 890
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$6;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$1000(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$1100(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;F)V

    return-void
.end method
