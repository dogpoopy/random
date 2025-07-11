.class public Lcom/netease/ntunisdk/core/network/UrlClient;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;[BIILcom/netease/ntunisdk/core/network/ResolveDnsResult;)Lcom/netease/ntunisdk/core/network/UrlResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/core/network/UrlMethod;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BII",
            "Lcom/netease/ntunisdk/core/network/ResolveDnsResult;",
            ")",
            "Lcom/netease/ntunisdk/core/network/UrlResponse;"
        }
    .end annotation

    if-eqz p6, :cond_0

    iget-object v0, p6, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p6, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->url:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchUrlRaw: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, p5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p0, p0, Lcom/netease/ntunisdk/core/network/UrlMethod;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p6, :cond_1

    :try_start_1
    invoke-virtual {p6, p1}, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->wrap(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object p2, v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, p5, p6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    new-instance p0, Lcom/netease/ntunisdk/core/network/UrlResponse;

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/network/UrlResponse;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Lcom/netease/ntunisdk/core/network/UrlResponse;->code:I

    iget p2, p0, Lcom/netease/ntunisdk/core/network/UrlResponse;->code:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p3, -0x1

    if-eq p2, p3, :cond_8

    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz p2, :cond_4

    :try_start_4
    invoke-static {p2}, Lcom/netease/ntunisdk/core/network/Utils;->a(Ljava/io/InputStream;)[B

    move-result-object p3

    iput-object p3, p0, Lcom/netease/ntunisdk/core/network/UrlResponse;->content:[B

    :cond_4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/netease/ntunisdk/core/network/UrlResponse;->headers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    iget-object p5, p0, Lcom/netease/ntunisdk/core/network/UrlResponse;->headers:Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    nop

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_7
    return-object p0

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_8
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_7

    :catch_5
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    :goto_5
    :try_start_8
    invoke-static {p0}, Lcom/netease/ntunisdk/core/network/UrlException;->throwUrlException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz p2, :cond_9

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    nop

    :cond_9
    :goto_6
    if-eqz p1, :cond_a

    :try_start_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_a
    return-object v0

    :catchall_2
    move-exception p0

    move-object v0, p2

    :goto_7
    if-eqz v0, :cond_b

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_8

    :catch_8
    nop

    :cond_b
    :goto_8
    if-eqz p1, :cond_c

    :try_start_c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    :cond_c
    goto :goto_a

    :goto_9
    throw p0

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public fetch(Lcom/netease/ntunisdk/core/network/UrlRequest;)Lcom/netease/ntunisdk/core/network/UrlResponse;
    .locals 9

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->a:Lcom/netease/ntunisdk/core/network/UrlMethod;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->a:Lcom/netease/ntunisdk/core/network/UrlMethod;

    iget-object v3, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->c:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->e:[B

    iget v6, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->g:I

    iget v7, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->h:I

    iget-object v8, p1, Lcom/netease/ntunisdk/core/network/UrlRequest;->resolveDnsResult:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    invoke-static/range {v2 .. v8}, Lcom/netease/ntunisdk/core/network/UrlClient;->a(Lcom/netease/ntunisdk/core/network/UrlMethod;Ljava/lang/String;Ljava/util/HashMap;[BIILcom/netease/ntunisdk/core/network/ResolveDnsResult;)Lcom/netease/ntunisdk/core/network/UrlResponse;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/core/network/UrlRequest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/netease/ntunisdk/core/network/UrlResponse;->code:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    iget-object v4, v2, Lcom/netease/ntunisdk/core/network/UrlResponse;->content:[B

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\ncost:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance p1, Lcom/netease/ntunisdk/core/network/UrlException;

    const/4 v0, 0x4

    const-string v1, "the host is null!!!"

    invoke-direct {p1, v0, v1}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
