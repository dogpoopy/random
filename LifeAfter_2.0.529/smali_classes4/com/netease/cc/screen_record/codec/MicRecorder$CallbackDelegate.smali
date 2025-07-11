.class Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;
.super Landroid/os/Handler;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    return-object p0
.end method


# virtual methods
.method onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V
    .locals 1

    .line 139
    new-instance v0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$1;-><init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onNotifyErrorCode(Lcom/netease/cc/screen_record/codec/Encoder;I)V
    .locals 1

    .line 151
    new-instance v0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$2;-><init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/Encoder;I)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;-><init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$3;-><init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
