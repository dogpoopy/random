.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRouting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRoutingThread"
.end annotation


# instance fields
.field private mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;


# direct methods
.method private constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;-><init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    return-void
.end method


# virtual methods
.method public joinThread()V
    .locals 1

    .line 528
    :goto_0
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 531
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 516
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string v0, "AudioRoute"

    const-string v1, "AudioRoutingThread begin"

    .line 518
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$900(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    .line 521
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$AudioRoutingThread;->mLooper:Landroid/os/Looper;

    .line 523
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v1, "AudioRoutingThread exit"

    .line 524
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
