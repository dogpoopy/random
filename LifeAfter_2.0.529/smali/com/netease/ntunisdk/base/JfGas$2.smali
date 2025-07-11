.class final Lcom/netease/ntunisdk/base/JfGas$2;
.super Ljava/lang/Object;
.source "JfGas.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

.field final synthetic c:Lcom/netease/ntunisdk/base/JfGas;

.field final synthetic d:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/JfGas$2;->d:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "None"

    const-string v4, "UniSDK JfGas"

    .line 464
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "step"

    const-string v6, "createOrder_res"

    .line 466
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "res"

    .line 467
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "extraJson:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v6, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/netease/ntunisdk/base/SdkBase;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 472
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "/createorder result="

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "create order fail"

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const-string v0, "/createorder no response"

    .line 474
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 476
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 477
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return v7

    .line 481
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "code"

    .line 482
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "subcode"

    .line 483
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 485
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "msg"

    .line 486
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "popup"

    .line 487
    invoke-virtual {v0, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "aas_ff_code"

    const/4 v14, -0x1

    .line 488
    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "aas_ff_rule"

    .line 489
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "aas_version"

    .line 490
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v5

    .line 493
    :goto_1
    :try_start_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v7, v5, :cond_2

    .line 494
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v7, v5, :cond_1

    .line 495
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 497
    :cond_1
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 500
    :cond_2
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v5}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v5

    const-string v7, "AAS_VERSION"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/netease/ntunisdk/base/SdkBase;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v16, v5

    .line 503
    :goto_3
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5, v8}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfCode(I)V

    .line 504
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5, v9}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfSubCode(I)V

    .line 505
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5, v10}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfMessage(Ljava/lang/String;)V

    .line 506
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5, v13}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfCode(I)V

    .line 507
    iget-object v5, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v5, v14}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfAasFfRule(Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v5, v8, :cond_5

    .line 510
    iget-object v3, v1, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    if-eqz v3, :cond_4

    const-string v0, "create order callbackResult"

    .line 511
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->b:Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;->callbackResult(Ljava/lang/String;)V

    goto :goto_4

    .line 515
    :cond_4
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    iget-object v3, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v0, v3}, Lcom/netease/ntunisdk/base/JfGas;->processWhenJfSuc(Lorg/json/JSONObject;Lcom/netease/ntunisdk/base/OrderInfo;)V

    :goto_4
    const/4 v2, 0x0

    return v2

    :cond_5
    const/16 v0, 0x1cc

    if-ne v0, v8, :cond_6

    const/16 v0, 0xd

    if-ne v0, v9, :cond_6

    .line 519
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "MODE_HAS_LVU_DIALOG"

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "methodId"

    const-string v3, "openLVU"

    .line 521
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    .line 522
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "orderInfo"

    .line 523
    iget-object v3, v1, Lcom/netease/ntunisdk/base/JfGas$2;->d:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-static {v3}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_6
    const/16 v0, 0x1ae

    if-ne v0, v8, :cond_7

    if-nez v9, :cond_7

    .line 528
    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 529
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v12, "1"

    goto :goto_5

    .line 533
    :cond_7
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 535
    :cond_8
    :goto_5
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    invoke-static {v0, v12, v11, v14}, Lcom/netease/ntunisdk/base/JfGas;->createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    .line 537
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/createorder fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    :goto_7
    const-string v0, "/createorder fail"

    .line 540
    invoke-static {v4, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 542
    iget-object v0, v1, Lcom/netease/ntunisdk/base/JfGas$2;->c:Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/JfGas;->a(Lcom/netease/ntunisdk/base/JfGas;)Lcom/netease/ntunisdk/base/SdkBase;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/ntunisdk/base/JfGas$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    const/4 v2, 0x0

    return v2
.end method
