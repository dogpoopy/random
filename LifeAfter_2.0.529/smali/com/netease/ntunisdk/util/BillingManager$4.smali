.class Lcom/netease/ntunisdk/util/BillingManager$4;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$itemType:Ljava/lang/String;

.field final synthetic val$listener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field final synthetic val$skuList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->val$skuList:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->val$itemType:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->val$listener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->val$skuList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->val$itemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 238
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$4;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/util/BillingManager$4$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/util/BillingManager$4$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$4;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
