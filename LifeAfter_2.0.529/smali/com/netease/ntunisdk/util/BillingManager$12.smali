.class Lcom/netease/ntunisdk/util/BillingManager$12;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->queryProductDetailsAsync(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$itemType:Ljava/lang/String;

.field final synthetic val$listener:Lcom/android/billingclient/api/ProductDetailsResponseListener;

.field final synthetic val$skuList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->val$skuList:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->val$itemType:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->val$listener:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->val$skuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->val$itemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    .line 548
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$12;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/util/BillingManager$12$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/util/BillingManager$12$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$12;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method
