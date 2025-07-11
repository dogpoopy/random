.class public abstract Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.super Lcom/netease/mpay/oversea/scan/server/modules/request/Request;
.source "ScannerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/mpay/oversea/scan/server/modules/request/Request<",
        "TResponse;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createHeaders(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    const-string v1, "/"

    const-string v2, "User-agent"

    .line 38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-loginType"

    const-string v5, "application/x-www-form-urlencoded"

    .line 39
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->getLocale()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Accept-Language"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v4, "NetEaseQRScanner"

    const-string v5, "a1.7.1"

    .line 45
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->getInstance(Landroid/content/Context;)Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->getInstance(Landroid/content/Context;)Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest$AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x32

    if-le v5, v8, :cond_0

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NetEaseQRScanner/a1.7.1"

    .line 53
    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v3
.end method

.method public createQueryDatas(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    const-string v0, "cp"

    const-string v1, "a"

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    const-string v0, "cv"

    const-string v1, "1.7.1"

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getTimeZone()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    const-string v1, "time_zone"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    invoke-static {}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getTimeOffset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_offset"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    .line 69
    invoke-static {}, Lcom/netease/mpay/oversea/scan/ScannerUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p2, Lcom/netease/mpay/oversea/scan/Consts;->LOGIN_CHANNEL:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 71
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->LOGIN_CHANNEL:Ljava/lang/String;

    const-string v1, "login_channel"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    sget-object p2, Lcom/netease/mpay/oversea/scan/Consts;->APP_CHANNEL:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 74
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->APP_CHANNEL:Ljava/lang/String;

    const-string v1, "app_channel"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    sget-object p2, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 77
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    const-string v1, "app_id"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->UDID:Ljava/lang/String;

    const-string v1, "ci"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected filterApiError(Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>()V

    const/16 v1, 0x2714

    .line 123
    :try_start_0
    new-instance v2, Lorg/json/JSONTokener;

    new-instance v3, Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->content:[B

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 125
    new-instance v9, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    const-string v2, "code"

    invoke-static {p1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v2, "msg"

    .line 126
    invoke-static {p1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "alert_type"

    const/4 v5, -0x1

    .line 127
    invoke-static {p1, v2, v5}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/scan/server/modules/AlertType;->convert(I)Lcom/netease/mpay/oversea/scan/server/modules/AlertType;

    move-result-object v5

    const-string v2, "help_url"

    .line 128
    invoke-static {p1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "verify_url"

    .line 129
    invoke-static {p1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/scan/server/modules/AlertType;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget p1, v9, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_0

    return-void

    :catch_0
    move-object v9, v0

    .line 137
    :catch_1
    iput v1, v9, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    goto :goto_0

    :catch_2
    move-object v9, v0

    .line 135
    :catch_3
    iput v1, v9, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    goto :goto_0

    :catch_4
    move-object v9, v0

    .line 133
    :catch_5
    iput v1, v9, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    .line 139
    :cond_0
    :goto_0
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;

    invoke-direct {p1, v9}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;-><init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    throw p1
.end method
