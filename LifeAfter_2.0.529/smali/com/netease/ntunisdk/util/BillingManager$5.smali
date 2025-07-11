.class Lcom/netease/ntunisdk/util/BillingManager$5;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager;->consumeAsync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/util/BillingManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$5;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$5;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$5$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/ntunisdk/util/BillingManager$5$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$5;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
