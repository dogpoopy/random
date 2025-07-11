.class final Lcom/netease/ntunisdk/base/WebViewProxy$7;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;->doOpenWebView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 651
    const-class v0, Lcom/netease/ntunisdk/base/WebViewProxy;

    monitor-enter v0

    .line 652
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->j(Lcom/netease/ntunisdk/base/WebViewProxy;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    .line 659
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    .line 660
    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    const-string v4, "survey.163.com"

    .line 661
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    const-string v4, "survey.netease.com"

    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    const-string v4, "survey.easebar.com"

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    const-string v4, "research.163.com"

    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    const-string v4, "research.easebar.com"

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v3, 0x1

    .line 670
    invoke-static {v3}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Z)Z

    const-string v4, "webview_post"

    const/4 v5, 0x0

    .line 671
    invoke-virtual {v2, v4, v5}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    .line 672
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WebViewProxy [doOpenWebView] final url="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v3, :cond_3

    const-string v3, "webview_post"

    .line 675
    invoke-virtual {v2, v3, v5}, Lcom/netease/ntunisdk/base/SdkBase;->setPropInt(Ljava/lang/String;I)V

    .line 676
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebViewProxy [doOpenWebView] postUrl"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "webview_body"

    .line 677
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebViewProxy [doOpenWebView] postUrl postBody="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 682
    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebViewProxy [doOpenWebView] loadUrl"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 685
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$7;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->f(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 687
    monitor-exit v0

    return-void

    .line 689
    :cond_4
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewProxy [doOpenWebView] cannot call openWebView twice at the same time"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
