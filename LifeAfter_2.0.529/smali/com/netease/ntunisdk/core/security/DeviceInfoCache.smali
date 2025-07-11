.class public Lcom/netease/ntunisdk/core/security/DeviceInfoCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;,
        Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;
    }
.end annotation


# static fields
.field public static final INT_TYPE_NONE:I = -0x1

.field public static final MODULE_NOT_EXIST:Ljava/lang/String; = ""

.field public static final TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->isModulesManagerExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getUDID"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/core/others/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v1

    const-string v2, "mpay"

    const-string v3, "deviceInfo"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceInfoCache getDeviceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v3}, Lcom/netease/ntunisdk/core/others/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "DeviceInfoCache getIMEIImpl from System API"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->logStacktrace(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getBuildSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    return-object v0

    :cond_2
    const-string v1, ""

    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    if-eqz v0, :cond_0

    const-string p0, "getImei"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "DeviceInfoCache getIMEI"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->b:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    if-eqz v0, :cond_0

    const-string p0, "getMacAddress"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "DeviceInfoCache getMacAddr"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/core/others/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "DeviceInfoCache getMacAddrImpl from System API"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sput-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->c:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getNetworkInfoJson()Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;
    .locals 3

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "getNetworkInfoJson"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "unknow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->a(Ljava/lang/String;)Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "getNetworkType"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetworkTypeInt()I
    .locals 1

    invoke-static {}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getNetworkInfoJson()Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getType:I

    return v0
.end method

.method public static getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->d:Z

    if-eqz v0, :cond_0

    const-string p0, "getUDID"

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ANDROID_ID_4_LOGIN:"

    goto :goto_1

    :cond_3
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_4

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->getBuildSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BUILD_SERIAL_4_LOGIN:"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "NULL_ID_4_LOGIN: (null)"

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "DeviceInfoCache getAndCacheUDID: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    sget-object p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static isModulesManagerExist()Z
    .locals 1

    const-string v0, "com.netease.ntunisdk.modules.api.ModulesManager"

    invoke-static {v0}, Lcom/netease/ntunisdk/core/others/Utils;->isClassInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
