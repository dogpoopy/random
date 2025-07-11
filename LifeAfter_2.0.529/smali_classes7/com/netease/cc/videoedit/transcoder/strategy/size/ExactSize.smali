.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;
.super Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
.source "ExactSize.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    .line 16
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->mWidth:I

    .line 17
    iput p2, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactSize;->mWidth:I

    return v0
.end method
