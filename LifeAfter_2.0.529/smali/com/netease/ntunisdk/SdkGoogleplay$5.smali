.class Lcom/netease/ntunisdk/SdkGoogleplay$5;
.super Ljava/lang/Object;
.source "SdkGoogleplay.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingConfigResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleplay;->getBillingConfigAsync(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

.field final synthetic val$fromExtendFunc:Z

.field final synthetic val$obj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleplay;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$fromExtendFunc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 8

    const-string v0, "countryCode"

    const-string v1, "errorMsg"

    const-string v2, "errorCode"

    const-string v3, ""

    const/4 v4, 0x1

    .line 1301
    :try_start_0
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    const-string v6, "respCode"

    sget-object v7, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/util/GoogleplayCode;->getCode()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1302
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    const-string v6, "respMsg"

    sget-object v7, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/util/GoogleplayCode;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1303
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 1305
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 1306
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1307
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    sget-object v5, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/util/GoogleplayCode;->getCode()I

    move-result v5

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1308
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    sget-object v5, Lcom/netease/ntunisdk/util/GoogleplayCode;->SUCCESS:Lcom/netease/ntunisdk/util/GoogleplayCode;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/util/GoogleplayCode;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1310
    :cond_0
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1311
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "billingResult = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; billingConfig = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1314
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1316
    :try_start_1
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 1321
    :goto_0
    iget-boolean p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$fromExtendFunc:Z

    if-eqz p2, :cond_1

    .line 1322
    iget-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/netease/ntunisdk/SdkGoogleplay;->extendFuncCall(Ljava/lang/String;)V

    .line 1325
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, "step"

    const-string v2, "getBillingConfigAsync"

    .line 1327
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "func"

    .line 1328
    iget-boolean v2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->val$fromExtendFunc:Z

    if-eqz v2, :cond_2

    const-string v2, "fromExtendFunc"

    goto :goto_1

    :cond_2
    const-string v2, "onBillingClientSetupFinished"

    :goto_1
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1329
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "raw_code"

    .line 1330
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "raw_msg"

    .line 1331
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "res_code"

    const/16 v0, 0xc8

    .line 1332
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extraJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK Googleplay"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/netease/ntunisdk/SdkGoogleplay;->saveClientLog(Lcom/netease/ntunisdk/base/OrderInfo;Ljava/lang/String;)V

    return-void
.end method
