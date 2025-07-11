.class public final Lcom/appsflyer/internal/AFg1zSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventParameterName:Z

.field AFInAppEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

.field public volatile d:Z

.field public volatile registerClient:Ljava/lang/String;

.field public volatile unregisterClient:Ljava/lang/String;

.field public valueOf:J

.field public final values:Lcom/appsflyer/internal/AFf1bSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFf1bSDK;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName:Z

    .line 55
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    .line 50
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 51
    iput-object p2, p0, Lcom/appsflyer/internal/AFg1zSDK;->values:Lcom/appsflyer/internal/AFf1bSDK;

    return-void
.end method

.method private static AFInAppEventParameterName(Landroid/content/Context;)Z
    .locals 4

    .line 238
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "collectAndroidIdForceByUser"

    .line 239
    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 240
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v3, "collectIMEIForceByUser"

    .line 241
    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 243
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1vSDK;->values(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method private AFInAppEventType()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final AFInAppEventParameterName()V
    .locals 4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    sub-long/2addr v0, v2

    .line 232
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ttr"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    .line 2226
    iget-wide v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->valueOf:J

    .line 233
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lvl_timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final AFKeystoreWrapper()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;
    .locals 9

    const-string v0, "use cached IMEI: "

    .line 87
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "collectIMEI"

    .line 88
    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "imeiCached"

    const/4 v4, 0x0

    .line 89
    invoke-interface {p1, v3, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 1025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 93
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    const-string v6, "phone"

    .line 95
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDeviceId"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v5, v1

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_4

    .line 100
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    if-eqz v5, :cond_1

    .line 111
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 114
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: Can\'t collect IMEI: other reason: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    if-eqz v5, :cond_2

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 108
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: Can\'t collect IMEI because of missing permissions: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->unregisterClient:Ljava/lang/String;

    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v5, v4

    .line 123
    :goto_2
    invoke-static {v5}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    invoke-interface {p1, v3, v5}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_5
    const-string p1, "IMEI was not collected."

    .line 127
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v4
.end method

.method public final valueOf()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->d:Z

    return v0
.end method

.method public final values()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType()Z

    move-result v1

    const-string v2, "lvl"

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName:Z

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    .line 168
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventParameterName()V

    .line 169
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "error"

    const-string v4, "pending LVL response"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final values(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 2025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 145
    sget-object p1, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    const v4, -0x6cc75a2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x25

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v8

    cmp-long v10, v8, v5

    add-int/lit8 v10, v10, 0x7b

    invoke-static {p1, v7, v10}, Lcom/appsflyer/internal/AFc1fSDK;->AFInAppEventType(ICI)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v1, v0

    const-class v0, Landroid/content/Context;

    aput-object v0, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "AFCksmV3: reflection init failed"

    .line 147
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
