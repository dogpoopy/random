.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->setVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$500()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/WebDialog;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->val$visible:Z

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v0}, Lorg/cocos2dx/lib/WebDialog;->show()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Lorg/cocos2dx/lib/WebDialog;->cancel()V

    :goto_0
    return-void
.end method
