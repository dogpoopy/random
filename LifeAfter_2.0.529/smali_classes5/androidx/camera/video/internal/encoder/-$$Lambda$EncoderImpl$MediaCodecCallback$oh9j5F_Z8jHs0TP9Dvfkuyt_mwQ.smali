.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic f$1:Landroid/media/MediaCodec$BufferInfo;

.field public final synthetic f$2:Landroid/media/MediaCodec;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$1:Landroid/media/MediaCodec$BufferInfo;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$2:Landroid/media/MediaCodec;

    iput p4, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$1:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$2:Landroid/media/MediaCodec;

    iget v3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$oh9j5F_Z8jHs0TP9Dvfkuyt_mwQ;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputBufferAvailable$2$EncoderImpl$MediaCodecCallback(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    return-void
.end method
