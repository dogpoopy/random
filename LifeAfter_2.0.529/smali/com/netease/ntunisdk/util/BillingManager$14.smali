.class Lcom/netease/ntunisdk/util/BillingManager$14;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->getBillingConfigAsync(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;

.field final synthetic val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$14;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$14;->val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 617
    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->build()Lcom/android/billingclient/api/GetBillingConfigParams;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$14;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$14;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/netease/ntunisdk/util/BillingManager$14$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/util/BillingManager$14$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$14;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    :cond_0
    return-void
.end method
