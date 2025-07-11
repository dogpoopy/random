.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->loadUrl(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cleanCachedData:Z

.field final synthetic val$index:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 361
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$cleanCachedData:Z

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 364
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$300()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$cleanCachedData:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 368
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
