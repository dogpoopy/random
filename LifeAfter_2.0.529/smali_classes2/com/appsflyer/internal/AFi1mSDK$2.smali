.class final Lcom/appsflyer/internal/AFi1mSDK$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1mSDK;->values(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

.field private synthetic AFKeystoreWrapper:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1mSDK;Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/internal/AFi1nSDK;->d:J

    .line 1032
    sget-object v1, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    iput-object v1, v0, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 1033
    new-instance v1, Lcom/appsflyer/internal/AFi1nSDK$3;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFi1nSDK$3;-><init>(Lcom/appsflyer/internal/AFi1nSDK;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    .line 2031
    iget-object v1, v1, Lcom/appsflyer/internal/AFi1mSDK;->AFKeystoreWrapper:Landroid/content/pm/ProviderInfo;

    .line 50
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/transaction_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 52
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFi1mSDK;->AFInAppEventType(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "app_id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 66
    :try_start_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Error to get data from providerClient "

    invoke-virtual {v2, v3, v4, v1, v7}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 63
    :try_start_2
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Failed to query unstable content providerClient"

    invoke-virtual {v2, v3, v4, v1, v7}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 60
    :try_start_3
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Failed to acquire unstable content providerClient"

    invoke-virtual {v2, v3, v4, v1, v7}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1

    .line 69
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 73
    :goto_1
    throw v1

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const-string v0, "response"

    if-eqz v1, :cond_6

    const-string v2, "transaction_id"

    .line 76
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 79
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Wrong column name"

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v3, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 82
    :cond_4
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v4, "OK"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v2, v2, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v3, "referrer"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_5
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 95
    :cond_6
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "ContentProvider query failed, got null Cursor"

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFg1mSDK;->w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    .line 3031
    iget-object v2, v2, Lcom/appsflyer/internal/AFi1mSDK;->AFKeystoreWrapper:Landroid/content/pm/ProviderInfo;

    .line 98
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "api_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    .line 4031
    iget-object v2, v2, Lcom/appsflyer/internal/AFi1mSDK;->AFKeystoreWrapper:Landroid/content/pm/ProviderInfo;

    .line 99
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api_ver_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1mSDK$2;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1mSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventType()V

    return-void
.end method
