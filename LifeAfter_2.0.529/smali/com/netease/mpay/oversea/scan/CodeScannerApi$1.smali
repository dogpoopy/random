.class Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;
.super Ljava/lang/Object;
.source "CodeScannerApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/CodeScannerApi;->confirmPay(Lcom/netease/mpay/oversea/scan/PayStatus;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/PayConfirmCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/CodeScannerApi;

.field final synthetic val$callback:Lcom/netease/mpay/oversea/scan/PayConfirmCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/CodeScannerApi;Lcom/netease/mpay/oversea/scan/PayConfirmCallback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->this$0:Lcom/netease/mpay/oversea/scan/CodeScannerApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->val$callback:Lcom/netease/mpay/oversea/scan/PayConfirmCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/ErrCode;->isNeedRetry(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 107
    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->QRCODE_UUID:Ljava/lang/String;

    .line 108
    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->CONFIRM_PAY_URL:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->val$callback:Lcom/netease/mpay/oversea/scan/PayConfirmCallback;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/PayConfirmCallback;->onSuccess()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->val$callback:Lcom/netease/mpay/oversea/scan/PayConfirmCallback;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/PayConfirmCallback;->onFailure()V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V
    .locals 0

    const/4 p1, 0x0

    .line 98
    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->QRCODE_UUID:Ljava/lang/String;

    .line 99
    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->CONFIRM_PAY_URL:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->val$callback:Lcom/netease/mpay/oversea/scan/PayConfirmCallback;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/scan/PayConfirmCallback;->onSuccess()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;->onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V

    return-void
.end method
