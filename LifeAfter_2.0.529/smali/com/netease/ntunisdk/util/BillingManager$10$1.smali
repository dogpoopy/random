.class Lcom/netease/ntunisdk/util/BillingManager$10$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$10;J)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iput-wide p2, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->val$time:J

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

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying subs purchases elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->val$time:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$10;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/util/BillingManager;->areSubscriptionsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iget-object v1, v1, Lcom/netease/ntunisdk/util/BillingManager$10;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/ntunisdk/util/BillingManager$10$1$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$10$1;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Skipped subscription purchases query since they are not supported"

    .line 456
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$10;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager;->access$300(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPurchases() got an error response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$10$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$10;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$10;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager;->access$300(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :goto_0
    return-void
.end method
