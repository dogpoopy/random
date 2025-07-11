.class public final Lcom/appsflyer/internal/AFh1mSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

.field public final valueOf:Lcom/appsflyer/internal/AFh1lSDK;

.field public final values:Lcom/appsflyer/internal/AFh1kSDK;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    .line 16
    invoke-static {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFKeystoreWrapper(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1lSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1mSDK;->valueOf:Lcom/appsflyer/internal/AFh1lSDK;

    .line 17
    invoke-static {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventParameterName(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1kSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFh1mSDK;->values:Lcom/appsflyer/internal/AFh1kSDK;

    return-void
.end method

.method private static AFInAppEventParameterName(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1kSDK;
    .locals 4

    const/4 v0, 0x0

    .line 23
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v1, "meta_data"

    .line 24
    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventParameterName(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "send_rate"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 25
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 26
    new-instance p0, Lcom/appsflyer/internal/AFh1kSDK;

    invoke-direct {p0, v1, v2}, Lcom/appsflyer/internal/AFh1kSDK;-><init>(D)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 23
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_1
    check-cast p0, Lcom/appsflyer/internal/AFh1kSDK;

    return-object p0
.end method

.method private static AFInAppEventParameterName(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "data"

    .line 69
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "v1"

    .line 70
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static AFInAppEventType(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1jSDK;
    .locals 12

    const-string v0, ""

    const/4 v1, 0x0

    .line 46
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v2, "r_debugger"

    .line 47
    invoke-static {p0, v2}, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventParameterName(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "ttl"

    .line 49
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v2, "counter"

    .line 50
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "app_ver"

    .line 52
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sdk_ver"

    .line 53
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "ratio"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 54
    invoke-virtual {p0, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v6, v2

    const-string v2, "tags"

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 1078
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_0
    if-ge v3, v7, :cond_0

    .line 1079
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1080
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v7, v2

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    move-object v7, p0

    .line 56
    :goto_1
    new-instance p0, Lcom/appsflyer/internal/AFh1jSDK;

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/appsflyer/internal/AFh1jSDK;-><init>(JFLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object p0, v1

    .line 46
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, v1

    :cond_3
    check-cast p0, Lcom/appsflyer/internal/AFh1jSDK;

    return-object p0
.end method

.method private static AFKeystoreWrapper(Lorg/json/JSONObject;)Lcom/appsflyer/internal/AFh1lSDK;
    .locals 8

    const/4 v0, 0x0

    .line 32
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v1, "exc_mngr"

    .line 33
    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventParameterName(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "sdk_ver"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "min"

    const/4 v2, -0x1

    .line 37
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "expire"

    .line 38
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "ttl"

    const-wide/16 v6, -0x1

    .line 39
    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 40
    new-instance p0, Lcom/appsflyer/internal/AFh1lSDK;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1lSDK;-><init>(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 32
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_1
    check-cast p0, Lcom/appsflyer/internal/AFh1lSDK;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    .line 91
    check-cast p1, Lcom/appsflyer/internal/AFh1mSDK;

    .line 93
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1mSDK;->valueOf:Lcom/appsflyer/internal/AFh1lSDK;

    iget-object v3, p1, Lcom/appsflyer/internal/AFh1mSDK;->valueOf:Lcom/appsflyer/internal/AFh1lSDK;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1mSDK;->values:Lcom/appsflyer/internal/AFh1kSDK;

    iget-object v3, p1, Lcom/appsflyer/internal/AFh1mSDK;->values:Lcom/appsflyer/internal/AFh1kSDK;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.appsflyer.internal.model.rc.Features"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1mSDK;->valueOf:Lcom/appsflyer/internal/AFh1lSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1mSDK;->values:Lcom/appsflyer/internal/AFh1kSDK;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1jSDK;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
