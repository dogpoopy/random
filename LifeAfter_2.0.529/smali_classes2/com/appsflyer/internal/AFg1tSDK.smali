.class public final Lcom/appsflyer/internal/AFg1tSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static valueOf:Ljava/lang/String;


# instance fields
.field public final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%sregister.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/AFb1vSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFg1tSDK;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)V
    .locals 3

    .line 87
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1nSDK;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/appsflyer/internal/AFf1jSDK;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFf1jSDK;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/AFd1nSDK;)V

    .line 89
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->w()Lcom/appsflyer/internal/AFe1dSDK;

    move-result-object p0

    .line 1089
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1dSDK;->values:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFe1dSDK$4;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/AFe1dSDK$4;-><init>(Lcom/appsflyer/internal/AFe1dSDK;Lcom/appsflyer/internal/AFe1fSDK;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static valueOf(Landroid/content/Context;)Z
    .locals 5

    .line 43
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.google.firebase.messaging.FirebaseMessagingService"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    const/4 v3, 0x0

    const-class v4, Lcom/appsflyer/FirebaseMessagingServiceListener;

    invoke-direct {v0, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 54
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    const-string v3, "An error occurred while trying to verify manifest declarations: "

    invoke-virtual {v0, v2, v3, p0}, Lcom/appsflyer/internal/AFg1mSDK;->e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :cond_1
    return v1
.end method

.method public static values(Lcom/appsflyer/internal/AFd1xSDK;)Z
    .locals 1

    const-string v0, "sentRegisterRequestToAF"

    .line 60
    invoke-interface {p0, v0}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final AFInAppEventType()Lcom/appsflyer/internal/AFg1uSDK;
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v1, 0x0

    const-string v2, "afUninstallToken"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-wide/16 v4, 0x0

    const-string v6, "afUninstallToken_received_time"

    invoke-interface {v3, v6, v4, v5}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventType(Ljava/lang/String;J)J

    move-result-wide v6

    .line 106
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v8, "afUninstallToken_queued"

    invoke-interface {v3, v8}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;)Z

    move-result v3

    .line 107
    iget-object v9, p0, Lcom/appsflyer/internal/AFg1tSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1xSDK;

    const/4 v10, 0x0

    invoke-interface {v9, v8, v10}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    const-string v8, ","

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 112
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v0, v0, v9

    :cond_0
    cmp-long v9, v6, v4

    if-nez v9, :cond_1

    .line 117
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 122
    :try_start_0
    array-length v4, v2

    sub-int/2addr v4, v5

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 128
    new-instance v1, Lcom/appsflyer/internal/AFg1uSDK;

    invoke-direct {v1, v0, v6, v7, v3}, Lcom/appsflyer/internal/AFg1uSDK;-><init>(Ljava/lang/String;JZ)V

    :cond_2
    return-object v1
.end method
