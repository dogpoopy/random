.class public interface abstract Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;
.super Ljava/lang/Object;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/util/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingUpdatesListener"
.end annotation


# virtual methods
.method public abstract onAcknowledgePurchaseFinished(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
.end method

.method public abstract onBillingClientSetupFinished()V
.end method

.method public abstract onConsumeFinished(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
.end method

.method public abstract onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method
