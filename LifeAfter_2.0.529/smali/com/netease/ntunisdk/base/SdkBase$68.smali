.class final Lcom/netease/ntunisdk/base/SdkBase$68;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->c(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 2195
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "consumesn"

    const-string v2, "data"

    const-string v3, "None"

    .line 2198
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/createorder result="

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniSDK Base"

    invoke-static {v5, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "create order fail"

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    const-string v0, "/createorder no response"

    .line 2200
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v7}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 2202
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 2203
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v8

    .line 2207
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "code"

    .line 2208
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "subcode"

    .line 2209
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "err"

    .line 2211
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "msg"

    .line 2212
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "popup"

    .line 2213
    invoke-virtual {v4, v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "aas_ff_code"

    const/4 v15, -0x1

    .line 2214
    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "aas_ff_rule"

    .line 2215
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "aas_version"

    .line 2216
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    const/4 v11, 0x0

    .line 2219
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 2220
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_1

    .line 2221
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2223
    :cond_1
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2226
    :cond_2
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v11, "AAS_VERSION"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 p1, v11

    move-object/from16 v16, v12

    :goto_2
    const/16 v7, 0x1a4

    if-ne v7, v9, :cond_5

    const-string v7, "message"

    .line 2230
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2231
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move-object v11, v12

    goto :goto_3

    :cond_4
    move-object/from16 v11, p1

    .line 2234
    :goto_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v13, "1"

    goto :goto_4

    :cond_5
    move-object/from16 v11, p1

    move-object/from16 v12, v16

    .line 2238
    :cond_6
    :goto_4
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfCode(I)V

    .line 2239
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v10}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfSubCode(I)V

    .line 2240
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v11}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfMessage(Ljava/lang/String;)V

    .line 2241
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfCode(I)V

    .line 2242
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v15}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfRule(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v3, v9, :cond_b

    const-string v3, "sn"

    .line 2245
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2246
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v8, "VIRTUAL_ORDER"

    invoke-virtual {v7, v8}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2247
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2248
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2249
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    :cond_7
    const-string v0, "etc"

    .line 2252
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdkOrderId"

    .line 2253
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "signature"

    .line 2254
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2255
    iget-object v7, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v7, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 2256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2257
    iget-object v3, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 2259
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2260
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 2262
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2263
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setSignature(Ljava/lang/String;)V

    :cond_a
    const-string v0, "/createorder success"

    .line 2265
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 v2, 0x0

    return v2

    .line 2271
    :cond_b
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0, v13, v12, v15}, Lcom/netease/ntunisdk/base/JfGas;->createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 2274
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    const-string v0, "/createorder fail"

    .line 2276
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 2278
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 2279
    iget-object v0, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v1, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 v2, 0x0

    return v2
.end method
