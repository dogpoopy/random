.class Lcom/netease/ntunisdk/SdkGoogleplay$2;
.super Ljava/lang/Object;
.source "SdkGoogleplay.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleplay;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

.field final synthetic val$count:Lcom/netease/ntunisdk/util/Count;

.field final synthetic val$displayCustomPrice:I

.field final synthetic val$extraJson:Lorg/json/JSONObject;

.field final synthetic val$order:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic val$payCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleplay;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/util/Count;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    iput-object p4, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    iput p6, p0, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$displayCustomPrice:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 389
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 390
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/util/Count;->plusTimes()V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UniSDK Googleplay"

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v4, "USERINFO_UID"

    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v4, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const-string v5, "res_code"

    const-string v6, "callback_times"

    const-string v7, "payCode"

    const-string v8, "raw_msg"

    const-string v9, "raw_code"

    const-string v10, "SkuDetailsResponseListener.onSkuDetailsResponse"

    const-string v11, "func"

    const-string v12, "GetProductInfo"

    const-string v13, "extraJson:"

    const-string v14, "step"

    if-eqz p2, :cond_8

    .line 396
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SkuDetails list size:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v8, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v7, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    invoke-virtual {v15}, Lcom/netease/ntunisdk/util/Count;->getTimes()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    const/16 v15, 0xc8

    invoke-virtual {v0, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_0
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v15, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 410
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    .line 411
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/billingclient/api/SkuDetails;

    .line 417
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    move-object/from16 p2, v2

    invoke-virtual {v15}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleplay;->access$300(Lcom/netease/ntunisdk/SdkGoogleplay;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v15}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v2, p2

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    .line 426
    :goto_3
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getChannelGoodsTypes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getChannelGoodsTypes()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/OrderInfo;->getChannelGoodsTypes()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 429
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "google play checkorder querySkuDetailsAsync, paycode:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",type:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v4, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    move-object/from16 p2, v15

    iget-object v15, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    move-object/from16 v17, v3

    const/4 v3, 0x7

    if-ne v3, v2, :cond_5

    const-string v2, "subs"

    goto :goto_5

    :cond_5
    const-string v2, "inapp"

    :goto_5
    invoke-static {v0, v4, v15, v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->access$100(Lcom/netease/ntunisdk/SdkGoogleplay;Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 433
    :try_start_1
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/util/Count;->getTimes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    const/16 v2, 0x191

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_6
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 444
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v2, "unsupported currency type"

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 445
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 446
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_6
    move-object/from16 v2, v17

    if-eqz p2, :cond_7

    .line 451
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleplay;->access$200(Lcom/netease/ntunisdk/SdkGoogleplay;)Lcom/netease/ntunisdk/util/BillingManager;

    move-result-object v0

    iget v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$displayCustomPrice:I

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, p2

    move-object/from16 v4, v16

    invoke-virtual {v0, v2, v4, v3, v15}, Lcom/netease/ntunisdk/util/BillingManager;->initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    goto/16 :goto_9

    .line 454
    :cond_7
    :try_start_2
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/util/Count;->getTimes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    const/16 v3, 0x192

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_7
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_8
    move-object v2, v3

    const-string v3, "querySkuDetailsAsync empty"

    .line 467
    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :try_start_3
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v14, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$payCode:Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$count:Lcom/netease/ntunisdk/util/Count;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/util/Count;->getTimes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    const/16 v4, 0x190

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_8
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 480
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 481
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v3, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$extraJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    .line 482
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, v1, Lcom/netease/ntunisdk/SdkGoogleplay$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    :goto_9
    return-void
.end method
