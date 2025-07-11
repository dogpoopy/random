.class abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;
.super Ljava/lang/Object;
.source "OAuthService.java"


# static fields
.field private static final CLIENT_NAME:Ljava/lang/String; = "TwitterAndroidSDK"


# instance fields
.field private final api:Lcom/twitter/sdk/android/core/internal/TwitterApi;

.field private final retrofit:Lretrofit2/Retrofit;

.field private final twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/internal/TwitterApi;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    .line 47
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->api:Lcom/twitter/sdk/android/core/internal/TwitterApi;

    .line 48
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterCore;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TwitterAndroidSDK"

    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/internal/TwitterApi;->buildUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->userAgent:Ljava/lang/String;

    .line 50
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance p2, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService$1;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService$1;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;)V

    .line 51
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 63
    new-instance p2, Lretrofit2/Retrofit$Builder;

    invoke-direct {p2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->getApi()Lcom/twitter/sdk/android/core/internal/TwitterApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/TwitterApi;->getBaseHostUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 66
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method


# virtual methods
.method protected getApi()Lcom/twitter/sdk/android/core/internal/TwitterApi;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->api:Lcom/twitter/sdk/android/core/internal/TwitterApi;

    return-object v0
.end method

.method protected getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->retrofit:Lretrofit2/Retrofit;

    return-object v0
.end method

.method protected getTwitterCore()Lcom/twitter/sdk/android/core/TwitterCore;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->twitterCore:Lcom/twitter/sdk/android/core/TwitterCore;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthService;->userAgent:Ljava/lang/String;

    return-object v0
.end method
