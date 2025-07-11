.class public Lcom/netease/ntunisdk/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field mAccountId:Ljava/lang/String;

.field mAcknowledged:Z

.field mAutoRenewing:Z

.field mDeveloperPayload:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAcknowledged:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAutoRenewing:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAcknowledged:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAutoRenewing:Z

    .line 44
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mItemType:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "orderId"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mOrderId:Ljava/lang/String;

    const-string p2, "packageName"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mPackageName:Ljava/lang/String;

    const-string p2, "productId"

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mSku:Ljava/lang/String;

    const-string p2, "purchaseTime"

    .line 50
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseTime:J

    const-string p2, "purchaseState"

    .line 51
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseState:I

    const-string p2, "developerPayload"

    .line 52
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const-string p2, "purchaseToken"

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "token"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mToken:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/netease/ntunisdk/util/Purchase;->mSignature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAcknowledged()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAcknowledged:Z

    return v0
.end method

.method public isAutoRenewing()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/netease/ntunisdk/util/Purchase;->mAutoRenewing:Z

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public setAcknowledged(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mAcknowledged:Z

    return-void
.end method

.method public setAutoRenewing(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mAutoRenewing:Z

    return-void
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mItemType:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalJson(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mOriginalJson:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseState(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseState:I

    return-void
.end method

.method public setPurchaseTime(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mPurchaseTime:J

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mSku:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netease/ntunisdk/util/Purchase;->mToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/util/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
