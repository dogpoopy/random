.class Lcom/netease/cc/screen_record/codec/BaseEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "BaseEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/BaseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/BaseEncoder;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget-object p1, p1, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onError(Lcom/netease/cc/screen_record/codec/Encoder;Ljava/lang/Exception;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget-object p1, p1, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onInputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget-object p1, p1, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    invoke-virtual {p1, v0, p2, p3}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    iget-object p1, p1, Lcom/netease/cc/screen_record/codec/BaseEncoder;->mCallback:Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/BaseEncoder$1;->this$0:Lcom/netease/cc/screen_record/codec/BaseEncoder;

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;->onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V

    return-void
.end method
