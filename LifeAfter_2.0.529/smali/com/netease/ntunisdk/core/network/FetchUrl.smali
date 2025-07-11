.class public Lcom/netease/ntunisdk/core/network/FetchUrl;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchUrl(Lcom/netease/ntunisdk/core/network/UrlRequest;)Lcom/netease/ntunisdk/core/network/UrlResponse;
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlClient;

    invoke-direct {v0}, Lcom/netease/ntunisdk/core/network/UrlClient;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/core/network/UrlClient;->fetch(Lcom/netease/ntunisdk/core/network/UrlRequest;)Lcom/netease/ntunisdk/core/network/UrlResponse;

    move-result-object p0

    return-object p0
.end method
