.class final Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFe1eSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1vSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFa1tSDK"
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/AFb1vSDK;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/AFb1vSDK;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/AFb1vSDK;B)V
    .locals 0

    .line 2030
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFb1vSDK;)V

    return-void
.end method

.method private values()Z
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1vSDK;->values:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1fSDK;Lcom/appsflyer/internal/AFe1cSDK;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFe1cSDK;",
            ")V"
        }
    .end annotation

    .line 2048
    instance-of v0, p1, Lcom/appsflyer/internal/AFf1pSDK;

    if-eqz v0, :cond_6

    .line 2049
    move-object v0, p1

    check-cast v0, Lcom/appsflyer/internal/AFf1pSDK;

    .line 2051
    instance-of v1, p1, Lcom/appsflyer/internal/AFf1kSDK;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2052
    move-object v3, p1

    check-cast v3, Lcom/appsflyer/internal/AFf1kSDK;

    .line 4236
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1cSDK;

    .line 4100
    sget-object v5, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    .line 5111
    iget v4, v3, Lcom/appsflyer/internal/AFe1fSDK;->values:I

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 4102
    new-instance v4, Lcom/appsflyer/internal/AFg1kSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/appsflyer/internal/AFg1kSDK;-><init>(Lcom/appsflyer/internal/AFf1kSDK;Lcom/appsflyer/internal/AFd1xSDK;)V

    .line 4103
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object v3

    .line 6089
    iget-object v5, v3, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v6, v3, v4}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2055
    :cond_2
    sget-object v3, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    if-ne p2, v3, :cond_5

    .line 2057
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p2

    const-string v3, "sentSuccessfully"

    const-string v4, "true"

    invoke-interface {p2, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    instance-of p1, p1, Lcom/appsflyer/internal/AFf1jSDK;

    if-nez p1, :cond_3

    .line 2061
    new-instance p1, Lcom/appsflyer/internal/AFg1tSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK;)Landroid/app/Application;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1tSDK;-><init>(Landroid/content/Context;)V

    .line 7093
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1tSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFg1uSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7094
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1uSDK;->values()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8015
    iget-object p1, p1, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    .line 7097
    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Resending Uninstall token to AF servers: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 7098
    invoke-static {p1}, Lcom/appsflyer/internal/AFg1tSDK;->valueOf(Ljava/lang/String;)V

    .line 8107
    :cond_3
    iget-object p1, v0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz p1, :cond_4

    .line 2066
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFe1pSDK;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/appsflyer/internal/AFc1sSDK;->AFInAppEventType(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2069
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    const-string v0, "send_background"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFb1vSDK;Z)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 2075
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Lcom/appsflyer/internal/AFb1vSDK;J)J

    :cond_5
    return-void

    .line 2078
    :cond_6
    instance-of p1, p1, Lcom/appsflyer/internal/AFg1kSDK;

    if-eqz p1, :cond_7

    .line 2079
    sget-object p1, Lcom/appsflyer/internal/AFe1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1cSDK;

    if-eq p2, p1, :cond_7

    .line 2080
    new-instance p1, Lcom/appsflyer/internal/AFg1oSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1oSDK;-><init>(Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 2081
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p2

    .line 9089
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v1, p2, p1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final values(Lcom/appsflyer/internal/AFe1fSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1fSDK<",
            "*>;)V"
        }
    .end annotation

    .line 2039
    instance-of v0, p1, Lcom/appsflyer/internal/AFf1kSDK;

    if-eqz v0, :cond_0

    .line 2040
    check-cast p1, Lcom/appsflyer/internal/AFf1pSDK;

    .line 2041
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK$AFa1tSDK;->values:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object v0

    .line 2204
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 3186
    iget p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->registerClient:I

    .line 2041
    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(I)V

    :cond_0
    return-void
.end method
