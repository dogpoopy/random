.class Lcom/netease/ntunisdk/util/BillingManager$5$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$5;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$5;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$5;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$5;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->val$purchaseToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$5;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$5;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$000(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->val$purchaseToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$5$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;->onConsumeFinished(Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
