.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$-UGLmDkXv3HBtFjypefbSzG-XIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic f$1:Landroid/media/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$-UGLmDkXv3HBtFjypefbSzG-XIE;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$-UGLmDkXv3HBtFjypefbSzG-XIE;->f$1:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$-UGLmDkXv3HBtFjypefbSzG-XIE;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$-UGLmDkXv3HBtFjypefbSzG-XIE;->f$1:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputFormatChanged$7$EncoderImpl$MediaCodecCallback(Landroid/media/MediaFormat;)V

    return-void
.end method
