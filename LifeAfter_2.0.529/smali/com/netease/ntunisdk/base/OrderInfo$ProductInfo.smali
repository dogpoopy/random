.class public Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/OrderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductInfo"
.end annotation


# instance fields
.field public channelGoodsTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public currencyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public defaultInfoJson:Ljava/lang/String;

.field public exchangeRatio:I

.field public extraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public free_yuanbaoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public goldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public goodsinfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jellRatios:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public jellyExtra:Ljava/lang/String;

.field public payChannel:Ljava/lang/String;

.field public pay_yuanbaoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public priceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public productId:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public productPrice:F

.field public ratioMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public sdkPids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->currencyMap:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goldMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goodsinfoMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->ratioMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->priceMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->pay_yuanbaoMap:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->free_yuanbaoMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->extraMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public copy()Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
    .locals 3

    .line 114
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    .line 117
    iget v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    iput v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    .line 118
    iget v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->exchangeRatio:I

    iput v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->exchangeRatio:I

    .line 119
    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellyExtra:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellyExtra:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->defaultInfoJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->defaultInfoJson:Ljava/lang/String;

    .line 122
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->currencyMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->currencyMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goldMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goldMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goodsinfoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goodsinfoMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->ratioMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->ratioMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->priceMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->priceMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->pay_yuanbaoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->pay_yuanbaoMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 131
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->free_yuanbaoMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->free_yuanbaoMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    iget-object v1, v0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->extraMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->extraMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductInfo{productId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", productName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", productPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->productPrice:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", exchangeRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->exchangeRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sdkPids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", channelGoodsTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->channelGoodsTypes:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", jellRatios="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellRatios:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", jellyExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->jellyExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", payChannel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currencyMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->currencyMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", goldMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goldMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", goodsinfoMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->goodsinfoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ratioMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->ratioMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", priceMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->priceMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pay_yuanbaoMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->pay_yuanbaoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", free_yuanbaoMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->free_yuanbaoMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extraMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->extraMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultInfoJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->defaultInfoJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
