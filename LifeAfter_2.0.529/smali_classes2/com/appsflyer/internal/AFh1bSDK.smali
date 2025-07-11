.class public final Lcom/appsflyer/internal/AFh1bSDK;
.super Lcom/appsflyer/internal/AFh1cSDK;
.source ""


# instance fields
.field private AFInAppEventParameterName:Ljava/lang/String;

.field private values:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFh1cSDK;-><init>(Landroid/content/Context;)V

    const-string p1, "unknown"

    .line 14
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1bSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFh1bSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFh1bSDK;)V

    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1011
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public static final synthetic valueOf(Lcom/appsflyer/internal/AFh1bSDK;Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1bSDK;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method private static valueOf(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    .line 54
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static final synthetic values(Lcom/appsflyer/internal/AFh1bSDK;Landroid/net/Network;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1bSDK;->values:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1bSDK;->values:Landroid/net/Network;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFh1bSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v2, "NetworkLost"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 3011
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 48
    invoke-static {v2}, Lcom/appsflyer/internal/AFh1bSDK;->valueOf(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final values()Ljava/lang/String;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1bSDK;->values:Landroid/net/Network;

    const-string v1, "unknown"

    if-eqz v0, :cond_2

    .line 2011
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2039
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "WIFI"

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 2040
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MOBILE"

    return-object v0

    :cond_2
    return-object v1
.end method
