.class final Lcom/appsflyer/internal/AFb1jSDK;
.super Lcom/appsflyer/internal/AFd1zSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFd1zSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1"

    aput-object v2, v0, v1

    const-string v1, "com.facebook.katana.provider.AttributionIdProvider"

    .line 14
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/appsflyer/internal/AFd1zSDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private values()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "aid"

    .line 30
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appsflyer/internal/AFd1zSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 30
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 36
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_3
    throw v1
.end method


# virtual methods
.method public final synthetic AFInAppEventType()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1jSDK;->values()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final AFKeystoreWrapper()Ljava/lang/String;
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 22
    invoke-super {p0}, Lcom/appsflyer/internal/AFd1zSDK;->valueOf()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic valueOf()Ljava/lang/Object;
    .locals 2

    .line 2042
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2022
    invoke-super {p0}, Lcom/appsflyer/internal/AFd1zSDK;->valueOf()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
