.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$mUa3R5Zre8cEoICQuUkfN78ZLB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

.field public final synthetic f$1:Landroidx/camera/video/internal/encoder/EncodedDataImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$mUa3R5Zre8cEoICQuUkfN78ZLB0;->f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$mUa3R5Zre8cEoICQuUkfN78ZLB0;->f$1:Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$mUa3R5Zre8cEoICQuUkfN78ZLB0;->f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$mUa3R5Zre8cEoICQuUkfN78ZLB0;->f$1:Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    invoke-static {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$sendEncodedData$3(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V

    return-void
.end method
