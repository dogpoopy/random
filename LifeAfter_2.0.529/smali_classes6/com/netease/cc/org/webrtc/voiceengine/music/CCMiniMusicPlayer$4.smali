.class Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;
.super Landroid/content/BroadcastReceiver;
.source "CCMiniMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->initBluetooth(Landroid/content/Context;)V
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

    .line 774
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 777
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 779
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x63

    if-eqz v0, :cond_3

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 780
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 781
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_6

    .line 784
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    const/high16 p2, 0x400000

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-static {p1, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$602(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z

    goto :goto_0

    .line 793
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-static {p1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$602(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 798
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 799
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_5

    const/16 p2, 0xc

    if-eq p1, p2, :cond_4

    goto :goto_0

    .line 809
    :cond_4
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-static {p1, v1}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$602(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z

    goto :goto_0

    .line 804
    :cond_5
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$4;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-static {p1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;->access$602(Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;Z)Z

    :cond_6
    :goto_0
    return-void
.end method
