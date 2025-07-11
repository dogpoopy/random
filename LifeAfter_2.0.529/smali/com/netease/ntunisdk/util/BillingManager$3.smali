.class Lcom/netease/ntunisdk/util/BillingManager$3;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$developerId:Ljava/lang/String;

.field final synthetic val$displayCustomPrice:I

.field final synthetic val$oldSku:Ljava/lang/String;

.field final synthetic val$skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput p2, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$displayCustomPrice:I

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$oldSku:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$accountId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$developerId:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$skuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 193
    iget v0, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$displayCustomPrice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching in-app purchase flow. Replace old SKU? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$oldSku:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$accountId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingUtils;->md5Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId md5 encrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$developerId:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->val$skuDetails:Lcom/android/billingclient/api/SkuDetails;

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/ntunisdk/util/BillingManager$3;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v3}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBillingClient.launchBillingFlow code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
