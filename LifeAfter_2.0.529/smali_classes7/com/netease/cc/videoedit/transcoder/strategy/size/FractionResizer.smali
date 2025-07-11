.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;
.super Ljava/lang/Object;
.source "FractionResizer.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;


# instance fields
.field private final fraction:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 17
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;->fraction:F

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fraction must be > 0 and <= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOutputSize(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
    .locals 2

    .line 23
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;->fraction:F

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 24
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/FractionResizer;->fraction:F

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result p1

    int-to-float p1, p1

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 25
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 26
    :cond_0
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 27
    :cond_1
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    invoke-direct {v1, v0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    return-object v1
.end method
