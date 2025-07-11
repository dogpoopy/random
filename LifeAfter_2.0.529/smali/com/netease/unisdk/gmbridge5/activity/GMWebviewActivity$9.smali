.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;
.super Landroid/webkit/WebViewClient;
.source "GMWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    .line 391
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 404
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$102(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/view/animation/RotateAnimation;)Landroid/view/animation/RotateAnimation;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$402(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 409
    .local v0, "x":I
    if-lez v0, :cond_1

    .line 410
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "scrollBy [%d,0]"

    invoke-static {v1, v5, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 414
    .end local v0    # "x":I
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 416
    .local v0, "y":I
    if-lez v0, :cond_2

    .line 417
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "scrollBy [0,%d]"

    invoke-static {v1, v4, v2}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 421
    .end local v0    # "y":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gm_bridge"

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 397
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 459
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 426
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "gm_bridge"

    const-string v3, "shouldOverrideUrlLoading url >> %s"

    invoke-static {v2, v3, v1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const-string v1, "neteasegl://applinks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-virtual {v3, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open dashen Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0, p2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Z

    move-result v0

    .line 440
    .local v0, "intercepted":Z
    if-nez v0, :cond_2

    .line 441
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    .line 444
    .local v1, "x":I
    if-lez v1, :cond_1

    .line 445
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$500(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    .line 448
    .local v2, "y":I
    if-lez v2, :cond_2

    .line 449
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$9;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$400(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2
    return v0
.end method
