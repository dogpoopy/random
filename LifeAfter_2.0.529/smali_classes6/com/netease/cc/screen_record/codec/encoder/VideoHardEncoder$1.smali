.class Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "VideoHardEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->access$000(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;->onError(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;Ljava/lang/Exception;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->access$000(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;->onInputBufferAvailable(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->access$000(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-virtual {p1, v0, p2, p3}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;->access$000(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;)Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;Landroid/media/MediaFormat;)V

    return-void
.end method
