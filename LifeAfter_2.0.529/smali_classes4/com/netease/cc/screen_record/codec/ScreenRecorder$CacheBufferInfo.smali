.class Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheBufferInfo"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;


# direct methods
.method public constructor <init>(Lcom/netease/cc/screen_record/codec/ScreenRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->this$0:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 95
    :try_start_0
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 96
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 97
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "[CCR]"

    const-string p2, "[cache_record] OutOfMemoryError"

    .line 99
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/ScreenRecorder$CacheBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 101
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method
