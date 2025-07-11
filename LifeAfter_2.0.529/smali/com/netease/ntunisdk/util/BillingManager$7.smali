.class Lcom/netease/ntunisdk/util/BillingManager$7;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$7;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$7;->val$purchaseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$7;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$7$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/util/BillingManager$7$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$7;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
