.class Lcom/netease/ntunisdk/util/BillingManager$6;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$onConsumeListener:Lcom/android/billingclient/api/ConsumeResponseListener;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->val$purchaseToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->val$onConsumeListener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->val$purchaseToken:Ljava/lang/String;

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/util/BillingManager;->access$200(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/util/BillingManager$6;->val$onConsumeListener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method
