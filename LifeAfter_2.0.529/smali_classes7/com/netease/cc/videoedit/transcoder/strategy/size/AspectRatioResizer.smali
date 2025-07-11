.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/AspectRatioResizer;
.super Ljava/lang/Object;
.source "AspectRatioResizer.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;


# instance fields
.field private final aspectRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AspectRatioResizer;->aspectRatio:F

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 25
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AspectRatioResizer;->aspectRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    div-float v1, v2, v1

    :goto_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 29
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-direct {v0, v2, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    return-object v0

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 32
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    return-object v0

    :cond_2
    return-object p1
.end method
