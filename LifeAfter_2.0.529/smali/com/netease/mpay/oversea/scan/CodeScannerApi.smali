.class public Lcom/netease/mpay/oversea/scan/CodeScannerApi;
.super Ljava/lang/Object;
.source "CodeScannerApi.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->mActivity:Landroid/app/Activity;

    .line 29
    sput-object p2, Lcom/netease/mpay/oversea/scan/Consts;->LOGIN_CHANNEL:Ljava/lang/String;

    .line 30
    sput-object p3, Lcom/netease/mpay/oversea/scan/Consts;->APP_CHANNEL:Ljava/lang/String;

    .line 31
    sput-object p4, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    .line 32
    sput-object p5, Lcom/netease/mpay/oversea/scan/Consts;->UDID:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    sget-object p2, Lcom/netease/mpay/oversea/scan/Consts;->UDID:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/UDIDLib;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->UDID:Ljava/lang/String;

    :cond_0
    if-eqz p6, :cond_1

    .line 39
    sput-object p6, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    :cond_1
    return-void
.end method


# virtual methods
.method public confirmPay(Lcom/netease/mpay/oversea/scan/PayStatus;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/PayConfirmCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/PayStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/oversea/scan/PayConfirmCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    .line 88
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->QRCODE_UUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->CONFIRM_PAY_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/PayStatus;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "status"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    new-instance p1, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/oversea/scan/Consts;->QRCODE_UUID:Ljava/lang/String;

    sget-object v3, Lcom/netease/mpay/oversea/scan/Consts;->CONFIRM_PAY_URL:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;

    invoke-direct {v5, p0, p3}, Lcom/netease/mpay/oversea/scan/CodeScannerApi$1;-><init>(Lcom/netease/mpay/oversea/scan/CodeScannerApi;Lcom/netease/mpay/oversea/scan/PayConfirmCallback;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 114
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->execute()V

    return-void

    .line 89
    :cond_1
    :goto_0
    invoke-interface {p3}, Lcom/netease/mpay/oversea/scan/PayConfirmCallback;->onFailure()V

    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The payStatus is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The ScannerCallback is null!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The activity is null or is finishing!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handlerQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/ScannerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/oversea/scan/ScannerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 55
    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->handlerQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/ScannerCallback;Lcom/netease/mpay/oversea/scan/ScannerOptions;Z)V

    return-void
.end method

.method public handlerQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/ScannerCallback;Lcom/netease/mpay/oversea/scan/ScannerOptions;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/oversea/scan/ScannerCallback;",
            "Lcom/netease/mpay/oversea/scan/ScannerOptions;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 71
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->enqueue(Lcom/netease/mpay/oversea/scan/ScannerCallback;)I

    move-result p5

    const-string v0, "user_id"

    .line 72
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "session"

    .line 73
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_0

    const-string p2, "game_auth"

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object p7, p2

    .line 75
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->mActivity:Landroid/app/Activity;

    .line 77
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->getInstance()Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/netease/mpay/oversea/scan/ScannerCallbacksManager;->enqueue(Lcom/netease/mpay/oversea/scan/ScannerOptions;)I

    move-result p6

    move-object p3, p1

    move-object p4, p7

    move-object p7, v0

    .line 76
    invoke-static/range {p2 .. p7}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The session is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The uid is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The ScannerCallback is null!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Error!!! The activity is null or is finishing!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLanguage(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    sput-object p1, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const/4 p1, 0x1

    return p1
.end method
