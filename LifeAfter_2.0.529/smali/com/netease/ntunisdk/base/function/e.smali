.class public final Lcom/netease/ntunisdk/base/function/e;
.super Ljava/lang/Object;
.source "IapOrder.java"


# direct methods
.method public static a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    .line 19
    new-instance v1, Lcom/netease/ntunisdk/base/function/e$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/netease/ntunisdk/base/function/e$1;-><init>(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/JfGas;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/ntunisdk/base/JfGas;->createOrder(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;)V

    return-void
.end method
