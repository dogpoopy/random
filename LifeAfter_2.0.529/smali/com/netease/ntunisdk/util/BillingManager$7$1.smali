.class Lcom/netease/ntunisdk/util/BillingManager$7$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$7;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$7;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$7;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$7$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$7;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$7$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$7$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$7;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$7;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$000(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$7$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$7;

    iget-object v1, v1, Lcom/netease/ntunisdk/util/BillingManager$7;->val$purchaseToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$7$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;->onAcknowledgePurchaseFinished(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
