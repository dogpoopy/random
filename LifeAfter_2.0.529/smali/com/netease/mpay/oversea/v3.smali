.class public Lcom/netease/mpay/oversea/v3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p2, p0, Lcom/netease/mpay/oversea/v3;->a:I

    .line 3
    iput p3, p0, Lcom/netease/mpay/oversea/v3;->b:I

    .line 4
    iput p1, p0, Lcom/netease/mpay/oversea/v3;->c:I

    const/4 p3, 0x1

    if-le p1, p3, :cond_0

    add-int/lit8 p3, p1, -0x1

    mul-int p2, p2, p3

    .line 6
    div-int/2addr p2, p1

    iput p2, p0, Lcom/netease/mpay/oversea/v3;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/netease/mpay/oversea/v3;->d:I

    :goto_0
    return-void
.end method

.method private a(III)Z
    .locals 1

    .line 1
    rem-int v0, p1, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sub-int/2addr p1, p2

    if-lt p3, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    if-lez p4, :cond_2

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/v3;->c:I

    if-lez v0, :cond_2

    .line 3
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7
    iget p3, p0, Lcom/netease/mpay/oversea/v3;->c:I

    rem-int p3, p2, p3

    iget v0, p0, Lcom/netease/mpay/oversea/v3;->a:I

    iget v1, p0, Lcom/netease/mpay/oversea/v3;->d:I

    sub-int/2addr v0, v1

    mul-int p3, p3, v0

    sub-int/2addr v1, p3

    move v0, p3

    move p3, v1

    goto :goto_0

    .line 10
    :cond_0
    iget p3, p0, Lcom/netease/mpay/oversea/v3;->c:I

    rem-int p3, p2, p3

    iget v0, p0, Lcom/netease/mpay/oversea/v3;->a:I

    iget v1, p0, Lcom/netease/mpay/oversea/v3;->d:I

    sub-int/2addr v0, v1

    mul-int p3, p3, v0

    sub-int v0, v1, p3

    .line 13
    :goto_0
    iget v1, p0, Lcom/netease/mpay/oversea/v3;->c:I

    invoke-direct {p0, p4, v1, p2}, Lcom/netease/mpay/oversea/v3;->a(III)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/netease/mpay/oversea/v3;->b:I

    :goto_1
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method
