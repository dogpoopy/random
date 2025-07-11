.class public Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;
.super Ljava/lang/Object;
.source "OkHttpClientHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addGuestAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 70
    new-instance v0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthenticator;-><init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V

    .line 72
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthInterceptor;-><init>(Lcom/twitter/sdk/android/core/GuestSessionProvider;)V

    .line 73
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance p1, Lcom/twitter/sdk/android/core/internal/network/GuestAuthNetworkInterceptor;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/internal/network/GuestAuthNetworkInterceptor;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method static addSessionAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lcom/twitter/sdk/android/core/Session<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;

    invoke-direct {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/network/OAuth1aInterceptor;-><init>(Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    .line 82
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificatePinner()Lokhttp3/CertificatePinner;
    .locals 6

    .line 86
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sha1/I0PRSKJViZuUfUYaeX7ATP7RcLc="

    aput-object v4, v2, v3

    const-string v4, "*.twitter.com"

    .line 87
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/VRmyeKyygdftp6vBg5nDu2kEJLU="

    aput-object v5, v2, v3

    .line 88
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/Eje6RRfurSkm/cHN/r7t8t7ZFFw="

    aput-object v5, v2, v3

    .line 89
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/Wr7Fddyu87COJxlD/H8lDD32YeM="

    aput-object v5, v2, v3

    .line 90
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/GiG0lStik84Ys2XsnA6TTLOB5tQ="

    aput-object v5, v2, v3

    .line 91
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/IvGeLsbqzPxdI0b0wuj2xVTdXgc="

    aput-object v5, v2, v3

    .line 92
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/7WYxNdMb1OymFMQp4xkGn5TBJlA="

    aput-object v5, v2, v3

    .line 93
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/sYEIGhmkwJQf+uiVKMEkyZs0rMc="

    aput-object v5, v2, v3

    .line 94
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/PANDaGiVHPNpKri0Jtq6j+ki5b0="

    aput-object v5, v2, v3

    .line 95
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/u8I+KQuzKHcdrT6iTb30I70GsD0="

    aput-object v5, v2, v3

    .line 96
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/wHqYaI2J+6sFZAwRfap9ZbjKzE4="

    aput-object v5, v2, v3

    .line 97
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/cTg28gIxU0crbrplRqkQFVggBQk="

    aput-object v5, v2, v3

    .line 98
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/sBmJ5+/7Sq/LFI9YRjl2IkFQ4bo="

    aput-object v5, v2, v3

    .line 99
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/vb6nG6txV/nkddlU0rcngBqCJoI="

    aput-object v5, v2, v3

    .line 100
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/nKmNAK90Dd2BgNITRaWLjy6UONY="

    aput-object v5, v2, v3

    .line 101
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/h+hbY1PGI6MSjLD/u/VR/lmADiI="

    aput-object v5, v2, v3

    .line 102
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/Xk9ThoXdT57KX9wNRW99UbHcm3s="

    aput-object v5, v2, v3

    .line 103
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/1S4TwavjSdrotJWU73w4Q2BkZr0="

    aput-object v5, v2, v3

    .line 104
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/gzF+YoVCU9bXeDGQ7JGQVumRueM="

    aput-object v5, v2, v3

    .line 105
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sha1/aDMOYTWFIVkpg6PI0tLhQG56s8E="

    aput-object v5, v2, v3

    .line 106
    invoke-virtual {v0, v4, v2}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sha1/Vv7zwhR9TtOIN/29MFI4cgHld40="

    aput-object v2, v1, v3

    .line 107
    invoke-virtual {v0, v4, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomOkHttpClient(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lokhttp3/OkHttpClient;
    .locals 0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->addGuestAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HttpClient must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCustomOkHttpClient(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Lcom/twitter/sdk/android/core/Session<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->addSessionAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HttpClient must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOkHttpClient(Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lokhttp3/OkHttpClient;
    .locals 1

    .line 30
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0, p0}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->addGuestAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/GuestSessionProvider;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static getOkHttpClient(Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Session<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/network/OkHttpClientHelper;->addSessionAuth(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/Session;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
