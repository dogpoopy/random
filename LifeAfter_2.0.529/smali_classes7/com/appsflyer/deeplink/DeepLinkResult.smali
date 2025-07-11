.class public Lcom/appsflyer/deeplink/DeepLinkResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/deeplink/DeepLinkResult$Error;,
        Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    }
.end annotation


# instance fields
.field private final deepLink:Lcom/appsflyer/deeplink/DeepLink;

.field private final error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field private final status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;


# direct methods
.method public constructor <init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    .line 21
    iput-object p2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    if-eqz p2, :cond_0

    .line 23
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 25
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeepLink()Lcom/appsflyer/deeplink/DeepLink;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    return-object v0
.end method

.method public getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method

.method public getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deepLink"

    .line 48
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    .line 49
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 50
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error while creating deep link json"

    .line 52
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
