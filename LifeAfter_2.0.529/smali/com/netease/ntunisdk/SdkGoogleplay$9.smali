.class Lcom/netease/ntunisdk/SdkGoogleplay$9;
.super Ljava/lang/Object;
.source "SdkGoogleplay.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/JfGas$QueryProductCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleplay;->onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

.field final synthetic val$mExtraJson:Lorg/json/JSONObject;

.field final synthetic val$mP:Lcom/netease/ntunisdk/util/Purchase;

.field final synthetic val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleplay;Lcom/netease/ntunisdk/util/Purchase;Lcom/netease/ntunisdk/base/OrderInfo;Lorg/json/JSONObject;)V
    .locals 0

    .line 1985
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mP:Lcom/netease/ntunisdk/util/Purchase;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-object p4, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackResult()V
    .locals 9

    const-string v0, "UniSDK Googleplay"

    const-string v1, "check reg product id on callbackResult"

    .line 1989
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v1

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mP.getSku()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mP:Lcom/netease/ntunisdk/util/Purchase;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pList.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mP:Lcom/netease/ntunisdk/util/Purchase;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1993
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1994
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1996
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1997
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    .line 1998
    iget-object v5, v5, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    .line 1999
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "regPid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "sdkPids="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    .line 2000
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2001
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdkPids length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2003
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/SdkGoogleplay;->getChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mP:Lcom/netease/ntunisdk/util/Purchase;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check reg product id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setProductId(Ljava/lang/String;)V

    .line 2018
    :cond_4
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mP:Lcom/netease/ntunisdk/util/Purchase;

    iget-object v4, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3, v4}, Lcom/netease/ntunisdk/SdkGoogleplay;->access$900(Lcom/netease/ntunisdk/SdkGoogleplay;Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/util/Purchase;Lorg/json/JSONObject;)V

    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    const-string v2, "step"

    const-string v3, "QueryInventoryFinishedListener"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2021
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    const-string v2, "func"

    const-string v3, "QueryProductCallback.callbackResult"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2022
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    const-string v2, "res_code"

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 2024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraJson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :goto_2
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$9;->val$mExtraJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method
