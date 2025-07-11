.class public Lcom/netease/ntunisdk/zxing/notch/NotchInfo;
.super Ljava/lang/Object;
.source "NotchInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/zxing/notch/NotchInfo$Location;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x8

.field public static final CENTER:I = 0x30

.field public static final CENTER_H:I = 0x10

.field public static final CENTER_V:I = 0x20

.field public static final LEFT:I = 0x1

.field protected static final NOTCH_HEIGHT_NONE:I = 0x0

.field protected static final NOTCH_UNINITIALIZED:I = -0x1

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x2


# instance fields
.field private centerX:I

.field private centerY:I

.field private location:I

.field public mBoundingRect:Landroid/graphics/Rect;

.field public mNotchHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mNotchHeight:I

    .line 25
    iput v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    .line 26
    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerX:I

    .line 27
    iput v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerY:I

    return-void
.end method

.method private getRelativePosition(Landroid/graphics/Rect;)I
    .locals 3

    .line 55
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 56
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/16 p1, 0x64

    if-lez v0, :cond_2

    .line 58
    iget v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    .line 60
    :cond_0
    iget v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerX:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez v1, :cond_5

    .line 67
    iget v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 69
    :cond_3
    iget p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerY:I

    if-ge v1, p1, :cond_4

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    or-int/lit8 v0, v0, 0x8

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    const/16 v0, 0x30

    :cond_6
    return v0
.end method

.method private setPosition(Landroid/graphics/Rect;I)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    or-int/2addr p2, v0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->getRelativePosition(Landroid/graphics/Rect;)I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    :cond_0
    return-void
.end method


# virtual methods
.method public isAtBottom()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtCenter()Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/16 v1, 0x30

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtCenterHorizontal()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtCenterVertical()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtLeft()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAtTop()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->location:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNotchPosition(IILandroid/graphics/Rect;)V
    .locals 0

    .line 36
    iput-object p3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    .line 37
    iput p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mNotchHeight:I

    .line 38
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->setPosition(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public setScreenInfo(II)V
    .locals 0

    .line 31
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerX:I

    .line 32
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchInfo;->centerY:I

    return-void
.end method
