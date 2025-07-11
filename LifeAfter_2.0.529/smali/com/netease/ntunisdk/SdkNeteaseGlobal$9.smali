.class Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;
.super Ljava/lang/Object;
.source "SdkNeteaseGlobal.java"

# interfaces
.implements Lcom/netease/mpay/oversea/OnLVUCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseGlobal;->extendFunc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

.field final synthetic val$info:Lcom/netease/ntunisdk/base/OrderInfo;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseGlobal;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 1284
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->val$info:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0

    const-string p1, "UniSDK netease_global"

    const-string p2, "openLVU: failed"

    .line 1287
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->val$info:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1289
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->val$info:Lcom/netease/ntunisdk/base/OrderInfo;

    const-string p2, "need set birthday"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 1290
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->this$0:Lcom/netease/ntunisdk/SdkNeteaseGlobal;

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->val$info:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseGlobal;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "UniSDK netease_global"

    const-string p2, "openLVU[onSuccess]:start to creatOrder"

    .line 1295
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    new-instance p1, Lcom/netease/ntunisdk/base/JfGas;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/base/JfGas;-><init>(Lcom/netease/ntunisdk/base/SdkBase;)V

    iget-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseGlobal$9;->val$info:Lcom/netease/ntunisdk/base/OrderInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/netease/ntunisdk/base/JfGas;->createOrder(Lcom/netease/ntunisdk/base/OrderInfo;Lcom/netease/ntunisdk/base/JfGas$CreateOrderCallback;)V

    return-void
.end method
