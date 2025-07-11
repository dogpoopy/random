.class public Lcom/netease/mpay/oversea/s6$a;
.super Ljava/lang/Object;
.source "NotchDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/s6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Z

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Landroid/view/View;ZZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    .line 3
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/s6$a;->b:Z

    .line 4
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/s6$a;->c:Z

    .line 5
    iput p5, p0, Lcom/netease/mpay/oversea/s6$a;->e:I

    .line 6
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/s6$a;->d:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/netease/mpay/oversea/s6$a;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZZII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    .line 10
    iput-boolean p3, p0, Lcom/netease/mpay/oversea/s6$a;->b:Z

    .line 11
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/s6$a;->c:Z

    .line 12
    iput p5, p0, Lcom/netease/mpay/oversea/s6$a;->e:I

    .line 13
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/s6$a;->d:Z

    .line 14
    iput p6, p0, Lcom/netease/mpay/oversea/s6$a;->f:I

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 66
    iget v2, p0, Lcom/netease/mpay/oversea/s6$a;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr p1, v2

    if-ge v1, p1, :cond_0

    .line 67
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object p1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(IIII)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/s6$a;->b:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/netease/mpay/oversea/s6$a;->c(IIII)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/netease/mpay/oversea/s6$a;->b(IIII)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s6$a;[Lcom/netease/mpay/oversea/a7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s6$a;->a([Lcom/netease/mpay/oversea/a7;)V

    return-void
.end method

.method private a([Lcom/netease/mpay/oversea/a7;)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/a7;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/s6$a;->d:Z

    if-eqz v1, :cond_1

    .line 6
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 7
    iget v3, p0, Lcom/netease/mpay/oversea/s6$a;->e:I

    if-ne v3, v2, :cond_2

    goto :goto_0

    .line 13
    :cond_0
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v3, 0x0

    .line 18
    :goto_1
    aget-object v4, p1, v2

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/netease/mpay/oversea/s6$a;->d:Z

    if-eqz v4, :cond_6

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    iget-object v5, v5, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 20
    iget v4, p0, Lcom/netease/mpay/oversea/s6$a;->e:I

    if-eq v4, v2, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/a7;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/a7;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 27
    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 29
    :cond_4
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v3

    goto :goto_3

    .line 30
    :cond_5
    :goto_2
    aget-object v4, p1, v2

    iget v4, v4, Lcom/netease/mpay/oversea/a7;->b:I

    .line 31
    invoke-direct {p0, v4}, Lcom/netease/mpay/oversea/s6$a;->a(I)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x2

    .line 42
    aget-object v6, p1, v5

    if-eqz v6, :cond_8

    .line 43
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/a7;->c()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 45
    iget-boolean v6, p0, Lcom/netease/mpay/oversea/s6$a;->d:Z

    if-eqz v6, :cond_8

    .line 46
    aget-object v3, p1, v5

    iget-object v3, v3, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v5, v3

    .line 47
    iget v5, p0, Lcom/netease/mpay/oversea/s6$a;->e:I

    if-ne v5, v2, :cond_8

    move v1, v3

    goto :goto_5

    .line 54
    :cond_7
    aget-object v1, p1, v5

    iget-object v1, v1, Lcom/netease/mpay/oversea/a7;->a:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    move v3, v1

    :cond_8
    :goto_5
    const/4 v2, 0x3

    .line 60
    aget-object p1, p1, v2

    .line 63
    invoke-direct {p0, v1, v3, v4, v0}, Lcom/netease/mpay/oversea/s6$a;->a(IIII)V

    return-void
.end method

.method private b(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private c(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-lt v0, p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/netease/mpay/oversea/s6$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p4, v1

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
