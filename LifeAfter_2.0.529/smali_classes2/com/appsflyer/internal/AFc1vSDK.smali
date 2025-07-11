.class public final Lcom/appsflyer/internal/AFc1vSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0011\u0010\u0007\u001a\u0004\u0018\u00010\tH\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u000b"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFc1vSDK;",
        "",
        "Lcom/appsflyer/internal/AFd1lSDK;",
        "p0",
        "Lcom/appsflyer/internal/AFd1xSDK;",
        "p1",
        "",
        "AFKeystoreWrapper",
        "(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)V",
        "",
        "AFInAppEventParameterName",
        "()Ljava/lang/String;",
        "<init>",
        "()V"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appsflyer/internal/AFc1vSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/internal/AFc1vSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1vSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFc1vSDK;->INSTANCE:Lcom/appsflyer/internal/AFc1vSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "KSAppsFlyerId"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static AFKeystoreWrapper()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "KSAppsFlyerRICounter"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final AFKeystoreWrapper(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    const-string v2, "OPPO device found"

    .line 16
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    .line 18
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    const/4 v1, 0x1

    const-string v2, "keyPropDisableAFKeystore"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OS SDK is="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; use KeyStore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 20
    new-instance v2, Lcom/appsflyer/AFKeystoreWrapper;

    .line 1025
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 20
    invoke-direct {v2, v3}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->values()Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object p0

    .line 1069
    iput-object p0, v2, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 1070
    iput p0, v2, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:I

    .line 1071
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/appsflyer/AFKeystoreWrapper;->values(Ljava/lang/String;)V

    goto :goto_2

    .line 1078
    :cond_1
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    .line 1079
    iget-object p1, v2, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter p1

    .line 1080
    :try_start_0
    iget v3, v2, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/appsflyer/AFKeystoreWrapper;->valueOf:I

    const-string v1, "Deleting key with alias: "

    .line 1161
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1163
    :try_start_1
    iget-object v1, v2, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1164
    :try_start_2
    iget-object v3, v2, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1165
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p0

    .line 1167
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1082
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1083
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/appsflyer/AFKeystoreWrapper;->values(Ljava/lang/String;)V

    .line 28
    :goto_2
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KSAppsFlyerId"

    invoke-virtual {v0, p1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lcom/appsflyer/AFKeystoreWrapper;->valueOf()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KSAppsFlyerRICounter"

    invoke-virtual {v0, p1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    .line 1082
    monitor-exit p1

    throw p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "OS SDK is="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; no KeyStore usage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method
