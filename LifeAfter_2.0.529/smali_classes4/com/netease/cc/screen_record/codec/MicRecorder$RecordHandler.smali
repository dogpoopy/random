.class Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;
.super Landroid/os/Handler;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field private mCachedInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxingOutputBufferIndices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPollRate:I

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    .line 203
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 198
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    .line 199
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    .line 200
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$100(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result p1

    const p2, 0x1f4000

    div-int/2addr p2, p1

    iput p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    return-void
.end method

.method private handleGameVoice()V
    .locals 5

    .line 332
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->canReadData()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 334
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->getGameVoicePollRateMs()I

    move-result v0

    .line 335
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInput()I

    move-result v2

    .line 336
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder returned input buffer index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MicRecorder"

    invoke-static {v4, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0, v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1400(Lcom/netease/cc/screen_record/codec/MicRecorder;I)V

    .line 340
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    .line 342
    :cond_2
    iget v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    :goto_0
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 346
    :cond_3
    iget v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private handleRecordVoice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInput()I

    move-result v0

    .line 354
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v1

    const-string v2, "MicRecorder"

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio encoder returned input buffer index="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz v0, :cond_1

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1500(Lcom/netease/cc/screen_record/codec/MicRecorder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "handleRecordVoice catch exception."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "try later to poll input buffer"

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 367
    iget v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mPollRate:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private offerOutput()V
    .locals 7

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 315
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio encoder returned output buffer index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicRecorder"

    invoke-static {v3, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v4}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V

    :cond_2
    if-gez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    .line 320
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 321
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mCachedInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_3
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private pollInput()I
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->getEncoder()Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method private pollInputIfNeed()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    .line 379
    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "MicRecorder"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 295
    :pswitch_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-ne v1, p1, :cond_7

    .line 296
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->clearData()V

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1100(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set currentSkipEncodeDurationUs "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1300(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1302(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J

    goto/16 :goto_2

    .line 288
    :pswitch_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 289
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1000(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1200(Lcom/netease/cc/screen_record/codec/MicRecorder;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$1102(Lcom/netease/cc/screen_record/codec/MicRecorder;J)J

    const-string p1, "Pause mic recording."

    .line 291
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 281
    :pswitch_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 283
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$702(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->release()V

    goto/16 :goto_2

    .line 275
    :pswitch_3
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 276
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$700(Lcom/netease/cc/screen_record/codec/MicRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->stop()V

    goto/16 :goto_2

    .line 265
    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->releaseOutputBuffer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mic recorder catch exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getMicLogEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio encoder released output buffer index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remaining="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->mMuxingOutputBufferIndices:Ljava/util/LinkedList;

    .line 271
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_3
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInputIfNeed()V

    goto/16 :goto_2

    .line 260
    :pswitch_5
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->offerOutput()V

    .line 261
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->pollInputIfNeed()V

    goto/16 :goto_2

    .line 212
    :pswitch_6
    :try_start_1
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-nez p1, :cond_5

    .line 214
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$100(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$300(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result v0

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$400(Lcom/netease/cc/screen_record/codec/MicRecorder;)I

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$500(III)Landroid/media/AudioRecord;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "create audio record failure"

    .line 216
    invoke-static {v2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 221
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$702(Lcom/netease/cc/screen_record/codec/MicRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 227
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    .line 230
    :cond_5
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$800(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/AudioEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/AudioEncoder;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 237
    :pswitch_7
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$900(Lcom/netease/cc/screen_record/codec/MicRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 238
    invoke-static {}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$200()Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 241
    :try_start_3
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->handleGameVoice()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 244
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    goto :goto_2

    .line 250
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->handleRecordVoice()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 253
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_4
    move-exception p1

    .line 233
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder;->access$600(Lcom/netease/cc/screen_record/codec/MicRecorder;)Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$RecordHandler;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder;

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
