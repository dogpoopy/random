.class public final Lcom/appsflyer/internal/AFa1cSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/String;

.field private final AFInAppEventType:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final AFKeystoreWrapper:Ljava/lang/String;

.field private final AFLogger:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registerClient:Lcom/appsflyer/internal/AFd1rSDK;

.field private final valueOf:Ljava/lang/String;

.field final values:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFd1rSDK;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p2, p0, Lcom/appsflyer/internal/AFa1cSDK;->valueOf:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFLogger:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/appsflyer/internal/AFa1cSDK;->values:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/appsflyer/internal/AFa1cSDK;->e:Ljava/util/Map;

    .line 57
    iput-object p5, p0, Lcom/appsflyer/internal/AFa1cSDK;->d:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/appsflyer/internal/AFa1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    return-void
.end method

.method static AFInAppEventType(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 196
    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate callback parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 199
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase success: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 200
    sget-object p0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {p0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    return-void

    .line 202
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase failed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 203
    sget-object p0, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p4, :cond_1

    const-string p4, "Failed validating"

    :cond_1
    invoke-interface {p0, p4}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static values(Landroid/content/Context;Lcom/appsflyer/internal/AFh1qSDK;)Lcom/appsflyer/internal/AFf1pSDK;
    .locals 3

    .line 186
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object p0

    .line 189
    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    .line 3164
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1pSDK;

    .line 190
    new-instance v0, Lcom/appsflyer/internal/AFf1pSDK;

    invoke-direct {v0, p1, p0}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 191
    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p0

    .line 4089
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "advertiserId"

    .line 78
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK;->valueOf:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_2

    return-void

    .line 92
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "public-key"

    .line 93
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFLogger:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sig-data"

    .line 94
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->values:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "signature"

    .line 95
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->e:Ljava/util/Map;

    .line 1162
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object v5

    const-string v6, "referrer"

    const-string v7, ""

    .line 1163
    invoke-interface {v5, v6, v7}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1165
    new-instance v6, Lcom/appsflyer/internal/AFh1oSDK;

    invoke-direct {v6}, Lcom/appsflyer/internal/AFh1oSDK;-><init>()V

    .line 2110
    iput-object v5, v6, Lcom/appsflyer/internal/AFa1pSDK;->e:Ljava/lang/String;

    .line 1166
    check-cast v6, Lcom/appsflyer/internal/AFh1oSDK;

    .line 1167
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v5

    .line 1169
    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1pSDK;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "price"

    .line 1170
    iget-object v9, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "currency"

    .line 1171
    iget-object v9, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "receipt_data"

    .line 1172
    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    const-string v3, "extra_prms"

    .line 1174
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    :cond_3
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1nSDK;->i()Lcom/appsflyer/internal/AFg1zSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFg1zSDK;->values()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1177
    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 1178
    new-instance v3, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {v3, v4}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 1179
    invoke-virtual {v3, v6}, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFh1qSDK;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 1181
    invoke-static {v1, v6}, Lcom/appsflyer/internal/AFa1cSDK;->values(Landroid/content/Context;Lcom/appsflyer/internal/AFh1qSDK;)Lcom/appsflyer/internal/AFf1pSDK;

    const-string v3, "dev_key"

    .line 101
    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->valueOf:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_id"

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    .line 103
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 106
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_4
    new-instance v0, Lcom/appsflyer/internal/AFh1rSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1rSDK;-><init>()V

    .line 110
    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFh1rSDK;

    .line 112
    new-instance v2, Lcom/appsflyer/internal/AFi1cSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFi1cSDK;-><init>(Lcom/appsflyer/internal/AFd1rSDK;)V

    .line 113
    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFi1cSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFh1qSDK;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 115
    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFa1cSDK;->values(Landroid/content/Context;Lcom/appsflyer/internal/AFh1qSDK;)Lcom/appsflyer/internal/AFf1pSDK;

    move-result-object v1

    .line 116
    new-instance v2, Lcom/appsflyer/internal/AFa1cSDK$1;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/AFa1cSDK$1;-><init>(Lcom/appsflyer/internal/AFa1cSDK;Lcom/appsflyer/internal/AFf1pSDK;)V

    .line 3091
    iput-object v2, v0, Lcom/appsflyer/internal/AFa1pSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 152
    sget-object v1, Lcom/appsflyer/internal/AFb1vSDK;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v1, :cond_5

    const-string v1, "Failed Validate request + ex"

    .line 153
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1cSDK;->values:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/appsflyer/internal/AFa1cSDK;->AFInAppEventType(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
