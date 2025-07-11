.class public final Lcom/appsflyer/internal/AFc1gSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1eSDK;


# instance fields
.field private AFInAppEventType:Z

.field valueOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Lcom/appsflyer/internal/AFd1lSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1lSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1gSDK;->values:Lcom/appsflyer/internal/AFd1lSDK;

    return-void
.end method

.method private AFInAppEventParameterName()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFc1gSDK;->AFInAppEventType:Z

    return v0
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1gSDK;->AFInAppEventParameterName()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1gSDK;->valueOf:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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
    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final AFKeystoreWrapper()V
    .locals 13

    .line 36
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1gSDK;->AFInAppEventParameterName()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1gSDK;->values:Lcom/appsflyer/internal/AFd1lSDK;

    .line 1025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 41
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1gSDK;->valueOf:Ljava/util/Map;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    new-instance v3, Lcom/appsflyer/internal/AFc1gSDK$AFa1tSDK;

    invoke-direct {v3, p0, v1, v2}, Lcom/appsflyer/internal/AFc1gSDK$AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFc1gSDK;J)V

    check-cast v3, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;

    :try_start_0
    const-string v1, "com.facebook.FacebookSdk"

    .line 1034
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sdkInitialize"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 1035
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v7

    const/4 v5, 0x0

    .line 1036
    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.facebook.applinks.AppLinkData"

    .line 1038
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.facebook.applinks.AppLinkData$CompletionHandler"

    .line 1039
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "fetchDeferredAppLinkData"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    .line 1040
    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v7

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-virtual {v1, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1042
    new-instance v9, Lcom/appsflyer/internal/AFa1qSDK$4;

    invoke-direct {v9, v1, v3}, Lcom/appsflyer/internal/AFa1qSDK$4;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;)V

    .line 1090
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v11, v4, [Ljava/lang/Class;

    aput-object v2, v11, v7

    .line 1089
    invoke-static {v1, v11, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 1094
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v9, "facebook_app_id"

    const-string v11, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v0, "Facebook app id not defined in resources"

    .line 1096
    invoke-interface {v3, v0}, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    :cond_2
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v7

    aput-object v2, v8, v4

    aput-object v1, v8, v10

    .line 1098
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FB illegal access"

    .line 1111
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "FB class missing error"

    .line 1108
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    const-string v1, "FB invocation error"

    .line 1105
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    const-string v1, "FB method missing error"

    .line 1102
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/appsflyer/internal/AFa1qSDK$AFa1uSDK;->AFInAppEventType(Ljava/lang/String;)V

    return-void
.end method

.method public final valueOf()Ljava/util/Map;
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

    .line 33
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1gSDK;->valueOf:Ljava/util/Map;

    return-object v0
.end method

.method public final valueOf(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFc1gSDK;->AFInAppEventType:Z

    return-void
.end method
