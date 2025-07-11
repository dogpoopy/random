.class public Lcom/netease/ntunisdk/util/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/util/BillingManager$ServiceConnectedListener;,
        Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;
    }
.end annotation


# static fields
.field private static final BASE_64_ENCODED_PUBLIC_KEY:Ljava/lang/String; = "CONSTRUCT_YOUR_KEY_AND_PLACE_IT_HERE"

.field public static final BILLING_MANAGER_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BillingManager"

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private mBillingClientResponseCode:I

.field private final mBillingUpdatesListener:Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

.field private mIsServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/util/BillingManager;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClientResponseCode:I

    const-string v0, "BillingManager"

    const-string v1, "Creating Billing client."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    .line 125
    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingUpdatesListener:Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    .line 126
    iget-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string p1, "Starting setup."

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Lcom/netease/ntunisdk/util/BillingManager$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/util/BillingManager$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/BillingManager;->startServiceConnection(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingUpdatesListener:Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager;->onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$402(Lcom/netease/ntunisdk/util/BillingManager;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClientResponseCode:I

    return p1
.end method

.method static synthetic access$502(Lcom/netease/ntunisdk/util/BillingManager;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/netease/ntunisdk/util/BillingManager;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$600()Ljava/util/concurrent/Executor;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/ntunisdk/util/BillingManager;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private executeServiceRequest(Ljava/lang/Runnable;)V
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    .line 496
    sget-object v0, Lcom/netease/ntunisdk/util/BillingManager;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/util/BillingManager;->startServiceConnection(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    return-void
.end method

.method private onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "BillingManager"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing client was null or result code ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") was bad - quitting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "Query inventory was successful."

    .line 382
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$9;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 314
    new-instance p2, Lcom/netease/ntunisdk/util/BillingManager$7;

    invoke-direct {p2, p0, p1}, Lcom/netease/ntunisdk/util/BillingManager$7;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$8;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 340
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public areProductDetailsSupported()Z
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "fff"

    .line 529
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "areProductDetailsSupported() responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public areSubscriptionsSupported()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areSubscriptionsSupported() responseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public consumeAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 269
    new-instance p2, Lcom/netease/ntunisdk/util/BillingManager$5;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/util/BillingManager$5;-><init>(Lcom/netease/ntunisdk/util/BillingManager;)V

    .line 284
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$6;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "BillingManager"

    const-string v1, "Destroying the manager."

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public getBillingClientResponseCode()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClientResponseCode:I

    return v0
.end method

.method public getBillingConfigAsync(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 1

    .line 613
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$14;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/util/BillingManager$14;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 637
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;I)V
    .locals 8

    .line 568
    new-instance v7, Lcom/netease/ntunisdk/util/BillingManager$13;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/util/BillingManager$13;-><init>(Lcom/netease/ntunisdk/util/BillingManager;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;ILjava/lang/String;)V

    .line 609
    invoke-direct {p0, v7}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/util/BillingManager;->initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    return-void
.end method

.method public initiatePurchaseFlow(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V
    .locals 8

    .line 189
    new-instance v7, Lcom/netease/ntunisdk/util/BillingManager$3;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/util/BillingManager$3;-><init>(Lcom/netease/ntunisdk/util/BillingManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    .line 210
    invoke-direct {p0, v7}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFeatureSupported(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "BillingManager"

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchasesUpdated() ok, purchases size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "onPurchasesUpdated() ok, purchases null"

    .line 163
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "onPurchasesUpdated() - user cancelled the purchase flow - skipping"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchasesUpdated() got unknown resultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$2;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryProductDetailsAsync(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/billingclient/api/ProductDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 539
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/netease/ntunisdk/util/BillingManager$12;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 564
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryPurchasesAsync()V
    .locals 1

    .line 419
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$10;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/util/BillingManager$10;-><init>(Lcom/netease/ntunisdk/util/BillingManager;)V

    .line 467
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/billingclient/api/SkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/netease/ntunisdk/util/BillingManager$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/netease/ntunisdk/util/BillingManager$4;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startServiceConnection(Ljava/lang/Runnable;)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$11;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/util/BillingManager$11;-><init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method
