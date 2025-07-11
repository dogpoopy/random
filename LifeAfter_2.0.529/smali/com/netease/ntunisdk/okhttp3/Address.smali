.class public final Lcom/netease/ntunisdk/okhttp3/Address;
.super Ljava/lang/Object;


# instance fields
.field final certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lcom/netease/ntunisdk/okhttp3/Dns;

.field headerHost:Ljava/lang/String;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/netease/ntunisdk/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/netease/ntunisdk/okhttp3/CertificatePinner;Lcom/netease/ntunisdk/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p5    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/netease/ntunisdk/okhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/netease/ntunisdk/okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/netease/ntunisdk/okhttp3/CertificatePinner;",
            "Lcom/netease/ntunisdk/okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;->port(I)Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl$Builder;->build()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    if-eqz p3, :cond_6

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/Address;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    if-eqz p4, :cond_5

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    iput-object p8, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    if-eqz p10, :cond_3

    invoke-static {p10}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->protocols:Ljava/util/List;

    if-eqz p11, :cond_2

    invoke-static {p11}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    if-eqz p12, :cond_1

    iput-object p12, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iput-object p9, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iput-object p5, p0, Lcom/netease/ntunisdk/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Lcom/netease/ntunisdk/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Lcom/netease/ntunisdk/okhttp3/Address;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/netease/ntunisdk/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/netease/ntunisdk/okhttp3/CertificatePinner;Lcom/netease/ntunisdk/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 13
    .param p6    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/netease/ntunisdk/okhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/netease/ntunisdk/okhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/netease/ntunisdk/okhttp3/CertificatePinner;",
            "Lcom/netease/ntunisdk/okhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/netease/ntunisdk/okhttp3/Address;-><init>(Ljava/lang/String;ILcom/netease/ntunisdk/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/netease/ntunisdk/okhttp3/CertificatePinner;Lcom/netease/ntunisdk/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    move-object v1, p2

    iput-object v1, v0, Lcom/netease/ntunisdk/okhttp3/Address;->headerHost:Ljava/lang/String;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "wuln--okhttp Address [Address] start"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public certificatePinner()Lcom/netease/ntunisdk/okhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

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

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lcom/netease/ntunisdk/okhttp3/Dns;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/netease/ntunisdk/okhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    check-cast p1, Lcom/netease/ntunisdk/okhttp3/Address;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/okhttp3/Address;->equalsNonHost(Lcom/netease/ntunisdk/okhttp3/Address;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method equalsNonHost(Lcom/netease/ntunisdk/okhttp3/Address;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    iget-object v1, p1, Lcom/netease/ntunisdk/okhttp3/Address;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Address;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Address;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->dns:Lcom/netease/ntunisdk/okhttp3/Dns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->certificatePinner:Lcom/netease/ntunisdk/okhttp3/CertificatePinner;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/CertificatePinner;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->headerHost:Ljava/lang/String;

    return-object v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lcom/netease/ntunisdk/okhttp3/Authenticator;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxyAuthenticator:Lcom/netease/ntunisdk/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxy:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Address;->url:Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    return-object v0
.end method
