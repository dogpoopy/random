.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 888
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 900
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 896
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, -0x1

    .line 879
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    const/4 p1, 0x0

    .line 881
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 0

    .line 872
    iget p0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 872
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 0

    .line 872
    iget p0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 0

    .line 872
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return p1
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .line 917
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .line 927
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
