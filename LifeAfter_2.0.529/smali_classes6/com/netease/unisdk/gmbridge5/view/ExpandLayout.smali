.class public Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandLayout.java"


# instance fields
.field private mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field private mItemViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mLineColor:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gmBridge"    # Lcom/netease/unisdk/gmbridge5/GmBridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/unisdk/gmbridge5/GmBridge;",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p3, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 33
    sget v0, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_f_expand_bg:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->setBackgroundResource(I)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->setOrientation(I)V

    .line 35
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_expand_item_line_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineWidth:I

    .line 36
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_expand_item_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineHeight:I

    .line 37
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_expand_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineMargin:I

    .line 38
    const-string v0, "#33ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineColor:I

    .line 39
    invoke-direct {p0, p3}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->initViews(Ljava/util/List;)V

    .line 40
    return-void
.end method

.method private addLine()V
    .locals 4

    .line 63
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "line":Landroid/view/View;
    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineWidth:I

    iget v3, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mLineMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 67
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 68
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method private initViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 45
    .local v0, "size":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    .line 52
    .local v3, "menuItem":Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;
    new-instance v4, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mGmBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {v4, v5, v6, v3}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;)V

    .line 53
    .local v4, "itemView":Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v4, v1}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->addLine()V

    .line 50
    .end local v3    # "menuItem":Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;
    .end local v4    # "itemView":Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public showRed([Ljava/lang/String;)V
    .locals 5
    .param p1, "menuIds"    # [Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 77
    .local v2, "menuId":Ljava/lang/String;
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;

    .line 78
    .local v3, "itemView":Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;
    if-eqz v3, :cond_1

    .line 79
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;

    invoke-virtual {v4}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->showRed()V

    .line 76
    .end local v2    # "menuId":Ljava/lang/String;
    .end local v3    # "itemView":Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    return-void

    .line 74
    :cond_3
    :goto_1
    return-void
.end method
