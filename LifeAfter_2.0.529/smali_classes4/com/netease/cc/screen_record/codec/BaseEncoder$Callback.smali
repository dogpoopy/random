.class abstract Lcom/netease/cc/screen_record/codec/BaseEncoder$Callback;
.super Ljava/lang/Object;
.source "BaseEncoder.java"

# interfaces
.implements Lcom/netease/cc/screen_record/codec/Encoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/BaseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onInputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;I)V
    .locals 0

    return-void
.end method

.method onOutputBufferAvailable(Lcom/netease/cc/screen_record/codec/BaseEncoder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method onOutputFormatChanged(Lcom/netease/cc/screen_record/codec/BaseEncoder;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
