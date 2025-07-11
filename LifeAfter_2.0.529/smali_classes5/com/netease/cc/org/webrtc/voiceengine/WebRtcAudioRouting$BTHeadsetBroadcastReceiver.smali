.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebRtcAudioRouting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;


# direct methods
.method private constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x320

    const/4 v3, 0x2

    const/16 v4, -0x63

    const-string v5, "AudioRoute"

    if-eqz v0, :cond_3

    .line 464
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 467
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "EVENT_BLUETOOTH_PLUGIN, connected "

    .line 477
    invoke-static {v5, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    const/4 p2, 0x1

    invoke-static {p1, v3, p2, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$500(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;III)V

    goto :goto_0

    :cond_2
    const-string p1, "EVENT_BLUETOOTH_PLUGIN, disconnected"

    .line 482
    invoke-static {v5, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {p1, v3, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$500(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;III)V

    goto :goto_0

    :cond_3
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 488
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    .line 490
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 491
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT ACTION_SCO_AUDIO_STATE_UPDATED prev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", new "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 494
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_6

    const/16 p2, 0xc

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "EVENT_BLUETOOTH_PLUGIN, bluetooth turn on"

    .line 502
    invoke-static {v5, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "EVENT_BLUETOOTH_PLUGIN, bluetooth turn off"

    .line 497
    invoke-static {v5, p1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$BTHeadsetBroadcastReceiver;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {p1, v3, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$500(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;III)V

    :cond_7
    :goto_0
    return-void
.end method
