.class final Lcom/netease/ntunisdk/base/function/e$1;
.super Ljava/lang/Object;
.source "IapOrder.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/e;->a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Lcom/netease/ntunisdk/base/JfGas;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/JfGas;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/function/e$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/function/e$1;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callbackResult(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "amount"

    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callbackResult: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IapOrder"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "sn"

    .line 28
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cp_orderid"

    .line 29
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "goodsid"

    .line 30
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "channel_goodsid"

    .line 31
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "goodsinfo"

    .line 32
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    const-string v12, "channel_goodsinfo"

    .line 38
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "consumesn"

    .line 39
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    iget-object v15, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v15}, Lcom/netease/ntunisdk/base/OrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v14, "goodsinfo or channelGoodsinfo invalid"

    goto :goto_2

    .line 52
    :cond_2
    iget-object v5, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductPrice()F

    move-result v5

    iget-object v8, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v8

    int-to-float v8, v8

    mul-float v5, v5, v8

    float-to-double v14, v5

    cmpl-double v5, v10, v14

    if-eqz v5, :cond_3

    const-string v5, "amount or price maybe invalid"

    .line 54
    invoke-static {v3, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    const-string v14, "goodsid invalid"

    goto :goto_2

    :cond_5
    :goto_1
    const-string v14, "cp_orderid invalid"

    .line 57
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_9

    .line 59
    :try_start_1
    iget-object v5, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "{}"

    if-eqz v8, :cond_6

    move-object v5, v10

    .line 63
    :cond_6
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v8, "{"

    .line 64
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move-object v10, v5

    .line 68
    :cond_8
    :goto_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setExtendJson(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 73
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_9
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 83
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 84
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v13}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 88
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 89
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v12

    .line 90
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    iget-object v4, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductPrice()F

    move-result v4

    iget-object v5, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductExchangeRatio()I

    move-result v5

    invoke-static {v6, v12, v4, v5, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    .line 95
    :cond_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 96
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 97
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 98
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 101
    :cond_e
    iget-object v0, v1, Lcom/netease/ntunisdk/base/function/e$1;->c:Lcom/netease/ntunisdk/base/JfGas;

    iget-object v4, v1, Lcom/netease/ntunisdk/base/function/e$1;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2, v4}, Lcom/netease/ntunisdk/base/JfGas;->processWhenJfSuc(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
