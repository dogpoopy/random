.class public Lcom/netease/mpay/oversea/j3;
.super Lcom/netease/mpay/oversea/l3;
.source "FetchUrlImpHurlStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/l3;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    .line 207
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 209
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-object p1
.end method

.method private a(ILjava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "DELETE"

    .line 202
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "PUT"

    .line 203
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "POST"

    .line 204
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "GET"

    .line 205
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/util/HashMap;[BLcom/netease/mpay/httpdns/ResolveDnsResult;II)Lcom/netease/mpay/oversea/k3;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            "II)",
            "Lcom/netease/mpay/oversea/k3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/i3$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x2

    const/4 v11, -0x1

    const/4 v13, 0x0

    move/from16 v14, p6

    move/from16 v15, p7

    .line 4
    :try_start_0
    invoke-direct {v1, v2, v14, v15}, Lcom/netease/mpay/oversea/j3;->a(Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v14
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v4, v14}, Lcom/netease/mpay/httpdns/ResolveDnsResult;->setSNI(Ljava/net/HttpURLConnection;)V

    :cond_0
    move/from16 v4, p1

    .line 9
    invoke-direct {v1, v4, v14}, Lcom/netease/mpay/oversea/j3;->a(ILjava/net/HttpURLConnection;)V

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v14, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 18
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 23
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/k3;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/k3;-><init>()V

    .line 24
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v0, Lcom/netease/mpay/oversea/k3;->a:I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v3, v11, :cond_6

    .line 33
    :try_start_2
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move-object v12, v3

    goto :goto_2

    .line 35
    :catch_0
    :try_start_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_2
    if-eqz v12, :cond_3

    .line 38
    :try_start_4
    invoke-static {v12}, Lcom/netease/mpay/oversea/p6;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mpay/oversea/k3;->b:[B

    .line 40
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/netease/mpay/oversea/k3;->c:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v14}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    iget-object v15, v0, Lcom/netease/mpay/oversea/k3;->c:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    .line 44
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v15, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, -0x1

    goto :goto_3

    .line 48
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    iget v4, v0, Lcom/netease/mpay/oversea/k3;->a:I

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_5

    .line 85
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 90
    :catch_1
    :cond_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v12

    goto/16 :goto_15

    :catch_2
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_10

    :catch_8
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_12

    :catch_9
    move-exception v0

    move-object/from16 v17, v12

    move-object v12, v14

    goto/16 :goto_14

    .line 91
    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/IllegalAccessError; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v12, v14

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v12, v14

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v12, v14

    goto :goto_9

    :catch_d
    move-exception v0

    move-object v12, v14

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v12, v14

    goto :goto_d

    :catch_f
    move-exception v0

    move-object v12, v14

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object v12, v14

    goto/16 :goto_11

    :catch_11
    move-exception v0

    move-object v12, v14

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    const/4 v14, 0x0

    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_15

    :catch_12
    move-exception v0

    const/4 v12, 0x0

    :goto_5
    const/16 v17, 0x0

    .line 140
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v13}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 141
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_13
    move-exception v0

    const/4 v12, 0x0

    :goto_7
    const/16 v17, 0x0

    .line 143
    :goto_8
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v10}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 144
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_14
    move-exception v0

    const/4 v12, 0x0

    :goto_9
    const/16 v17, 0x0

    .line 146
    :goto_a
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v13}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 147
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    const/16 v3, 0x9

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_15
    move-exception v0

    const/4 v12, 0x0

    :goto_b
    const/16 v17, 0x0

    .line 149
    :goto_c
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v10}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 150
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_16
    move-exception v0

    const/4 v12, 0x0

    :goto_d
    const/16 v17, 0x0

    .line 152
    :goto_e
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v13}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 153
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    const/4 v3, 0x4

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_17
    move-exception v0

    const/4 v12, 0x0

    :goto_f
    const/16 v17, 0x0

    .line 155
    :goto_10
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v13}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 156
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v9, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_18
    move-exception v0

    const/4 v12, 0x0

    :goto_11
    const/16 v17, 0x0

    .line 158
    :goto_12
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 159
    new-instance v2, Lcom/netease/mpay/oversea/i3$a;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lcom/netease/mpay/oversea/i3$a;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_19
    move-exception v0

    const/4 v12, 0x0

    :goto_13
    const/16 v17, 0x0

    .line 161
    :goto_14
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;JI)V

    .line 162
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/l3;->a(Ljava/lang/Exception;)Lcom/netease/mpay/oversea/i3$a;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v14, v12

    :goto_15
    if-eqz v17, :cond_7

    .line 194
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1a

    goto :goto_16

    :catch_1a
    nop

    :cond_7
    :goto_16
    if-eqz v14, :cond_8

    .line 199
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 201
    :cond_8
    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method
