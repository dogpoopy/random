.class public Lcom/netease/ntunisdk/core/others/ViewUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExpandViewTag(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_0

    const v0, -0xedcc

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dp2px(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static expandViewTouchDelegate(Landroid/view/View;IIII)V
    .locals 8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v7, Lcom/netease/ntunisdk/core/others/ViewUtils$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/core/others/ViewUtils$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static expandViewTouchDelegateDp(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/others/ViewUtils;->dp2px(F)I

    move-result p1

    invoke-static {p0, p1, p1, p1, p1}, Lcom/netease/ntunisdk/core/others/ViewUtils;->expandViewTouchDelegate(Landroid/view/View;IIII)V

    return-void
.end method

.method public static expandViewTouchDelegateDp(Landroid/view/View;II)V
    .locals 0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/others/ViewUtils;->dp2px(F)I

    move-result p1

    int-to-float p2, p2

    invoke-static {p2}, Lcom/netease/ntunisdk/core/others/ViewUtils;->dp2px(F)I

    move-result p2

    invoke-static {p0, p2, p2, p1, p1}, Lcom/netease/ntunisdk/core/others/ViewUtils;->expandViewTouchDelegate(Landroid/view/View;IIII)V

    return-void
.end method

.method public static px2dp(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static restoreViewTouchDelegate(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/netease/ntunisdk/core/others/ViewUtils$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/core/others/ViewUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
