.class public abstract Lcom/netease/mpay/oversea/scan/server/modules/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected apiSuffix:Ljava/lang/String;

.field protected method:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->method:I

    .line 30
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->apiSuffix:Ljava/lang/String;

    return-void
.end method

.method protected static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected static optInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 143
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static optInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected static optJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method protected static optJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected static optLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 155
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static optLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 0

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static optString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
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

    .line 67
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->getDatas(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public abstract createHeaders(Landroid/content/Context;)Ljava/util/HashMap;
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
.end method

.method public abstract createQueryDatas(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public filterApiError(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->filterApiError(Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterApiError(Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 99
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;

    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>()V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;-><init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    throw p1
.end method

.method protected abstract getDatas(Landroid/content/Context;)Ljava/util/ArrayList;
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
.end method

.method protected getLocale()Ljava/lang/String;
    .locals 5

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "zh-cn"

    if-nez v0, :cond_0

    return-object v1

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getMethod()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->method:I

    return v0
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method protected parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseResp(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;",
            ")TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>()V

    const/16 v1, 0x2714

    .line 76
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->filterApiError(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v2, Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->content:[B

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    .line 82
    :cond_0
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 86
    :catch_0
    iput v1, v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    goto :goto_0

    .line 84
    :catch_1
    iput v1, v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->code:I

    .line 88
    :goto_0
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;-><init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    throw p1
.end method
