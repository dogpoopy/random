.class Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .line 238
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v1

    const-string v2, "http.authscheme-registry"

    .line 239
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v1

    const-string v2, "http.cookiespec-registry"

    .line 242
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    const-string v2, "http.auth.credentials-provider"

    .line 245
    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .line 227
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 229
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$2;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object v0
.end method
