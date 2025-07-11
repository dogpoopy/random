.class public abstract Lcom/appsflyer/internal/AFf1wSDK;
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


# instance fields
.field private final afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

.field private final afRDLog:Ljava/lang/String;

.field private final afVerboseLog:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

.field private final afWarnLog:Ljava/lang/String;

.field private final force:Lcom/appsflyer/internal/AFd1xSDK;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final registerClient:Lcom/appsflyer/internal/AFd1rSDK;

.field private final v:Lcom/appsflyer/internal/AFg1qSDK;

.field private final w:Lcom/appsflyer/internal/AFg1xSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1bSDK;",
            "[",
            "Lcom/appsflyer/internal/AFe1bSDK;",
            "Lcom/appsflyer/internal/AFd1nSDK;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/appsflyer/internal/AFf1tSDK;-><init>(Lcom/appsflyer/internal/AFe1bSDK;[Lcom/appsflyer/internal/AFe1bSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

    .line 58
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 59
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->force:Lcom/appsflyer/internal/AFd1xSDK;

    .line 60
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->v:Lcom/appsflyer/internal/AFg1qSDK;

    .line 61
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFg1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->w:Lcom/appsflyer/internal/AFg1xSDK;

    const-string p1, "billing_library_version"

    .line 1171
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 62
    :goto_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afRDLog:Ljava/lang/String;

    const-string p1, "connector_version"

    .line 1176
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 63
    :goto_1
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afWarnLog:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2111
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2112
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 3168
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4025
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 3084
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "app_id"

    .line 2112
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->v:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1qSDK;->AFKeystoreWrapper()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "event_timestamp"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p3, "cuid"

    .line 2116
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    :cond_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 4168
    iget-object p3, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 5025
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 5168
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 6025
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 5084
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4089
    invoke-static {p3, p1}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "app_version_name"

    .line 2118
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2122
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 6168
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 7025
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 6057
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3, p4}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 7028
    iget-object p3, p3, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object p3, v0

    .line 2123
    :goto_2
    invoke-static {p3}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "advertising_id"

    .line 2124
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    :cond_4
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 8168
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 9025
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 8073
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 9028
    iget-object p3, p3, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p3, v0

    .line 2127
    :goto_3
    invoke-static {p3}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "oaid"

    .line 2128
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    :cond_6
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 10168
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 11025
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 10073
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 11028
    iget-object v0, p3, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    .line 2131
    :cond_7
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "amazon_aid"

    .line 2132
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    :cond_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p3

    const/4 p4, 0x0

    const-string v0, "deviceTrackingDisabled"

    .line 2135
    invoke-virtual {p3, v0, p4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_9

    .line 2137
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    iget-object p4, p0, Lcom/appsflyer/internal/AFf1wSDK;->force:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {p3, p4}, Lcom/appsflyer/internal/AFg1zSDK;->valueOf(Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p3

    .line 2138
    invoke-static {p3}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    const-string p4, "imei"

    .line 2139
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    :cond_9
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    .line 11098
    iget-object p4, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object p3, p3, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {p4, p3}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "appsflyer_id"

    .line 2143
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "os_version"

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sdk_version"

    const-string p4, "6.13.0"

    .line 2145
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11166
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->afWarnLog:Ljava/lang/String;

    .line 2146
    invoke-static {p3}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 12166
    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->afWarnLog:Ljava/lang/String;

    const-string p4, "sdk_connector_version"

    .line 2147
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string p3, "device_data"

    .line 2149
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13161
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afRDLog:Ljava/lang/String;

    .line 2150
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1rSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 14161
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afRDLog:Ljava/lang/String;

    const-string p3, "billing_lib_version"

    .line 2151
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :cond_b
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1wSDK;->w:Lcom/appsflyer/internal/AFg1xSDK;

    iget-object p3, p0, Lcom/appsflyer/internal/AFf1wSDK;->afInfoLog:Lcom/appsflyer/internal/AFe1bSDK;

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/AFg1xSDK;->AFKeystoreWrapper(Ljava/util/Map;Lcom/appsflyer/internal/AFe1bSDK;)V

    .line 64
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1wSDK;->i:Ljava/util/Map;

    .line 65
    iput-object p5, p0, Lcom/appsflyer/internal/AFf1wSDK;->afVerboseLog:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    return-void
.end method


# virtual methods
.method protected final AFKeystoreWrapper(Ljava/lang/String;)V
    .locals 3

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    .line 17181
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1wSDK;->i:Ljava/util/Map;

    .line 185
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": preparing data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1tSDK;->d:Lcom/appsflyer/internal/AFb1cSDK;

    invoke-interface {v1, p1, v0}, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final afInfoLog()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->i:Ljava/util/Map;

    return-object v0
.end method

.method protected final registerClient()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final unregisterClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final valueOf()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->valueOf()V

    .line 72
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afVerboseLog:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1, v0}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 15107
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1wSDK;->afVerboseLog:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1, v0}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onResponse(Lcom/appsflyer/internal/components/network/http/ResponseNetwork;)V

    :cond_1
    return-void
.end method

.method public values()Z
    .locals 2

    .line 16107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    if-eqz v0, :cond_0

    .line 17107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    .line 97
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1tSDK;->values()Z

    move-result v0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1wSDK;->afRDLog:Ljava/lang/String;

    return-object v0
.end method
