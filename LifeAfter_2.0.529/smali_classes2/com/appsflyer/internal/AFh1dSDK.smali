.class public final Lcom/appsflyer/internal/AFh1dSDK;
.super Lcom/appsflyer/internal/AFh1cSDK;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFh1cSDK;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 44
    instance-of v0, v2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 45
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 36
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tun0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return v4

    :cond_3
    return v1

    :catch_0
    move-exception v0

    .line 38
    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Failed collecting ivc data"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method protected final values()Ljava/lang/String;
    .locals 6

    .line 1011
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    const-string v1, "unknown"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/AFh1dSDK;->valueOf(Landroid/net/NetworkInfo;)Z

    move-result v3

    const-string v4, "WIFI"

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/AFh1dSDK;->valueOf(Landroid/net/NetworkInfo;)Z

    move-result v3

    const-string v5, "MOBILE"

    if-eqz v3, :cond_1

    return-object v5

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1024
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    return-object v4

    :cond_3
    return-object v5

    :cond_4
    return-object v1
.end method
