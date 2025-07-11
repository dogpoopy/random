.class Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$1;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->access$300(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 452
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 456
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
