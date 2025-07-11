.class public abstract Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;
.super Ljava/lang/Object;
.source "FetchUrlStack.java"


# static fields
.field protected static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field protected static final GET_STR:Ljava/lang/String; = "GET"

.field protected static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field protected static final POST_STR:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeParameters(Ljava/util/ArrayList;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 127
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->encodeQs(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fetchUrl(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;
    .locals 14
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

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 41
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v8, "&"

    const-string v9, ""

    const-string v10, "?"

    if-ne v0, v5, :cond_3

    if-eqz v2, :cond_1

    .line 48
    invoke-static/range {p4 .. p4}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->encodeQs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 50
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v8

    goto :goto_0

    :cond_0
    move-object v1, v10

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    .line 54
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    const-string v1, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, p0

    .line 56
    :try_start_1
    invoke-direct {p0, v3, v1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;->encodeParameters(Ljava/util/ArrayList;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v11, p0

    .line 58
    :goto_1
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    .line 60
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    move-object v11, p0

    goto :goto_3

    :cond_3
    move-object v11, p0

    if-nez v0, :cond_b

    if-nez v3, :cond_4

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    :cond_5
    invoke-static {v3}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->encodeQs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 72
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v8

    goto :goto_2

    :cond_6
    move-object v1, v10

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const/4 v1, 0x0

    :goto_4
    move-object v12, v1

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v1, p0

    move v2, p1

    move-object v3, v13

    move-object/from16 v4, p3

    move-object v5, v12

    move/from16 v6, p6

    move/from16 v7, p7

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;->fetchUrlRaw(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v12, :cond_8

    goto :goto_5

    .line 86
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    if-nez v12, :cond_a

    goto :goto_6

    .line 88
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v3, "\n"

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v3, v0, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->code:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->content:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QA"

    invoke-static {v2, v1}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 76
    :cond_b
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid request method"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_c
    move-object v11, p0

    .line 42
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    const/4 v1, 0x4

    const-string v2, "the url is null!!!"

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected abstract fetchUrlRaw(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII)",
            "Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;
        }
    .end annotation
.end method

.method protected handleSSLException(Ljava/lang/Exception;)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;
    .locals 2

    .line 115
    invoke-static {}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->isLocalDateCorrectInCertificate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 118
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public requestGetBody(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
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

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "?"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->encodeQs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->encodeQs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestGetBody: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/String;)V

    return-object p1
.end method
