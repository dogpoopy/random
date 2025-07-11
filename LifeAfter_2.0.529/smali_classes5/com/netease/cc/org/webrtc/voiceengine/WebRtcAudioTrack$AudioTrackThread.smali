.class Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    .line 63
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method

.method private writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method private writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 175
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public joinThread()V
    .locals 3

    const-string v0, "WebRtcAudioTrack"

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    :try_start_0
    const-string v1, "android_audiotrack_join_limit_ms"

    const/16 v2, 0xbb8

    .line 181
    invoke-static {v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioOnlineConfig;->GetOnlineConfigInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->join(J)V

    .line 182
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "joinThread timeout"

    .line 183
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "joinThread interrupted"

    .line 186
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "AudioTrack Write Failed"

    const-string v1, "AudioTrack.write failed: "

    const/16 v2, -0x13

    .line 68
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrackThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebRtcAudioTrack"

    invoke-static {v3, v2}, Lcom/netease/cc/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    .line 78
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->outputDeviceName:Ljava/lang/String;

    .line 81
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    sput v2, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->outputDeviceType:I

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$100(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v2, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 96
    :goto_1
    iget-boolean v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v4, :cond_6

    .line 100
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$300(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)J

    move-result-wide v7

    invoke-static {v4, v2, v7, v8}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$400(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;IJ)V

    .line 104
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 106
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v7, 0xa

    .line 108
    :try_start_1
    invoke-static {v7, v8}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 118
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v7, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v7}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, v4, v7, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    goto :goto_3

    .line 121
    :cond_4
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v7, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v7}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, v4, v7, v2}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    if-eq v4, v2, :cond_5

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-static {v3, v7}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v0, v7}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x3

    if-ne v4, v7, :cond_5

    .line 135
    iput-boolean v6, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 141
    :cond_5
    iget-object v4, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_1

    .line 124
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v3, v1}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0, v1}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 151
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v0, v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 158
    :goto_4
    invoke-static {v5}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 160
    :try_start_4
    iget-object v0, p0, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.flush failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v3, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AudioTrack Flush Failed"

    .line 164
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.stop failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v3, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AudioTrack Stop Failed"

    .line 155
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.play failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v3, v0}, Lcom/netease/cc/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AudioTrack Play Failed"

    .line 88
    invoke-static {v1, v0}, Lcom/netease/cc/org/webrtc/voiceengine/WebRtcAudioReport;->ReportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
