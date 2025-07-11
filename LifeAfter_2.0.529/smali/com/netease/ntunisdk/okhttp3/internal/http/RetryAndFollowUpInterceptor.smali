.class public final Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Lcom/netease/ntunisdk/okhttp3/Address;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificatePinner()Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_0
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dns()Lcom/netease/ntunisdk/okhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/netease/ntunisdk/okhttp3/Address;-><init>(Ljava/lang/String;ILcom/netease/ntunisdk/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/netease/ntunisdk/okhttp3/CertificatePinner;Lcom/netease/ntunisdk/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private createAddress(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Address;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificatePinner()Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    move-result-object v3

    move-object v11, v1

    move-object v10, v2

    move-object v12, v3

    goto :goto_0

    :cond_0
    move-object v10, v2

    move-object v11, v10

    move-object v12, v11

    :goto_0
    new-instance v1, Lcom/netease/ntunisdk/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    const-string v2, "host"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v7

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dns()Lcom/netease/ntunisdk/okhttp3/Dns;

    move-result-object v8

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v9

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;

    move-result-object v13

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v14

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v16

    iget-object v2, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v17

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/netease/ntunisdk/okhttp3/Address;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/netease/ntunisdk/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/netease/ntunisdk/okhttp3/CertificatePinner;Lcom/netease/ntunisdk/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Route;)Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object v4

    :cond_3
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lcom/netease/ntunisdk/okhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/netease/ntunisdk/okhttp3/Authenticator;->authenticate(Lcom/netease/ntunisdk/okhttp3/Route;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->priorResponse()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_8

    return-object v4

    :cond_8
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lcom/netease/ntunisdk/okhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v4

    :cond_a
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->authenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/netease/ntunisdk/okhttp3/Authenticator;->authenticate(Lcom/netease/ntunisdk/okhttp3/Route;Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    :cond_c
    :pswitch_0
    iget-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_d

    return-object v4

    :cond_d
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    return-object v4

    :cond_e
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_f

    return-object v4

    :cond_f
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_10

    return-object v4

    :cond_10
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v0

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v0, v3, v4}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    goto :goto_0

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v4

    :cond_12
    invoke-virtual {v0, v1, v4}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :goto_0
    if-nez v2, :cond_13

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    :cond_14
    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;ZLcom/netease/ntunisdk/okhttp3/Request;)Z
    .locals 2

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsUnrepeatable(Ljava/io/IOException;Lcom/netease/ntunisdk/okhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private requestIsUnrepeatable(Ljava/io/IOException;Lcom/netease/ntunisdk/okhttp3/Request;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object p2

    instance-of p2, p2, Lcom/netease/ntunisdk/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez p2, :cond_1

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private retryAfter(Lcom/netease/ntunisdk/okhttp3/Response;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private sameConnection(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public intercept(Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "wuln--okhttp RetryAndFollowUpInterceptor [intercept] start"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    move-object/from16 v2, p1

    check-cast v2, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->call()Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object v9

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->eventListener()Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v10

    new-instance v11, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v3, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionPool()Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Address;

    move-result-object v5

    iget-object v8, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v3, v11

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;-><init>(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/Address;Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v11, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, v13

    const/4 v5, 0x0

    :goto_0
    iget-boolean v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {v2, v3, v11, v13, v13}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Lcom/netease/ntunisdk/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Response;->newBuilder()Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->body(Lcom/netease/ntunisdk/okhttp3/ResponseBody;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->priorResponse(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response$Builder;->build()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->route()Lcom/netease/ntunisdk/okhttp3/Route;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Route;)Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v14, :cond_1

    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v15, v5, 0x1

    const/16 v4, 0x14

    if-gt v15, v4, :cond_5

    invoke-virtual {v14}, Lcom/netease/ntunisdk/okhttp3/Request;->body()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v4

    instance-of v4, v4, Lcom/netease/ntunisdk/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v4, :cond_4

    invoke-virtual {v14}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/HttpUrl;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v11, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    iget-object v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionPool()Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    move-result-object v4

    invoke-virtual {v14}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lcom/netease/ntunisdk/okhttp3/HttpUrl;Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Address;

    move-result-object v5

    iget-object v8, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v3, v11

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;-><init>(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/Address;Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/EventListener;Ljava/lang/Object;)V

    iput-object v11, v1, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->codec()Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_1
    move-object v4, v0

    move-object v3, v14

    move v5, v15

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing the body of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v2, Ljava/net/HttpRetryException;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    const-string v3, "Cannot retry streamed HTTP body"

    invoke-direct {v2, v3, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many follow-up requests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_2
    nop

    instance-of v0, v6, Lcom/netease/ntunisdk/okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-direct {v1, v6, v11, v0, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;ZLcom/netease/ntunisdk/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v6

    :catch_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {v1, v0, v11, v12, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;ZLcom/netease/ntunisdk/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {v11, v13}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    throw v0

    :cond_9
    invoke-virtual {v11}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
