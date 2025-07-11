.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;
.super Ljava/lang/Object;
.source "WebRtcAudioInitializer.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;


# direct methods
.method constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$008(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I

    .line 37
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$100(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$102(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;Z)Z

    .line 39
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->onBackgroundChange(I)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$010(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I

    .line 58
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)I

    move-result p1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$102(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;Z)Z

    .line 60
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;

    invoke-static {p1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioInitializer;)Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->onBackgroundChange(I)V

    :cond_0
    return-void
.end method
