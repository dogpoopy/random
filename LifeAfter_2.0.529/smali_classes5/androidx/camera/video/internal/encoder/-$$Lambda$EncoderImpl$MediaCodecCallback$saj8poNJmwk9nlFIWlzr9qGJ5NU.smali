.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$saj8poNJmwk9nlFIWlzr9qGJ5NU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/video/internal/encoder/OutputConfig;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$saj8poNJmwk9nlFIWlzr9qGJ5NU;->f$0:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final getMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$saj8poNJmwk9nlFIWlzr9qGJ5NU;->f$0:Landroid/media/MediaFormat;

    invoke-static {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onOutputFormatChanged$5(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
