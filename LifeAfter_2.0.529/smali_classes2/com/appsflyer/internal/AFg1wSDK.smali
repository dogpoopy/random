.class public final Lcom/appsflyer/internal/AFg1wSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFf1aSDK;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

.field private final AFInAppEventType:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/AppsFlyerProperties;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1wSDK;->AFInAppEventType:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/appsflyer/internal/AFg1wSDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFg1vSDK;
    .locals 13

    .line 29
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1wSDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerProperties;

    const-string v1, "enableTCFDataCollection"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1051
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1wSDK;->AFInAppEventType:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "IABTCF_gdprApplies"

    const/4 v3, -0x1

    .line 33
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "IABTCF_CmpSdkID"

    .line 34
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "IABTCF_PolicyVersion"

    .line 35
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "IABTCF_CmpSdkVersion"

    .line 36
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v6, v2, :cond_2

    :try_start_1
    const-string v2, "IABTCF_TCString"

    .line 40
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_2
    move-object v9, v3

    .line 42
    :goto_1
    new-instance v0, Lcom/appsflyer/internal/AFg1vSDK;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFg1vSDK;-><init>(IIIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 45
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    move-object v3, v2

    check-cast v3, Lcom/appsflyer/internal/AFg1mSDK;

    sget-object v4, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "TCF data collection exception"

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/internal/AFg1mSDK;->e$default(Lcom/appsflyer/internal/AFg1mSDK;Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    move-object v0, v1

    :goto_2
    return-object v0
.end method
