.class public final Lcom/appsflyer/internal/AFf1kSDK;
.super Lcom/appsflyer/internal/AFf1pSDK;
.source ""


# instance fields
.field private final afDebugLog:Lcom/appsflyer/internal/AFc1kSDK;

.field private final afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

.field private final afRDLog:Lcom/appsflyer/AppsFlyerProperties;

.field private final afVerboseLog:Lcom/appsflyer/internal/AFf1eSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

.field public force:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 56
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->force()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    .line 57
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->v:Lcom/appsflyer/internal/AFd1xSDK;

    .line 58
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->unregisterClient()Lcom/appsflyer/internal/AFg1bSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 59
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->e()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1eSDK;

    .line 60
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afRDLog:Lcom/appsflyer/AppsFlyerProperties;

    .line 61
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AppsFlyer2dXConversionCallback()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1kSDK;

    .line 64
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->AFLogger:Lcom/appsflyer/internal/AFe1bSDK;

    .line 1101
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p1, Lcom/appsflyer/internal/AFe1bSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1bSDK;

    .line 2101
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1fSDK;->AFInAppEventParameterName:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 11

    .line 85
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 5186
    iget v0, p1, Lcom/appsflyer/internal/AFa1pSDK;->registerClient:I

    .line 89
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName(I)V

    .line 93
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v1

    const-string v2, "meta"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6180
    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    const-string v4, "af_deeplink"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6181
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1kSDK;->valueOf()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 7170
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFf1kSDK;->afVerboseLog:Lcom/appsflyer/internal/AFf1eSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFf1eSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFh1iSDK;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 8074
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8075
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->values:Ljava/lang/String;

    const-string v6, "cdn_token"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8076
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 8077
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v6, "c_ver"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8079
    :cond_2
    iget-wide v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventParameterName:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 8080
    iget-wide v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventParameterName:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "latency"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8082
    :cond_3
    iget-wide v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventType:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 8083
    iget-wide v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventType:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "delay"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8085
    :cond_4
    iget v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->valueOf:I

    if-lez v5, :cond_5

    .line 8086
    iget v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->valueOf:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "res_code"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8088
    :cond_5
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->registerClient:Ljava/lang/Throwable;

    if-eqz v5, :cond_6

    .line 8089
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/appsflyer/internal/AFh1iSDK;->registerClient:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/appsflyer/internal/AFh1iSDK;->registerClient:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8091
    :cond_6
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->e:Lcom/appsflyer/internal/AFh1fSDK;

    if-eqz v5, :cond_7

    .line 8092
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->e:Lcom/appsflyer/internal/AFh1fSDK;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sig"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8094
    :cond_7
    iget-object v5, v3, Lcom/appsflyer/internal/AFh1iSDK;->unregisterClient:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 8095
    iget-object v3, v3, Lcom/appsflyer/internal/AFh1iSDK;->unregisterClient:Ljava/lang/String;

    const-string v5, "cdn_cache_status"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v3, "rc"

    .line 7172
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 v3, 0x0

    const-string v4, "first_launch"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_c

    if-eq v0, v5, :cond_a

    goto :goto_0

    .line 122
    :cond_a
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 11056
    new-instance v8, Ljava/util/HashMap;

    iget-object v7, v7, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 123
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 124
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_b
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 11238
    iget-object v7, v7, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v7, v4}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_c
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afRDLog:Lcom/appsflyer/AppsFlyerProperties;

    const-string v8, "waitForCustomerId"

    invoke-virtual {v7, v8, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 105
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "wait_cid"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_d
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 9052
    new-instance v8, Ljava/util/HashMap;

    iget-object v7, v7, Lcom/appsflyer/internal/AFg1bSDK;->values:Ljava/util/Map;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 109
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 9238
    iget-object v7, v7, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v9, "ddl"

    invoke-interface {v7, v9}, Lcom/appsflyer/internal/AFd1xSDK;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 110
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 111
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_e
    iget-object v7, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 10056
    new-instance v8, Ljava/util/HashMap;

    iget-object v7, v7, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 115
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    .line 116
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_f
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 132
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-gt v0, v5, :cond_17

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1kSDK;->afInfoLog:Lcom/appsflyer/internal/AFi1kSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFi1kSDK;->AFInAppEventType()[Lcom/appsflyer/internal/AFi1nSDK;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_15

    aget-object v7, v2, v3

    .line 138
    instance-of v8, v7, Lcom/appsflyer/internal/AFi1pSDK;

    .line 139
    sget-object v9, Lcom/appsflyer/internal/AFf1kSDK$5;->valueOf:[I

    .line 12052
    iget-object v10, v7, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 139
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v6, :cond_12

    if-eq v9, v5, :cond_11

    goto :goto_2

    :cond_11
    if-ne v0, v5, :cond_14

    if-nez v8, :cond_14

    .line 149
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 12056
    iget-object v9, v7, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v10, "source"

    .line 150
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "response"

    const-string v10, "TIMEOUT"

    .line 151
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12060
    iget-object v7, v7, Lcom/appsflyer/internal/AFi1nSDK;->AFLogger:Ljava/lang/String;

    const-string v9, "type"

    .line 152
    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    if-eqz v8, :cond_13

    .line 142
    move-object v8, v7

    check-cast v8, Lcom/appsflyer/internal/AFi1pSDK;

    iget-object v8, v8, Lcom/appsflyer/internal/AFi1pSDK;->valueOf:Ljava/util/Map;

    const-string v9, "rfr"

    invoke-virtual {p1, v9, v8}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 143
    iget-object v8, p0, Lcom/appsflyer/internal/AFf1kSDK;->v:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v9, "newGPReferrerSent"

    invoke-interface {v8, v9, v6}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 145
    :cond_13
    iget-object v7, v7, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 158
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "referrers"

    .line 159
    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 161
    :cond_16
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1kSDK;->force:Ljava/util/Map;

    if-eqz v0, :cond_17

    const-string v1, "fb_ddl"

    .line 162
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 166
    :cond_17
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->i:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1qSDK;->valueOf(Lcom/appsflyer/internal/AFa1pSDK;)V

    return-void
.end method

.method public final valueOf()V
    .locals 8

    .line 79
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1pSDK;->valueOf()V

    .line 80
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1kSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1bSDK;

    .line 2200
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->registerClient:Lcom/appsflyer/internal/AFa1pSDK;

    .line 3186
    iget v1, v1, Lcom/appsflyer/internal/AFa1pSDK;->registerClient:I

    .line 4129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 4131
    iget-wide v4, v0, Lcom/appsflyer/internal/AFg1bSDK;->d:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 4132
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-wide v4, v0, Lcom/appsflyer/internal/AFg1bSDK;->d:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "net"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    iget-object v1, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 4215
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4216
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_launch"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Metrics: launch start ts is missing"

    .line 4135
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
