.class public Lcom/netease/mpay/oversea/c8;
.super Lcom/netease/mpay/oversea/ui/a;
.source "PayWebViewHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/web/WebViewExListener;


# instance fields
.field protected f:Lcom/netease/mpay/oversea/y5;

.field protected g:Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

.field protected h:Landroid/widget/ProgressBar;

.field protected i:Lcom/netease/mpay/oversea/web/WebViewEx;

.field protected j:Lcom/netease/mpay/oversea/ui/z;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;->a()Lcom/netease/mpay/oversea/PaymentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d3

    .line 4
    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "data"

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/c8;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/c8;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;->b:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/c8;->n()V

    .line 14
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/c8;->k()V

    return-void

    .line 15
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/c8;->m()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/netease/mpay/oversea/w5;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/w5;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw v0
.end method

.method public final alert(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public closeWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/c8;->m()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/web/WebViewEx;->goBack()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/c8;->m()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->j:Lcom/netease/mpay/oversea/ui/z;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z;->b()V

    :cond_0
    return-void
.end method

.method public getSDKToken()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->f:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->f:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:NMOJSBridge.Common.setSdkToken(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDKToken:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__webview:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/web/WebViewEx;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g8;->c()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/web/Config;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/g9;->f()Z

    move-result v5

    const-string v6, "a3.9.0"

    const/4 v7, 0x1

    invoke-direct {v4, v0, v6, v5, v7}, Lcom/netease/mpay/oversea/web/Config;-><init>(ZLjava/lang/String;ZZ)V

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->n()Ljava/util/ArrayList;

    move-result-object v5

    move-object v6, p0

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/netease/mpay/oversea/web/WebViewEx;->registered(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/WebViewExListener;)V

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->setScrollBarStyle(I)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    iget-object v1, p0, Lcom/netease/mpay/oversea/c8;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/c8$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/c8$b;-><init>(Lcom/netease/mpay/oversea/c8;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/z;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)Lcom/netease/mpay/oversea/ui/z;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/c8;->j:Lcom/netease/mpay/oversea/ui/z;

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/c8;->m()V

    return-void
.end method

.method protected n()V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/c8;->f:Lcom/netease/mpay/oversea/y5;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web_content_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__loading:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c8;->h:Landroid/widget/ProgressBar;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/c8;->k:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/c8$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/c8$a;-><init>(Lcom/netease/mpay/oversea/c8;)V

    .line 12
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:\ncode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nextraStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__user_center_login_error:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/j;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/c8;->a(Lcom/netease/mpay/oversea/j;)V
    :try_end_0
    .catch Lcom/netease/mpay/oversea/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/c8;->m()V

    :goto_0
    return-void
.end method

.method public onPNLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    const/16 v2, 0x8

    if-lt p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public final onReady()V
    .locals 1

    const-string v0, "enter"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedTitle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/c8;->k:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/netease/mpay/oversea/ec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSetSpwd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public openLinkInNativeBrowser(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public postMsgToNative(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveMigrateCode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/w0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c8;->i:Lcom/netease/mpay/oversea/web/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:NMOJSBridgeCommon.prototype.setCopyStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/web/WebViewEx;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public screenShot()V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->H()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jump to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method
