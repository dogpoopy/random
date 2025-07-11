.class public final Lcom/appsflyer/internal/AFh1nSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:Ljava/lang/String;

.field public final AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

.field private final AFKeystoreWrapper:Z

.field public final valueOf:Lcom/appsflyer/internal/AFh1pSDK;

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ver"

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    const-string v1, "test_mode"

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFKeystoreWrapper:Z

    .line 31
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    sget-object p1, Lcom/appsflyer/internal/AFh1pSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1pSDK;

    :goto_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1nSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    const/4 p1, 0x0

    const-string v1, "features"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    new-instance p1, Lcom/appsflyer/internal/AFh1mSDK;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFh1mSDK;-><init>(Lorg/json/JSONObject;)V

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error in RC config parsing"

    .line 42
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Failed to parse remote configuration JSON"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Failed to parse remote configuration JSON: originalJson is null"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFh1nSDK;

    .line 82
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFKeystoreWrapper:Z

    iget-boolean v2, p1, Lcom/appsflyer/internal/AFh1nSDK;->AFKeystoreWrapper:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    iget-object v2, p1, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFKeystoreWrapper:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->values:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1mSDK;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
