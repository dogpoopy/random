.class final Lcom/netease/ntunisdk/base/JfGas$5;
.super Ljava/lang/Object;
.source "JfGas.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas;->queryProduct(Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;

.field final synthetic b:Lcom/netease/ntunisdk/base/JfGas;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$5;->b:Lcom/netease/ntunisdk/base/JfGas;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$5;->a:Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string p2, "extraJson:"

    const-string v0, "UniSDK JfGas"

    .line 1061
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "step"

    const-string v3, "queryProduct_res"

    .line 1063
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_0
    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$5;->b:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 1068
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/queryProduct result="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "/queryProduct no response"

    .line 1070
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$5;->a:Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;

    if-eqz p1, :cond_0

    .line 1072
    invoke-interface {p1}, Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;->callbackResult()V

    :cond_0
    return v3

    .line 1077
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 1078
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v5, "res_code"

    .line 1080
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 1082
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_1
    iget-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$5;->b:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {p2}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p2, p1, :cond_6

    const-string p1, "product_list_v2"

    .line 1086
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    const-string p1, "product_list"

    .line 1089
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 1093
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 1094
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1095
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v1, :cond_3

    .line 1097
    sput-boolean p2, Lcom/netease/ntunisdk/base/OrderInfo;->isJFV2Product:Z

    .line 1098
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 1100
    :cond_3
    sput-boolean v3, Lcom/netease/ntunisdk/base/OrderInfo;->isJFV2Product:Z

    .line 1101
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->a(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const-string p1, "/queryProduct success"

    .line 1106
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$5;->a:Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;

    if-eqz p1, :cond_5

    .line 1108
    invoke-interface {p1}, Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;->callbackResult()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    return v3

    :catch_2
    move-exception p1

    .line 1113
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "/queryProduct fail:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "/queryProduct fail"

    .line 1115
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$5;->a:Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;

    if-eqz p1, :cond_7

    .line 1117
    invoke-interface {p1}, Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;->callbackResult()V

    :cond_7
    return v3
.end method
