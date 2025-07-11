.class public Lcom/netease/ntunisdk/base/SkuDetailsInfo;
.super Ljava/lang/Object;
.source "SkuDetailsInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->d:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->e:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->f:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public static obj2Json(Lcom/netease/ntunisdk/base/SkuDetailsInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "productId"

    .line 36
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 37
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 38
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priceAmountMicros"

    .line 39
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getPriceAmountMicros()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priceCurrencyCode"

    .line 40
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 41
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 42
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "UniSDK SkuDetailsInfo"

    const-string v2, "obj2Json error"

    .line 44
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setPriceAmountMicros(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->f:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->g:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Skudetails: productId:%s, price:%s, priceAmountMicros:%s, priceCurrencyCode:%s, title:%s, description:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
