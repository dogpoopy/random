.class Lcom/netease/ntunisdk/util/BillingManager$14$1$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$14$1;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/ntunisdk/util/BillingManager$14$1;

.field final synthetic val$billingConfig:Lcom/android/billingclient/api/BillingConfig;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$14$1;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->this$2:Lcom/netease/ntunisdk/util/BillingManager$14$1;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->val$billingConfig:Lcom/android/billingclient/api/BillingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->this$2:Lcom/netease/ntunisdk/util/BillingManager$14$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$14$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$14;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$14;->val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$14$1$1;->val$billingConfig:Lcom/android/billingclient/api/BillingConfig;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method
