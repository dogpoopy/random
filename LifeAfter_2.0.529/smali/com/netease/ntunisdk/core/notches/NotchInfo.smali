.class public Lcom/netease/ntunisdk/core/notches/NotchInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/notches/NotchInfo$Location;
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
.field private a:I

.field private b:I

.field private c:I

.field public mBoundingRect:Landroid/graphics/Rect;

.field public mNotchHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    iput v1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->b:I

    iput v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->c:I

    return-void
.end method


# virtual methods
.method public isAtBottom()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtCenter()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/16 v1, 0x30

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtCenterHorizontal()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtCenterVertical()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtLeft()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtTop()Z
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNotchPosition(IILandroid/graphics/Rect;)V
    .locals 2

    iput-object p3, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mNotchHeight:I

    iget-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    iget p3, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    or-int/2addr p2, p3

    const/4 p3, 0x0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/16 p1, 0x64

    if-lez v0, :cond_2

    iget p3, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->b:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p3, p1, :cond_0

    const/16 p3, 0x10

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->b:I

    if-ge v0, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :cond_2
    :goto_0
    if-lez v1, :cond_5

    iget v0, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p1, :cond_3

    or-int/lit8 p3, p3, 0x20

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->c:I

    if-ge v1, p1, :cond_4

    or-int/lit8 p3, p3, 0x2

    goto :goto_1

    :cond_4
    or-int/lit8 p3, p3, 0x8

    :cond_5
    :goto_1
    if-nez p3, :cond_6

    const/16 p3, 0x30

    :cond_6
    or-int p1, p2, p3

    iput p1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->a:I

    :cond_7
    return-void
.end method

.method public setScreenInfo(II)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/netease/ntunisdk/core/notches/NotchInfo;->c:I

    return-void
.end method
