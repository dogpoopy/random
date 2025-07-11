.class final Lcom/appsflyer/internal/AFi1sSDK$1;
.super Lcom/appsflyer/internal/AFd1zSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1sSDK;->values(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFd1zSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/AFi1sSDK;


# direct methods
.method varargs constructor <init>(Lcom/appsflyer/internal/AFi1sSDK;Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/appsflyer/internal/AFd1zSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private values()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "response"

    .line 43
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFd1zSDK;->valueOf:Ljava/lang/String;

    const/16 v4, 0x80

    .line 44
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "api_ver"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v3, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "api_ver_name"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 50
    :try_start_0
    iget-object v5, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "content://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/appsflyer/internal/AFd1zSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/item/5"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    .line 54
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    const/4 v11, 0x0

    .line 50
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 57
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "OK"

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "click_ts"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "install_end_ts"

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_3

    .line 63
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v7, "install_begin_ts"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x4

    .line 65
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "track_id"

    .line 67
    invoke-virtual {v5, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v6, "referrer_ex"

    const/4 v7, 0x5

    .line 69
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v6, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v6, v6, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v7, "huawei_custom"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_2
    iget-object v5, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v6, "SERVICE_UNAVAILABLE"

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 79
    :try_start_1
    iget-object v6, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v6, v6, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    .line 83
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventType()V

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1sSDK$1;->values:Lcom/appsflyer/internal/AFi1sSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    return-object v0

    :goto_2
    if-eqz v4, :cond_5

    .line 83
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_5
    throw v0
.end method


# virtual methods
.method public final synthetic AFInAppEventType()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/appsflyer/internal/AFi1sSDK$1;->values()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
