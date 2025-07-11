.class final Lcom/netease/ntunisdk/base/WebViewProxy$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 334
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 318
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewProxy [init] [onPageStarted]"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 320
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object p1

    new-instance p2, Lcom/netease/ntunisdk/base/WebViewProxy$2$3;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$2$3;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;)V

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WebViewProxy [init] [onReceivedError], errorCode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", failingUrl: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance p1, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    const-string p2, "close"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 198
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewProxy [init] [shouldOverrideUrlLoading] url="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "weixin://"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "android.intent.action.VIEW"

    if-eqz p1, :cond_0

    .line 201
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 202
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    :try_start_0
    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 211
    new-instance p2, Lcom/netease/ntunisdk/base/WebViewProxy$2$1;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$2$1;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_0
    const-string p1, "alipays://"

    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "WebViewProxy [init] [shouldOverrideUrlLoading] Exception="

    if-eqz p1, :cond_2

    .line 232
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 233
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    :try_start_1
    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const-string p1, "http://"

    .line 251
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "https://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 253
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    const-string v3, "WebViewProxy [init] [shouldOverrideUrlLoading] \u5c5e\u4e8e\u81ea\u5b9a\u4e49\u534f\u8bae"

    invoke-static {p1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string v3, "WEBVIEW_UNKNOWN_PROTOCOL_HANDLE_MODE"

    const-string v4, "1"

    invoke-interface {p1, v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "WebViewProxy [init] [shouldOverrideUrlLoading] unknownProtocolHandleMode="

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 260
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 263
    :try_start_2
    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->c(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_2

    :cond_3
    const-string p2, "0"

    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    new-instance p1, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    iget-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    const-string p2, "close"

    const-string v1, "error"

    invoke-virtual {p1, p2, v1}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v0

    .line 286
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewProxy [init] [shouldOverrideUrlLoading] \u5c5e\u4e8ehttp/https\u534f\u8bae"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->getInstance()Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/CachedThreadPoolUtil;->exec(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method
