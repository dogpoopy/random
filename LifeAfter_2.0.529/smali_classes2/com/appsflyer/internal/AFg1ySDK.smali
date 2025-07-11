.class public final Lcom/appsflyer/internal/AFg1ySDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFg1xSDK;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

.field private final AFInAppEventType:Lcom/appsflyer/internal/AFd1sSDK;

.field private final valueOf:Lcom/appsflyer/internal/AFf1aSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFf1aSDK;Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/AppsFlyerProperties;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1ySDK;->valueOf:Lcom/appsflyer/internal/AFf1aSDK;

    .line 30
    iput-object p2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1sSDK;

    .line 31
    iput-object p3, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper(Ljava/util/Map;Lcom/appsflyer/internal/AFe1bSDK;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFe1bSDK;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->valueOf:Lcom/appsflyer/internal/AFf1aSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFf1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFg1vSDK;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1sSDK;

    .line 1023
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1sSDK;->registerClient:Lcom/appsflyer/AppsFlyerConsent;

    .line 1047
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    const-string v4, "gdpr_applies"

    if-eqz v2, :cond_2

    .line 1062
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 1063
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerConsent;->isUserSubjectToGDPR()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerConsent;->getHasConsentForDataUsage()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "ad_user_data_enabled"

    .line 1065
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_0
    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerConsent;->getHasConsentForAdsPersonalization()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "ad_personalization_enabled"

    .line 1068
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v6, "manual"

    .line 1050
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1073
    :goto_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 2004
    iget v8, v1, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    .line 1074
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "policy_version"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    iget v8, v1, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    .line 1075
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "cmp_sdk_id"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    iget v8, v1, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    .line 1076
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "cmp_sdk_version"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "tcstring"

    if-eqz v2, :cond_4

    const/4 v1, -0x1

    .line 1080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3005
    :cond_4
    iget v2, v1, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    .line 1083
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v1, v1, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    .line 1084
    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "tcf"

    .line 1053
    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_6

    const-string v1, "consent_data"

    .line 1057
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    :cond_6
    sget-object v1, Lcom/appsflyer/internal/AFe1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1bSDK;

    if-ne p2, v1, :cond_7

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    .line 3095
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

    const-string v1, "enableTCFDataCollection"

    invoke-virtual {p2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 3096
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 3097
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3098
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

    invoke-virtual {p2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 3097
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "api"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method
