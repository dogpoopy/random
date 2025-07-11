.class public Lcom/netease/ntunisdk/base/model/SdkOrder;
.super Lcom/netease/ntunisdk/base/model/SdkState;
.source "SdkOrder.java"


# instance fields
.field public amount:D

.field public channel:Ljava/lang/String;

.field public consumesn:Ljava/lang/String;

.field public cp_orderid:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public ext_info:Ljava/lang/String;

.field public goodscount:I

.field public goodsid:Ljava/lang/String;

.field public goodsinfo:Ljava/lang/String;

.field public price:D

.field public ratio:D

.field public sn:Ljava/lang/String;

.field public yuanbao:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fromJson(Lorg/json/JSONObject;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->fromJson(Lorg/json/JSONObject;)V

    const-string v0, "sn"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->sn:Ljava/lang/String;

    const-string v0, "consumesn"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->consumesn:Ljava/lang/String;

    const-string v0, "goodsid"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    const-string v0, "goodscount"

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodscount:I

    const-string v0, "goodsinfo"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    const-string v0, "price"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    const-string v0, "amount"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->amount:D

    const-string v0, "desc"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->desc:Ljava/lang/String;

    const-string v0, "channel"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->channel:Ljava/lang/String;

    :cond_0
    const-string v0, "cp_orderid"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    const-string v0, "currency"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    const-string v0, "yuanbao"

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->yuanbao:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "ratio"

    .line 54
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ratio:D

    const-string v0, "ext_info"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ext_info:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 154
    invoke-super {p0}, Lcom/netease/ntunisdk/base/model/SdkState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "sn"

    .line 157
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "consumesn"

    .line 158
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->consumesn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "goodsid"

    .line 159
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "goodscount"

    .line 160
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodscount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "goodsinfo"

    .line 161
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 162
    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "amount"

    .line 163
    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->amount:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    .line 164
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 165
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cp_orderid"

    .line 166
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 167
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "yuanbao"

    .line 168
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->yuanbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ratio"

    .line 169
    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ratio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext_info"

    .line 170
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ext_info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 173
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public wrapFrom(Ljava/lang/Object;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/model/SdkState;->wrapFrom(Ljava/lang/Object;)V

    .line 99
    instance-of v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;

    if-eqz v0, :cond_4

    .line 100
    check-cast p1, Lcom/netease/ntunisdk/base/OrderInfo;

    .line 101
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->sn:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->consumesn:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodscount:I

    .line 105
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    .line 108
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->desc:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCurOrderChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->channel:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductExchangeRatio()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ratio:D

    .line 113
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJfExtInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ext_info:Ljava/lang/String;

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getExtendJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "yuanbao"

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->yuanbao:I

    const-string v1, "amount"

    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->amount:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 145
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->code:I

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->c:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 140
    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->c:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->code:I

    goto :goto_1

    .line 126
    :cond_2
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 127
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->code:I

    goto :goto_1

    .line 131
    :cond_3
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->f:Lcom/netease/ntunisdk/base/constant/a;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 132
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->f:Lcom/netease/ntunisdk/base/constant/a;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->code:I

    .line 148
    :goto_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "UNISDK_FF_CHANNEL_RAW_CODE"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->subcode:I

    :cond_4
    return-void
.end method

.method public wrapTo()Ljava/lang/Object;
    .locals 5

    .line 61
    invoke-super {p0}, Lcom/netease/ntunisdk/base/model/SdkState;->wrapTo()Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ratio:D

    double-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cp_orderid"

    .line 67
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "goodsinfo"

    .line 68
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsinfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 70
    iget-wide v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->price:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "yuanbao"

    .line 71
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->yuanbao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 72
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CNY"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :goto_1
    new-instance v1, Lcom/netease/ntunisdk/base/OrderInfo;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodsid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->sn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->sn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->consumesn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->consumesn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setSdkOrderId(Ljava/lang/String;)V

    .line 85
    :cond_2
    iget v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->goodscount:I

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 86
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderChannel(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderCurrency(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->ext_info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setJfExtInfo(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/netease/ntunisdk/base/model/SdkOrder;->cp_orderid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setExtendJson(Ljava/lang/String;)V

    return-object v1
.end method
