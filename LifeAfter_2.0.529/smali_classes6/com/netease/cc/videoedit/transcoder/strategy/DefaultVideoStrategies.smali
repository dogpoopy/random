.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategies;
.super Ljava/lang/Object;
.source "DefaultVideoStrategies.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for360x480()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
    .locals 3

    const/16 v0, 0x168

    const/16 v1, 0x1e0

    .line 38
    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->exact(II)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const-wide/32 v1, 0x7a120

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->bitRate(J)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 40
    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->frameRate(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 41
    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->keyFrameInterval(F)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    return-object v0
.end method

.method public static for720x1280()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;
    .locals 3

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 21
    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;->exact(II)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const-wide/32 v1, 0x1e8480

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->bitRate(J)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 23
    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->frameRate(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 24
    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->keyFrameInterval(F)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    return-object v0
.end method
