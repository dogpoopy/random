.class public Lcom/netease/ntunisdk/core/security/UDIDLib;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/core/security/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    aget-char v2, p0, v0

    add-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getBuildSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "noahgame"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/UDIDLib;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/UDIDLib;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "%s:%s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/UDIDLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKEY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/security/UDIDLib;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getUDID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/netease/ntunisdk/core/security/UDIDLib;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    new-instance v1, Lcom/netease/ntunisdk/core/security/a;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/core/security/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/netease/ntunisdk/core/security/a;->c:Lcom/netease/ntunisdk/core/security/a$a;

    iget-object p1, v1, Lcom/netease/ntunisdk/core/security/a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/security/a$a;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "get>>>>>>>>>"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, v1, Lcom/netease/ntunisdk/core/security/a;->a:Landroid/content/Context;

    sget-object p1, Lcom/netease/ntunisdk/core/security/UDIDLib;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->a:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "9774d56d682e549c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "ANDROID_ID_4_LOGIN:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getBuildSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "BUILD_SERIAL_4_LOGIN:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "NULL_ID_4_LOGIN:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    sput-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->a:Ljava/lang/String;

    :goto_2
    iget-object p1, v1, Lcom/netease/ntunisdk/core/security/a;->c:Lcom/netease/ntunisdk/core/security/a$a;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/security/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/netease/ntunisdk/core/security/a$a;->save(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "save>>>>>>>>>"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getUDID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/netease/ntunisdk/core/security/UDIDLib;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/netease/ntunisdk/core/security/UDIDLib;->b:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
