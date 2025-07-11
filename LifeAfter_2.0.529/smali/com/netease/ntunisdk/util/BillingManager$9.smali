.class Lcom/netease/ntunisdk/util/BillingManager$9;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$result:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->val$result:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->val$purchases:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$000(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->val$result:Lcom/android/billingclient/api/BillingResult;

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$9;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;->onQueryPurchasesAsyncFinished(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
