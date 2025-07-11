.class Lcom/netease/ntunisdk/util/BillingManager$13;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;I)V
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

.field final synthetic val$productDetails:Lcom/android/billingclient/api/ProductDetails;

.field final synthetic val$selectedOfferIndex:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;ILjava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput p2, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$displayCustomPrice:I

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    iput p5, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$selectedOfferIndex:I

    iput-object p6, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$developerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 572
    iget v0, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$displayCustomPrice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    iget-object v3, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$accountId:Ljava/lang/String;

    invoke-static {v3}, Lcom/netease/ntunisdk/util/BillingUtils;->md5Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountId md5 encrypt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BillingManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object v6, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "subs"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 581
    iget-object v6, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$selectedOfferIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    if-eqz v6, :cond_1

    .line 583
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 584
    invoke-virtual {v1, v7}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 585
    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 583
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 592
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 593
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 592
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->val$developerId:Ljava/lang/String;

    .line 599
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 600
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$13;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v2}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBillingClient.launchBillingFlow code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
