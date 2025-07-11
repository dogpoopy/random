.class public Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;
.super Ljava/lang/Object;
.source "ServerApi.java"


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
.field private mActivity:Landroid/app/Activity;

.field private mGameId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mActivity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mGameId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/netease/mpay/oversea/scan/server/modules/request/Request;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/server/modules/request/Request<",
            "TResponse;>;)TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->getMethod()I

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mActivity:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->createHeaders(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mGameId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v3, v4}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->createQueryDatas(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mActivity:Landroid/app/Activity;

    .line 30
    invoke-virtual {p1, v4}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->createDatas(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/scan/server/net/NetConsts;->NETWORK_CONNECTION_TIMEOUT:I

    sget v6, Lcom/netease/mpay/oversea/scan/server/net/NetConsts;->NETWORK_SOCKET_TIMEOUT:I

    .line 25
    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl;->fetchUrl(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/scan/server/modules/request/Request;->parseResp(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;

    new-instance v1, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;

    .line 36
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;->getCode()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException$ApiNetworkException;-><init>(Lcom/netease/mpay/oversea/scan/server/modules/ApiError;)V

    throw v0
.end method
