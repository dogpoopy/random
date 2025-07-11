.class final Lcom/netease/ntunisdk/base/JfGas$4;
.super Ljava/lang/Object;
.source "JfGas.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/JfGas;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$4;->b:Lcom/netease/ntunisdk/base/JfGas;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$4;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p2, "UniSDK JfGas"

    .line 952
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "step"

    const-string v2, "queryOrder_res"

    .line 954
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "res"

    .line 955
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extraJson:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$4;->b:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$4;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 960
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/queryOrder result="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 964
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 965
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_0

    const-string p1, "/queryorder success"

    .line 967
    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$4;->b:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$4;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/SdkBase;->ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "/queryorder failed\uff0ccode="

    .line 972
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 975
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
