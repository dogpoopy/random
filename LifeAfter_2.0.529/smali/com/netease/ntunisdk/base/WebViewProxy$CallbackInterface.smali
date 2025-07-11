.class public Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;
.super Ljava/lang/Object;
.source "WebViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackInterface"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 835
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewProxy [CallbackInterface] $CallbackInterface.nativeCall, action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "close"

    .line 836
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->closeWebView()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "log"

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "message"

    if-eqz v0, :cond_1

    .line 840
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tag"

    .line 841
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 842
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 845
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "toast"

    .line 847
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 853
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "echoes"

    .line 855
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    :try_start_2
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewProxy [CallbackInterface] echoes callback"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "ntOpenEchoes"

    .line 860
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    const-string v3, "0"

    .line 861
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    .line 865
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewProxy [CallbackInterface]  echoes message="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKEchoes;->getInstance()Lcom/netease/ntunisdk/base/SDKEchoes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/SDKEchoes;->setmFeedbackMsg(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/netease/ntunisdk/base/SDKEchoes;->getInstance()Lcom/netease/ntunisdk/base/SDKEchoes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SDKEchoes;->echo2SA()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 873
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebViewProxy [CallbackInterface]  echoes JSONException="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 877
    :cond_3
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->c()Lcom/netease/ntunisdk/base/OnWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 878
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x1

    const-string v2, "WEBVIEW_CALLER_THREAD"

    .line 879
    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 880
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 889
    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$2;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
