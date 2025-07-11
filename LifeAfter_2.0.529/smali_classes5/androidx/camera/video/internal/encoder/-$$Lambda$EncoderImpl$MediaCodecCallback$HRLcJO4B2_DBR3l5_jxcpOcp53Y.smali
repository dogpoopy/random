.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$HRLcJO4B2_DBR3l5_jxcpOcp53Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$HRLcJO4B2_DBR3l5_jxcpOcp53Y;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$HRLcJO4B2_DBR3l5_jxcpOcp53Y;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$HRLcJO4B2_DBR3l5_jxcpOcp53Y;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MediaCodecCallback$HRLcJO4B2_DBR3l5_jxcpOcp53Y;->f$1:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->lambda$onInputBufferAvailable$0$EncoderImpl$MediaCodecCallback(I)V

    return-void
.end method
