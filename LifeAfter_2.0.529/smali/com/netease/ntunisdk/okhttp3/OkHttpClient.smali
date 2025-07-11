.class public Lcom/netease/ntunisdk/okhttp3/OkHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/netease/ntunisdk/okhttp3/Call$Factory;
.implements Lcom/netease/ntunisdk/okhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

.field final cache:Lcom/netease/ntunisdk/okhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callTimeout:I

.field final certificateChainCleaner:Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

.field final dispatcher:Lcom/netease/ntunisdk/okhttp3/Dispatcher;

.field final dns:Lcom/netease/ntunisdk/okhttp3/Dns;

.field final eventListenerFactory:Lcom/netease/ntunisdk/okhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/netease/ntunisdk/okhttp3/Protocol;

    sget-object v2, Lcom/netease/ntunisdk/okhttp3/Protocol;->HTTP_2:Lcom/netease/ntunisdk/okhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/netease/ntunisdk/okhttp3/Protocol;->HTTP_1_1:Lcom/netease/ntunisdk/okhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    new-array v0, v0, [Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;->MODERN_TLS:Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;-><init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher:Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->eventListenerFactory:Lcom/netease/ntunisdk/okhttp3/EventListener$Factory;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->eventListenerFactory:Lcom/netease/ntunisdk/okhttp3/EventListener$Factory;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->cache:Lcom/netease/ntunisdk/okhttp3/Cache;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->cache:Lcom/netease/ntunisdk/okhttp3/Cache;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->internalCache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;

    :goto_2
    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->get()Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_5
    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/CertificatePinner;->withCertificateChainCleaner(Lcom/netease/ntunisdk/okhttp3/internal/tls/CertificateChainCleaner;)Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->authenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionPool:Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    iget-object v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    iget-boolean v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followSslRedirects:Z

    iget-boolean v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followRedirects:Z

    iget-boolean v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->callTimeout:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->callTimeout:I

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectTimeout:I

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->readTimeout:I

    iget v0, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->writeTimeout:I

    iget p1, p1, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->pingInterval:I

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->get()Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public authenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->authenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lcom/netease/ntunisdk/okhttp3/Cache;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->cache:Lcom/netease/ntunisdk/okhttp3/Cache;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Lcom/netease/ntunisdk/okhttp3/CertificatePinner;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lcom/netease/ntunisdk/okhttp3/ConnectionPool;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionPool:Lcom/netease/ntunisdk/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lcom/netease/ntunisdk/okhttp3/CookieJar;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->cookieJar:Lcom/netease/ntunisdk/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher:Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lcom/netease/ntunisdk/okhttp3/Dns;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lcom/netease/ntunisdk/okhttp3/EventListener$Factory;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->eventListenerFactory:Lcom/netease/ntunisdk/okhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->cache:Lcom/netease/ntunisdk/okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/Cache;->internalCache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->internalCache:Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;-><init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/RealCall;->newRealCall(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Lcom/netease/ntunisdk/okhttp3/Request;Z)Lcom/netease/ntunisdk/okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocket(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/WebSocketListener;)Lcom/netease/ntunisdk/okhttp3/WebSocket;
    .locals 7

    new-instance v6, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->pingInterval:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;-><init>(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/WebSocketListener;Ljava/util/Random;J)V

    invoke-virtual {v6, p0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;)V

    return-object v6
.end method

.method public pingIntervalMillis()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
