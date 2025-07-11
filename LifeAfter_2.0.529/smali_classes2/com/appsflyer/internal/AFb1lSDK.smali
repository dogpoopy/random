.class public final Lcom/appsflyer/internal/AFb1lSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static valueOf(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const-string v0, "Exception while trying to close the InstallationFile"

    const/4 v1, 0x0

    .line 59
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array v1, p0, [B

    .line 61
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 62
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 71
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v1

    :goto_0
    :try_start_3
    const-string v3, "Exception while reading InstallationFile: "

    .line 64
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 68
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 71
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    move-object v1, v2

    .line 74
    :goto_2
    new-instance p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :goto_4
    if-eqz v1, :cond_2

    .line 68
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 71
    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_2
    :goto_5
    throw p0
.end method

.method public static declared-synchronized values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/appsflyer/internal/AFb1lSDK;

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 28
    sget-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 30
    :cond_0
    :try_start_1
    sget-object v1, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "AF_INSTALLATION"

    const/4 v2, 0x0

    .line 1090
    invoke-interface {p1, v1, v2}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    sput-object v1, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 36
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 2025
    iget-object p0, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "AF_INSTALLATION"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2086
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    sput-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1lSDK;->valueOf(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v1, "AF_INSTALLATION"

    .line 2094
    invoke-interface {p1, v1, p0}, Lcom/appsflyer/internal/AFd1xSDK;->values(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "Error getting AF unique ID"

    .line 45
    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_1
    sget-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    const-string p1, "uid"

    sget-object v1, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    sget-object p0, Lcom/appsflyer/internal/AFb1lSDK;->AFInAppEventParameterName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
