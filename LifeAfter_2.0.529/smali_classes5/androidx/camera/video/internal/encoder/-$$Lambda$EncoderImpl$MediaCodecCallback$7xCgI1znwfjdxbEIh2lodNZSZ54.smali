.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$7xCgI1znwfjdxbEIh2lodNZSZ54;->f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputBufferAvailable$1$EncoderImpl$MediaCodecCallback(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    return-void
.end method
