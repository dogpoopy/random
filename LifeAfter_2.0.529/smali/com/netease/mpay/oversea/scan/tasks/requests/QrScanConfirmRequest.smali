.class public Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;
.super Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.source "QrScanConfirmRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest<",
        "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final confirmData:Ljava/lang/String;

.field private final isRemember:Z

.field private final scene:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;-><init>(ILjava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->uuid:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->url:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->confirmData:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->isRemember:Z

    .line 36
    iput-object p5, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->scene:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->confirmData:Ljava/lang/String;

    const-string v2, "confirm_data"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->isRemember:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "is_remember"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->scene:Ljava/lang/String;

    const-string v2, "scene"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "redirect_url"

    .line 53
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method protected bridge synthetic parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    move-result-object p1

    return-object p1
.end method
