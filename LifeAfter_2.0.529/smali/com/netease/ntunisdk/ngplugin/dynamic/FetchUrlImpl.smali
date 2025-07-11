.class public Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;
.super Ljava/lang/Object;
.source "FetchUrlImpl.java"


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x1388

.field protected static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field protected static final GET_STR:Ljava/lang/String; = "GET"

.field protected static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field protected static final POST_STR:Ljava/lang/String; = "POST"

.field public static final READ_TIMEOUT:I = 0x1388


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeQs(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 235
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 237
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->encodeQs(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static encodeQs(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {v3, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            ")",
            "Lcom/netease/ntunisdk/ngplugin/dynamic/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;
        }
    .end annotation

    const/16 v6, 0x1388

    const/16 v7, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 47
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;II)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;

    move-result-object p0
    :try_end_0
    .catch Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p5

    .line 49
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->switchHttpDnsMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/netease/mpay/httpdns/HttpDns;->resolve(Ljava/lang/String;)Lcom/netease/mpay/httpdns/ResolveDnsResult;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    throw p5
.end method

.method public static fetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;II)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            "II)",
            "Lcom/netease/ntunisdk/ngplugin/dynamic/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    .line 62
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p5, :cond_0

    .line 65
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/httpdns/HttpDns;->isHttpDnsMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/netease/mpay/httpdns/HttpDns;->resolve(Ljava/lang/String;)Lcom/netease/mpay/httpdns/ResolveDnsResult;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    move-object/from16 v5, p5

    :goto_0
    if-eqz v5, :cond_1

    .line 68
    iget-object v2, v5, Lcom/netease/mpay/httpdns/ResolveDnsResult;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, v5, Lcom/netease/mpay/httpdns/ResolveDnsResult;->url:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 71
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    .line 72
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "&"

    const-string v9, ""

    const-string v10, "?"

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    .line 74
    invoke-static/range {p3 .. p3}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->encodeQs(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 76
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v8

    goto :goto_2

    :cond_2
    move-object v2, v10

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p4, :cond_8

    .line 80
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 82
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->encodeQs(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4
    const-string v4, "GET"

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez p4, :cond_5

    .line 90
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto :goto_3

    :cond_5
    move-object/from16 v4, p4

    :goto_3
    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_6
    invoke-static {v4}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->encodeQs(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 97
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v8

    goto :goto_4

    :cond_7
    move-object v2, v10

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x0

    :goto_5
    move-object v11, v1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v4, v11

    move/from16 v6, p6

    move/from16 v7, p7

    .line 106
    invoke-static/range {v1 .. v7}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->fetchUrlRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/netease/mpay/httpdns/ResolveDnsResult;II)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v11, :cond_9

    goto :goto_6

    .line 111
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    if-nez v11, :cond_b

    goto :goto_7

    .line 113
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const-string v2, " \n "

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v2, v0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    .line 101
    :cond_c
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid request method"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 63
    :cond_d
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/4 v1, 0x4

    const-string v2, "the host is null!!!"

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static fetchUrlRaw(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BLcom/netease/mpay/httpdns/ResolveDnsResult;II)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            "II)",
            "Lcom/netease/ntunisdk/ngplugin/dynamic/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 131
    :try_start_0
    invoke-static {p1, p5, p6}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->openConnection(Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    .line 134
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/netease/mpay/httpdns/ResolveDnsResult;->setSNI(Ljava/net/HttpURLConnection;)V

    .line 136
    :cond_0
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 137
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 138
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 139
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 143
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 144
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 146
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    .line 149
    :cond_2
    new-instance p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;-><init>()V

    .line 150
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->code:I

    .line 151
    iget p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->code:I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p3, -0x1

    if-eq p2, p3, :cond_7

    .line 159
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v3, p2

    goto :goto_2

    .line 161
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_3

    .line 164
    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->content:[B

    .line 166
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->headers:Ljava/util/HashMap;

    .line 167
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    .line 168
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 169
    iget-object p4, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/Response;->headers:Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 170
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 169
    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 201
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 206
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object p0

    .line 154
    :cond_7
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :catch_2
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_6

    :catch_4
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_7

    :catch_5
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_8

    :catch_6
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_9

    :catch_7
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_a

    :catch_8
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_b

    :catch_9
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    goto :goto_c

    :catchall_1
    move-exception p0

    move-object p1, v3

    goto/16 :goto_d

    :catch_a
    move-exception p0

    move-object p1, v3

    .line 196
    :goto_5
    :try_start_6
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    .line 197
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_b
    move-exception p0

    move-object p1, v3

    .line 193
    :goto_6
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    .line 194
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_c
    move-exception p0

    move-object p1, v3

    .line 190
    :goto_7
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/16 p3, 0x9

    .line 191
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_d
    move-exception p0

    move-object p1, v3

    .line 187
    :goto_8
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    .line 188
    invoke-virtual {p0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_e
    move-exception p0

    move-object p1, v3

    .line 184
    :goto_9
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/4 p3, 0x4

    .line 185
    invoke-virtual {p0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_f
    move-exception p0

    move-object p1, v3

    .line 181
    :goto_a
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    .line 182
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_10
    move-exception p0

    move-object p1, v3

    .line 178
    :goto_b
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    .line 179
    invoke-virtual {p0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_11
    move-exception p0

    move-object p1, v3

    .line 175
    :goto_c
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;

    const/16 p3, 0x8

    .line 176
    invoke-virtual {p0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    :goto_d
    if-eqz v3, :cond_8

    .line 201
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    goto :goto_e

    :catch_12
    nop

    :cond_8
    :goto_e
    if-eqz p1, :cond_9

    .line 206
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    :cond_9
    goto :goto_10

    :goto_f
    throw p0

    :goto_10
    goto :goto_f
.end method

.method public static get(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            ")",
            "Lcom/netease/ntunisdk/ngplugin/dynamic/Response;"
        }
    .end annotation

    :try_start_0
    const-string v0, "GET"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/dynamic/FetchUrlImpl;->fetchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/netease/mpay/httpdns/ResolveDnsResult;)Lcom/netease/ntunisdk/ngplugin/dynamic/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 227
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 228
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static openConnection(Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    .line 214
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 216
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 217
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p1, 0x1

    .line 218
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p0
.end method
