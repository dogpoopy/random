.class Lcom/netease/ntunisdk/SdkGoogleplay$6;
.super Ljava/lang/Object;
.source "SdkGoogleplay.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleplay;->giftcardGas3CreateOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

.field final synthetic val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleplay;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackResult(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    .line 1360
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 1361
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xc8

    if-ne v2, p1, :cond_0

    const-string p1, "sn"

    .line 1363
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1364
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1367
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "promo codes createorder fail, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promo codes createorder fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UniSDK Googleplay"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1372
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string v0, "promo codes createorder throw exception"

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1375
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->this$0:Lcom/netease/ntunisdk/SdkGoogleplay;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleplay$6;->val$orderInfo:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleplay;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method
