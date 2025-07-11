.class Lcom/netease/ntunisdk/NgWebviewProxy$4;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Lcom/netease/ntunisdk/ui/UniWebView$UniWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "?data="

    const-string v1, "func"

    .line 314
    invoke-static {}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UniWebview callback, json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", jsMethod="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v2}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$700(Lcom/netease/ntunisdk/NgWebviewProxy;)Lcom/netease/ntunisdk/WebviewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/WebviewParams;->getIntercept_schemes()Ljava/lang/String;

    move-result-object v2

    .line 318
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "methodId"

    const-string v5, "NGWebViewOpenURL"

    .line 319
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    check-cast v4, Lcom/netease/ntunisdk/base/SdkBase;

    .line 322
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "GameMusic"

    .line 324
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "params"

    if-eqz v6, :cond_0

    .line 325
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "callback"

    .line 328
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string p2, "interceptUrl"

    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, ","

    .line 333
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 336
    array-length v2, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, p1, v5

    .line 337
    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    const-string p1, "idvurl://"

    .line 343
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "gameHandleURL"

    .line 344
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/netease/ntunisdk/base/SdkBase;->extendFuncCall(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string p1, "unisdk-jsbridge://"

    .line 346
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "://msg/"

    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const-string v1, "&random="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 350
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/NgWebviewProxy;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p2, "onPageStarted"

    .line 359
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "unisdk-jsbridge"

    if-eqz p2, :cond_5

    .line 361
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 362
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v6}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$202(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z

    .line 363
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v6}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$302(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z

    .line 364
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/netease/ntunisdk/NgWebviewProxy$4$1;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/NgWebviewProxy$4$1;-><init>(Lcom/netease/ntunisdk/NgWebviewProxy$4;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_5
    const-string p2, "onPageFinished"

    .line 375
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 377
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 378
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$202(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z

    goto :goto_2

    :cond_6
    const-string p2, "onPageError"

    .line 380
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 382
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 383
    iget-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$4;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$302(Lcom/netease/ntunisdk/NgWebviewProxy;Z)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method
