.class public Lcom/netease/mpay/oversea/a7;
.super Ljava/lang/Object;
.source "NotchInfo.java"


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/netease/mpay/oversea/a7;->b:I

    .line 18
    iput v1, p0, Lcom/netease/mpay/oversea/a7;->c:I

    .line 19
    iput v0, p0, Lcom/netease/mpay/oversea/a7;->d:I

    .line 20
    iput v0, p0, Lcom/netease/mpay/oversea/a7;->e:I

    return-void
.end method

.method private a(Landroid/graphics/Rect;)I
    .locals 3

    .line 8
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    const/16 p1, 0x64

    if-lez v0, :cond_2

    .line 11
    iget v2, p0, Lcom/netease/mpay/oversea/a7;->d:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    .line 13
    :cond_0
    iget v2, p0, Lcom/netease/mpay/oversea/a7;->d:I

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

    .line 20
    iget v2, p0, Lcom/netease/mpay/oversea/a7;->e:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 22
    :cond_3
    iget p1, p0, Lcom/netease/mpay/oversea/a7;->e:I

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

.method private a(Landroid/graphics/Rect;I)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget v0, p0, Lcom/netease/mpay/oversea/a7;->c:I

    or-int/2addr p2, v0

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a7;->a(Landroid/graphics/Rect;)I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/netease/mpay/oversea/a7;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/netease/mpay/oversea/a7;->d:I

    .line 2
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/netease/mpay/oversea/a7;->e:I

    return-void
.end method

.method public a(IILandroid/graphics/Rect;)V
    .locals 0

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    .line 4
    iput p1, p0, Lcom/netease/mpay/oversea/a7;->b:I

    .line 5
    invoke-direct {p0, p3, p2}, Lcom/netease/mpay/oversea/a7;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/netease/mpay/oversea/a7;->c:I

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

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/a7;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/a7;->c:I

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
