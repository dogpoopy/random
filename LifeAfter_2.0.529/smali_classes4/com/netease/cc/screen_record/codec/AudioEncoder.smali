.class Lcom/netease/cc/screen_record/codec/AudioEncoder;
.super Lcom/netease/cc/screen_record/codec/BaseEncoder;
.source "AudioEncoder.java"


# instance fields
.field private final mConfig:Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;)V
    .locals 1

    .line 26
    iget-object v0, p1, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->codecName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/BaseEncoder;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/AudioEncoder;->mConfig:Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    return-void
.end method


# virtual methods
.method protected createMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/AudioEncoder;->mConfig:Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;->toFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method
