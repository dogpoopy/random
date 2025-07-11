.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/PaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$order:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentFinish(I)V
    .locals 7

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaymentFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK netease_global"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, ""

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 637
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 640
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "func"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "PaymentCallback.onPaymentFinish"

    aput-object v6, v4, v5

    const-string v5, "step"

    aput-object v5, v4, v1

    const-string v1, "checkOrderDone"

    aput-object v1, v4, v2

    const/4 v1, 0x4

    const-string v2, "unisdk_code"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    .line 643
    invoke-virtual {v5}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    const-string v2, "raw_code"

    aput-object v2, v4, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 640
    invoke-static {v0, v4}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->access$1100(Lcom/netease/ntunisdk/SdkNeteaseGlobal;[Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$2;->val$order:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method
