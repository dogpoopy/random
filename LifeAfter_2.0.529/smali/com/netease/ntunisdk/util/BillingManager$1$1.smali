.class Lcom/netease/ntunisdk/util/BillingManager$1$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$1;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$1;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$1$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$1$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$1;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$000(Lcom/netease/ntunisdk/util/BillingManager;)Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/util/BillingManager$BillingUpdatesListener;->onBillingClientSetupFinished()V

    return-void
.end method
