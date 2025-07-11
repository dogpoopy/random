.class public Lcom/netease/mpay/oversea/scan/server/net/FetchUrlImpHurlStack;
.super Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;
.source "FetchUrlImpHurlStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlStack;-><init>()V

    return-void
.end method

.method private openConnection(Ljava/lang/String;II)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    .line 106
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 110
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1
.end method


# virtual methods
.method protected fetchUrlRaw(ILjava/lang/String;Ljava/util/HashMap;[BII)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;
    .locals 2
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

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 34
    :try_start_0
    invoke-direct {p0, p2, p5, p6}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlImpHurlStack;->openConnection(Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, "GET"

    .line 36
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    const-string p1, "POST"

    .line 38
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 41
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 42
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 43
    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 47
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 48
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->write([B)V

    .line 50
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 53
    :cond_3
    new-instance p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;-><init>()V

    .line 54
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    iput p3, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->code:I

    const-string p3, "QA"

    .line 55
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "code="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->code:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/netease/mpay/oversea/scan/tools/Logging;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget p3, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->code:I
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p4, -0x1

    if-eq p3, p4, :cond_6

    .line 64
    :try_start_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 66
    :catch_0
    :try_start_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p3

    :goto_2
    if-eqz p3, :cond_4

    .line 69
    invoke-static {p3}, Lcom/netease/mpay/oversea/scan/server/net/NetUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p3

    iput-object p3, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->content:[B

    .line 72
    :cond_4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->headers:Ljava/util/HashMap;

    .line 73
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p3

    .line 74
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

    .line 75
    iget-object p5, p1, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlResponse;->headers:Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 76
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-virtual {p5, p6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-object p1

    .line 59
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 98
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    const/4 p3, 0x2

    .line 99
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 95
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    .line 92
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    const/16 p3, 0x9

    .line 93
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_4
    move-exception p1

    .line 89
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    .line 90
    invoke-virtual {p1}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_5
    move-exception p1

    .line 86
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    const/4 p3, 0x4

    .line 87
    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_6
    move-exception p1

    .line 83
    new-instance p2, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    .line 84
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_7
    move-exception p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/server/net/FetchUrlImpHurlStack;->handleSSLException(Ljava/lang/Exception;)Lcom/netease/mpay/oversea/scan/server/net/FetchUrl$FetchUrlException;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
