.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lokhttp3/Authenticator;

.field cache:Lokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lokhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lokhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lokhttp3/CookieJar;

.field dispatcher:Lokhttp3/Dispatcher;

.field dns:Lokhttp3/Dns;

.field eventListenerFactory:Lokhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lokhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 476
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 477
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 478
    sget-object v0, Lokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 479
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 480
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 481
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 482
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 483
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 484
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 485
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 486
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 487
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 488
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 490
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 491
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 492
    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 493
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 494
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 496
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 499
    iget-object v0, p1, Lokhttp3/OkHttpClient;->dispatcher:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 500
    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 501
    iget-object v0, p1, Lokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 502
    iget-object v0, p1, Lokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 503
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    iget-object v0, p1, Lokhttp3/OkHttpClient;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 506
    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 507
    iget-object v0, p1, Lokhttp3/OkHttpClient;->cookieJar:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 508
    iget-object v0, p1, Lokhttp3/OkHttpClient;->internalCache:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 509
    iget-object v0, p1, Lokhttp3/OkHttpClient;->cache:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 510
    iget-object v0, p1, Lokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 511
    iget-object v0, p1, Lokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 512
    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 513
    iget-object v0, p1, Lokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 514
    iget-object v0, p1, Lokhttp3/OkHttpClient;->certificatePinner:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 515
    iget-object v0, p1, Lokhttp3/OkHttpClient;->proxyAuthenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 516
    iget-object v0, p1, Lokhttp3/OkHttpClient;->authenticator:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 517
    iget-object v0, p1, Lokhttp3/OkHttpClient;->connectionPool:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 518
    iget-object v0, p1, Lokhttp3/OkHttpClient;->dns:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 519
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 520
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 521
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 522
    iget v0, p1, Lokhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 523
    iget v0, p1, Lokhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 524
    iget v0, p1, Lokhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 525
    iget v0, p1, Lokhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 526
    return-void
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    .line 888
    if-eqz p1, :cond_0

    .line 889
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    return-object p0

    .line 888
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    .line 903
    if-eqz p1, :cond_0

    .line 904
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    return-object p0

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lokhttp3/Authenticator;

    .line 746
    if-eqz p1, :cond_0

    .line 747
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 748
    return-object p0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/OkHttpClient;
    .locals 1

    .line 935
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lokhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 631
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 633
    return-object p0
.end method

.method public certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;

    .line 734
    if-eqz p1, :cond_0

    .line 735
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 736
    return-object p0

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 537
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 538
    return-object p0
.end method

.method public connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;

    .line 769
    if-eqz p1, :cond_0

    .line 770
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 771
    return-object p0

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 874
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 875
    return-object p0
.end method

.method public cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;

    .line 618
    if-eqz p1, :cond_0

    .line 619
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 620
    return-object p0

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lokhttp3/Dispatcher;

    .line 818
    if-eqz p1, :cond_0

    .line 819
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 820
    return-object p0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lokhttp3/Dns;

    .line 642
    if-eqz p1, :cond_0

    .line 643
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 644
    return-object p0

    .line 642
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListener"    # Lokhttp3/EventListener;

    .line 915
    if-eqz p1, :cond_0

    .line 916
    invoke-static {p1}, Lokhttp3/EventListener;->factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 917
    return-object p0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListener == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListenerFactory"    # Lokhttp3/EventListener$Factory;

    .line 927
    if-eqz p1, :cond_0

    .line 930
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 931
    return-object p0

    .line 928
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListenerFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 787
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 788
    return-object p0
.end method

.method public followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .line 781
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 782
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 723
    if-eqz p1, :cond_0

    .line 724
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 725
    return-object p0

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 584
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 585
    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 852
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 855
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 869
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 870
    return-object p0

    .line 862
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 594
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 595
    return-object p0
.end method

.method public proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lokhttp3/Authenticator;

    .line 758
    if-eqz p1, :cond_0

    .line 759
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 760
    return-object p0

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .line 607
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 608
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 552
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 553
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .line 810
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 811
    return-object p0
.end method

.method setInternalCache(Lokhttp3/internal/cache/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lokhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 625
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 627
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 656
    if-eqz p1, :cond_0

    .line 657
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 658
    return-object p0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 671
    if-eqz p1, :cond_0

    .line 672
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 673
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 674
    return-object p0

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 709
    if-eqz p1, :cond_1

    .line 710
    if-eqz p2, :cond_0

    .line 711
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 712
    invoke-static {p2}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 713
    return-object p0

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 566
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 567
    return-object p0
.end method
