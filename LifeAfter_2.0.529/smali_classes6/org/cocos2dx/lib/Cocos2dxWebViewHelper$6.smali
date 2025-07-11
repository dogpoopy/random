.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->setWebViewRect(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$left:I

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$index:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$left:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$top:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$maxWidth:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$maxHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$500()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/WebDialog;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 313
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 314
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$maxWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 316
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;->val$maxHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 317
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {v0}, Lorg/cocos2dx/lib/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
