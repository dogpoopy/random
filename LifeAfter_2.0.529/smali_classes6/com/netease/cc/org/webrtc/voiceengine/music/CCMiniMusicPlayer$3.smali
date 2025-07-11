.class Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$3;
.super Ljava/lang/Object;
.source "CCMiniMusicPlayer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 749
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer$3;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/music/CCMiniMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
