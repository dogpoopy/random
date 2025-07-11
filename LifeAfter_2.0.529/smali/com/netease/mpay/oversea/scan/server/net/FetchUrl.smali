.class public Lcom/netease/mpay/oversea/scan/server/net/FetchUrl;
.super Ljava/lang/Object;
.source "FetchUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;,
        Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlMethod;,
        Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchUrl(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;II)",
            "Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl;->getStackInstance()Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;->fetchUrl(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;

    move-result-object p0

    return-object p0
.end method

.method private static getStackInstance()Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;
    .locals 1

    .line 97
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlImpHurlStack;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlImpHurlStack;-><init>()V

    return-object v0
.end method

.method public static requestGetBody(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl;->getStackInstance()Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;->requestGetBody(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
