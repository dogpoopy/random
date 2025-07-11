.class public abstract Lcom/netease/ntunisdk/core/model/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/core/model/Request;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    return-void
.end method


# virtual methods
.method public createData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract createHeaders()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public createJSONData()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createQueries()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/core/network/KeyValuePair;",
            ">;"
        }
    .end annotation
.end method

.method protected createXSignHandler()Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->prepareFetch()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->isJSON()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlRequest;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->getMethod()Lcom/netease/ntunisdk/core/network/UrlMethod;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createHeaders()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createQueries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createJSONData()Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/core/network/UrlRequest;-><init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlRequest;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->getMethod()Lcom/netease/ntunisdk/core/network/UrlMethod;

    move-result-object v8

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createHeaders()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createQueries()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createData()Ljava/util/ArrayList;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/netease/ntunisdk/core/network/UrlRequest;-><init>(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/core/model/Request;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/core/network/UrlRequest;->setResolveDnsResult(Lcom/netease/ntunisdk/core/network/ResolveDnsResult;)Lcom/netease/ntunisdk/core/network/UrlRequest;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->createXSignHandler()Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/core/network/UrlRequest;->handleXSign(Lcom/netease/ntunisdk/core/network/UrlRequest$XSignHandler;)V

    :cond_1
    invoke-static {v0}, Lcom/netease/ntunisdk/core/network/FetchUrl;->fetchUrl(Lcom/netease/ntunisdk/core/network/UrlRequest;)Lcom/netease/ntunisdk/core/network/UrlResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/core/model/Request;->parseResponse(Lcom/netease/ntunisdk/core/network/UrlResponse;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/netease/ntunisdk/core/network/UrlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/netease/ntunisdk/core/model/ApiCallException$ApiNetworkException;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/core/model/Request;->getNetWorkError()Lcom/netease/ntunisdk/core/model/ApiError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/core/model/ApiCallException$ApiNetworkException;-><init>(Lcom/netease/ntunisdk/core/model/ApiError;)V

    throw v0
.end method

.method public abstract getMethod()Lcom/netease/ntunisdk/core/network/UrlMethod;
.end method

.method protected getNetWorkError()Lcom/netease/ntunisdk/core/model/ApiError;
    .locals 3

    new-instance v0, Lcom/netease/ntunisdk/core/model/ApiError;

    const/16 v1, 0x2714

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/core/model/ApiError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isJSON()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract parseResponse(Lcom/netease/ntunisdk/core/network/UrlResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/network/UrlResponse;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract prepareFetch()V
.end method

.method public setResolveDnsResult(Lcom/netease/ntunisdk/core/network/ResolveDnsResult;)Lcom/netease/ntunisdk/core/model/Request;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/model/Request;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    return-object p0
.end method
