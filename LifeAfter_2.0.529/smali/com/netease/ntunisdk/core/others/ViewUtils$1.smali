.class final Lcom/netease/ntunisdk/core/others/ViewUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/others/ViewUtils;->expandViewTouchDelegate(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->b:I

    iput p3, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->c:I

    iput p4, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->d:I

    iput p5, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/ViewUtils$1;->a:Landroid/view/View;

    const v1, -0xedcc

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
