.class Lcom/netease/cc/screen_record/codec/CCRecorder$1;
.super Ljava/lang/Object;
.source "CCRecorder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/CCRecorder;->newRecorder(IIILandroid/media/projection/MediaProjection;Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;Ljava/lang/String;Lorg/json/JSONObject;ZZ)Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V
    .locals 2

    .line 395
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 396
    iput-wide v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->startTime:J

    return-void
.end method


# virtual methods
.method public onEvent(ILorg/json/JSONObject;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onEvent(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public onRecording(J)V
    .locals 5

    .line 418
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 419
    iput-wide p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->startTime:J

    .line 421
    :cond_0
    iget-wide v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->startTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "onStart"

    .line 400
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/Throwable;)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onStop()V

    goto :goto_1

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder$1;->this$0:Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;

    move-result-object v0

    const/4 v1, -0x6

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
