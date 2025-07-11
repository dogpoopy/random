.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->removeWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$300()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 236
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$100()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 242
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$300()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 244
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;->val$index:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$400(I)V

    return-void
.end method
