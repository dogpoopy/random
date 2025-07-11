.class Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;
.super Ljava/lang/Object;
.source "MicRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

.field final synthetic val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

.field final synthetic val$index:I

.field final synthetic val$info:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    iput-object p2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iput p3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$index:I

    iput-object p4, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$info:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->this$0:Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;

    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;->access$000(Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate;)Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$encoder:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$index:I

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/MicRecorder$CallbackDelegate$4;->val$info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method
