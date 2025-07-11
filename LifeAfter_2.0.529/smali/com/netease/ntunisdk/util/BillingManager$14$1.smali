.class Lcom/netease/ntunisdk/util/BillingManager$14$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingConfigResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$14;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$14;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$14;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$14;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$14;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$14;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$14$1;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
