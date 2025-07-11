.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;
.super Ljava/lang/Object;
.source "WebRtcAudioRouting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->sendEventDelay(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

.field final synthetic val$arg:I

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;II)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    iput p2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->val$event:I

    iput p3, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->val$arg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$100(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)J

    move-result-wide v1

    iget v3, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->val$event:I

    iget v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->val$arg:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$300(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;JII)V

    .line 165
    :cond_0
    iget v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->val$event:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting$1;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;->access$400(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioRouting;)V

    :cond_1
    return-void
.end method
