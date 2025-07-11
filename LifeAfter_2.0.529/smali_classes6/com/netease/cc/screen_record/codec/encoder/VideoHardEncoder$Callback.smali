.class public abstract Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder$Callback;
.super Ljava/lang/Object;
.source "VideoHardEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onError(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method onInputBufferAvailable(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;I)V
    .locals 0

    return-void
.end method

.method onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/encoder/VideoHardEncoder;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
