.class Lcom/netease/ntunisdk/util/BillingManager$10$1$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$10$1;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/ntunisdk/util/BillingManager$10$1;

.field final synthetic val$inAppBillingResult:Lcom/android/billingclient/api/BillingResult;

.field final synthetic val$inAppList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$10$1;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->this$2:Lcom/netease/ntunisdk/util/BillingManager$10$1;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->val$inAppList:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->val$inAppBillingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying purchases and subscriptions elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->this$2:Lcom/netease/ntunisdk/util/BillingManager$10$1;

    iget-wide v3, v3, Lcom/netease/ntunisdk/util/BillingManager$10$1;->val$time:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying subscriptions result code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying subscriptionResult size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 443
    iget-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->val$inAppList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 445
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, p1

    goto :goto_0

    :cond_1
    const-string p1, "Got an error response trying to query subscription purchases"

    .line 450
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 452
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->this$2:Lcom/netease/ntunisdk/util/BillingManager$10$1;

    iget-object p1, p1, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iget-object p1, p1, Lcom/netease/ntunisdk/util/BillingManager$10;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;->val$inAppBillingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p1, v0, p2}, Lcom/netease/ntunisdk/util/BillingManager;->access$300(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
