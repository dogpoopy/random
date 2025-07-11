.class final Lcom/netease/ntunisdk/base/WebViewProxy$5;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 422
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$5;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 p1, 0x0

    .line 426
    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Z)Z

    .line 427
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$5;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->g(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/app/Dialog;

    .line 428
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$5;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->h(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/webkit/WebView;

    .line 429
    iget-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$5;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/WebViewProxy;->i(Lcom/netease/ntunisdk/base/WebViewProxy;)I

    .line 432
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewProxy [init] [onCancel] [closeWebView] callback start"

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "NtCloseWebView"

    .line 434
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    const-string v1, "0"

    .line 435
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 439
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewProxy [init] [onCancel] [closeWebView] callback Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
