.class public Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;
.super Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.source "QrConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private appid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/qrcode/config"

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;-><init>(ILjava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;->appid:Ljava/lang/String;

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

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;->appid:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/scan/Consts;->API_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;->apiSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "config"

    .line 37
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;-><init>()V

    const-string v0, "scan_domain_regex"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;->regex:Ljava/lang/String;

    return-object p2
.end method

.method protected bridge synthetic parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrConfigRequest;->parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrConfigResponse;

    move-result-object p1

    return-object p1
.end method
