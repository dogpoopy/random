.class Lcom/netease/ntunisdk/base/SDKManager$4;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->setOrderCallback(Lcom/netease/ntunisdk/base/callback/OrderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKManager;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$4;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$4;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$300(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/OrderCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkOrder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkOrder;-><init>()V

    .line 322
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkOrder;->wrapFrom(Ljava/lang/Object;)V

    .line 325
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$4;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$300(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/OrderCallback;

    move-result-object p1

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkOrder;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkOrder;->message:Ljava/lang/String;

    .line 326
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkOrder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/OrderCallback;->onOrderPurchased(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method
