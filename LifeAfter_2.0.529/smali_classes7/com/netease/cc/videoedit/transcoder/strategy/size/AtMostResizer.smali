.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;
.super Ljava/lang/Object;
.source "AtMostResizer.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;


# instance fields
.field private final atMostMajor:I

.field private final atMostMinor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMinor:I

    const p1, 0x7fffffff

    .line 20
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMajor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMinor:I

    .line 30
    iput p2, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMajor:I

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
    .locals 3

    .line 36
    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v0

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMinor:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v0

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMajor:I

    if-gt v0, v1, :cond_0

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMinor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 42
    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMajor:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 43
    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMinor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->getMajor()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v1, v0

    if-ltz p1, :cond_1

    .line 45
    iget p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMajor:I

    int-to-float v0, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/AtMostResizer;->atMostMinor:I

    int-to-float p1, v0

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 51
    :goto_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 52
    :cond_2
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 53
    :cond_3
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    invoke-direct {v1, v0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    return-object v1
.end method
