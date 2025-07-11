.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private mMajor:I

.field private mMinor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->mMajor:I

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->mMinor:I

    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;->mMinor:I

    return v0
.end method
