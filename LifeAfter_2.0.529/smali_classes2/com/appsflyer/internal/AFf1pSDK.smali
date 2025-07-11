.class public Lcom/appsflyer/internal/AFf1pSDK;
.super Lcom/appsflyer/internal/AFf1tSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFf1tSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final afVerboseLog:[Lcom/appsflyer/internal/AFe1bSDK;


# instance fields
.field private final afDebugLog:Lcom/appsflyer/internal/AFg1xSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFd1rSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFd1lSDK;

.field private final force:Lcom/appsflyer/internal/AFe1jSDK;

.field protected final i:Lcom/appsflyer/internal/AFg1qSDK;

.field public final registerClient:Lcom/appsflyer/internal/AFa1pSDK;

.field private final v:Lcom/appsflyer/internal/AFf1eSDK;

.field protected final w:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsflyer/internal/AFe1bSDK;

    .line 51
    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->registerClient:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/appsflyer/internal/AFf1pSDK;->afVerboseLog:[Lcom/appsflyer/internal/AFe1bSDK;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V
    .locals 4

    .line 64
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1bSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1bSDK;->values:Lcom/appsflyer/internal/AFe1bSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 70
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->afVerboseLog()Lcom/appsflyer/internal/AFe1jSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->force:Lcom/appsflyer/internal/AFe1jSDK;

    .line 71
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    .line 72
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->v:Lcom/appsflyer/internal/AFf1eSDK;

    .line 73
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 74
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1rSDK;

    .line 75
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->i:Lcom/appsflyer/internal/AFg1qSDK;

    .line 76
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFg1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1xSDK;

    .line 1209
    sget-object p1, Lcom/appsflyer/internal/AFf1pSDK;->afVerboseLog:[Lcom/appsflyer/internal/AFe1bSDK;

    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_0

    aget-object p3, p1, v3

    .line 1245
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    if-eq v0, p3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1215
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 2186
    iget p1, p1, Lcom/appsflyer/internal/AFa1pSDK;->registerClient:I

    .line 2245
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1bSDK;

    if-gtz p1, :cond_1

    .line 1221
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    if-eq p2, p1, :cond_2

    .line 1222
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    .line 3088
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 1226
    :cond_1
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    .line 3101
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1pSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    const-string v1, "meta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->i:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1qSDK;->AFInAppEventType(Ljava/util/Map;)V

    return-void
.end method

.method protected AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 8146
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v3, "Error while collecting payload params"

    .line 8148
    invoke-static {v3, v2, v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 120
    :goto_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    .line 9140
    new-instance v4, Lcom/appsflyer/internal/AFd1qSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFg1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 10025
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 9140
    invoke-direct {v4, v3, v2}, Lcom/appsflyer/internal/AFd1qSDK;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 121
    invoke-virtual {p1, v4}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 122
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appsflyer/internal/AFg1zSDK;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 123
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1pSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v3, "com.appsflyer.security.enable"

    invoke-virtual {v2, v3}, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    .line 10154
    :try_start_1
    new-instance v2, Lcom/appsflyer/internal/AFb1sSDK;

    invoke-direct {v2, p1}, Lcom/appsflyer/internal/AFb1sSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;)V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1sSDK;->afInfoLog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "native: reflection init failed"

    .line 10156
    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFLogger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFg1zSDK;->values()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 10250
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/Set;

    .line 132
    sget-object v3, Lcom/appsflyer/internal/AFe1bSDK;->w:Lcom/appsflyer/internal/AFe1bSDK;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 134
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1pSDK;->AFLogger()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 135
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v3, "appsFlyerCount"

    invoke-interface {v2, v3, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    .line 11231
    :cond_4
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->registerClient()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 11234
    invoke-static {p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;

    move-result-object v2

    .line 11235
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1pSDK;->force:Lcom/appsflyer/internal/AFe1jSDK;

    .line 12072
    new-instance v4, Lcom/appsflyer/internal/AFe1hSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFe1jSDK;->valueOf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType()Ljava/lang/String;

    move-result-object v3

    .line 12127
    invoke-static {}, Lcom/appsflyer/internal/AFe1jSDK;->values()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 12128
    sget-object v6, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    goto :goto_4

    .line 12130
    :cond_5
    sget-object v6, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    .line 12072
    :goto_4
    invoke-direct {v4, v5, v3, v6}, Lcom/appsflyer/internal/AFe1hSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFe1iSDK;)V

    .line 13010
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 13011
    iget-object v5, v4, Lcom/appsflyer/internal/AFe1hSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13012
    iget-object v5, v4, Lcom/appsflyer/internal/AFe1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    sget-object v6, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    if-eq v5, v6, :cond_6

    .line 13013
    iget-object v5, v4, Lcom/appsflyer/internal/AFe1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    .line 13021
    iget-object v5, v5, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v6, "method"

    .line 13013
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13015
    :cond_6
    iget-object v5, v4, Lcom/appsflyer/internal/AFe1hSDK;->valueOf:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_5
    if-nez v0, :cond_9

    .line 13016
    iget-object v0, v4, Lcom/appsflyer/internal/AFe1hSDK;->valueOf:Ljava/lang/String;

    const-string v1, "prefix"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "host"

    .line 11235
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13245
    :cond_a
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v1, "AF_PREINSTALL_DISABLED"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 13248
    invoke-static {p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;

    move-result-object v0

    .line 13249
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "preinstall_disabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13254
    :cond_b
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1xSDK;

    .line 13255
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v1

    .line 13256
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;

    move-result-object p1

    .line 13254
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFg1xSDK;->AFKeystoreWrapper(Ljava/util/Map;Lcom/appsflyer/internal/AFe1bSDK;)V

    return-void
.end method

.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 8097
    iget-object v0, v0, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method protected unregisterClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1xSDK;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFe1xSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "*Non-printing character*"

    const-string v3, "JSON toString of eventParams map returns null"

    const-string v4, "\\p{C}"

    const-string v5, "Unexpected error"

    const-string v6, ""

    .line 82
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 86
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    const-string v7, "meta"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 3283
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->v:Lcom/appsflyer/internal/AFf1eSDK;

    .line 4064
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1eSDK;->valueOf:Lcom/appsflyer/internal/AFf1gSDK;

    .line 5062
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1gSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1nSDK;

    .line 5068
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    .line 6011
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->values:Lcom/appsflyer/internal/AFh1kSDK;

    .line 6016
    iget-wide v8, v0, Lcom/appsflyer/internal/AFh1kSDK;->AFInAppEventType:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3289
    :goto_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-static {v8, v9}, Lcom/appsflyer/internal/AFa1pSDK;->values(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3290
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 6083
    iget-object v7, v0, Lcom/appsflyer/internal/AFa1pSDK;->unregisterClient:Ljava/lang/String;

    .line 92
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 6156
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_1

    .line 6187
    :try_start_2
    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6190
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v9

    .line 6171
    :goto_1
    invoke-static {v5, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    move-object v0, v6

    :goto_2
    move-object v8, v11

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v11, v9

    :goto_3
    const-string v12, "JSONObject return null String object. Trying to create AFJsonObject."

    .line 6159
    invoke-static {v12, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :try_start_3
    new-array v0, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v0, v12

    .line 6161
    sget-object v8, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    const v13, 0x3ed3b6b4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_4

    :cond_2
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x49

    const v14, 0xa12c

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v15

    shr-int/lit8 v15, v15, 0x8

    sub-int/2addr v14, v15

    int-to-char v14, v14

    invoke-static {v12, v12}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v15

    add-int/lit8 v15, v15, 0x24

    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/AFa1zSDK;->valueOf(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v14, "valueOf"

    new-array v15, v10, [Ljava/lang/Class;

    const-class v16, Ljava/util/Map;

    aput-object v16, v15, v12

    invoke-virtual {v8, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v12, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v8, :cond_3

    .line 7187
    :try_start_4
    invoke-virtual {v8, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 7190
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 6161
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    move-object v8, v11

    .line 6168
    :goto_5
    invoke-static {v5, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v8, v11

    :goto_6
    const-string v2, "AFFinalizer: reflection init failed"

    .line 6166
    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v8, v11

    :goto_7
    const-string v2, "AFJsonObject return null String object."

    .line 6164
    invoke-static {v2, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_8
    move-object v0, v6

    :goto_9
    if-nez v8, :cond_5

    goto :goto_a

    :cond_5
    move-object v6, v8

    .line 6177
    :goto_a
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Payload contains non-printing characters"

    .line 6179
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_b

    :cond_6
    move-object v0, v6

    .line 6181
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": preparing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf(Ljava/lang/String;)V

    .line 6182
    iget-object v2, v1, Lcom/appsflyer/internal/AFf1tSDK;->d:Lcom/appsflyer/internal/AFb1cSDK;

    invoke-interface {v2, v7, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1tSDK;->e:Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    iget-object v3, v1, Lcom/appsflyer/internal/AFf1pSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1lSDK;

    move-object/from16 v4, p1

    invoke-virtual {v0, v2, v4, v3}, Lcom/appsflyer/internal/AFe1zSDK;->valueOf(Lcom/appsflyer/internal/AFa1pSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFd1lSDK;)Lcom/appsflyer/internal/AFe1xSDK;

    move-result-object v0

    return-object v0
.end method

.method protected values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->i:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1qSDK;->values(Lcom/appsflyer/internal/AFa1pSDK;)V

    return-void
.end method
