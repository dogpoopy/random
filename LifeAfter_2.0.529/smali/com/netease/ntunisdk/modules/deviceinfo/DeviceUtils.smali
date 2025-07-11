.class public Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "UNISDK DeviceUtils"

.field private static androidId:Ljava/lang/String; = "default"

.field private static appVersionCode:I = -0x1

.field private static appVersionName:Ljava/lang/String; = null

.field private static cellID:Ljava/lang/String; = "default"

.field public static commonNetworkInfo:Landroid/net/NetworkInfo; = null

.field public static commonWifiInfo:Landroid/net/wifi/WifiInfo; = null

.field public static hasRefreshWifiList:Z = false

.field private static imei:Ljava/lang/String; = "default"

.field private static imsi:Ljava/lang/String; = "default"

.field private static isGetCommonWifiInfoFirst:Z = true

.field private static isGetWifiList:Z = true

.field public static isOversea:Z = false

.field public static isReqLocation:Z = false

.field private static macAddress:Ljava/lang/String; = "default"

.field private static macIp:Ljava/lang/String; = "default"

.field private static netIp:Ljava/lang/String; = "default"

.field private static sTransid:Ljava/lang/String; = null

.field private static serial:Ljava/lang/String; = null

.field private static simCountry:Ljava/lang/String; = "default"

.field private static systemLanguage:Ljava/lang/String; = ""

.field private static timeArea:Ljava/lang/String; = "default"

.field private static timeZone:Ljava/lang/String; = "default"

.field private static wifiListJson:Ljava/lang/String; = "default"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatIpAddress(I)Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "default"

    .line 363
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "unknown"

    :cond_1
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;

    .line 367
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getAppFilesCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 1273
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1276
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1280
    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getAppOccupiedStorage(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 1385
    :try_start_0
    new-instance v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;

    invoke-direct {v1, p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$2;-><init>(Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    .line 1409
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    const-string p1, "UNISDK DeviceUtils"

    const-string p2, "getAppSizeTop26:"

    .line 1410
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppSizeTop26(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "UNISDK DeviceUtils"

    const-string p2, "getAppSize:"

    .line 1413
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppSize(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1417
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static declared-synchronized getAppSetID(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V
    .locals 8

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 1312
    :try_start_0
    new-instance v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;

    invoke-direct {v1, p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$1;-><init>(Lorg/json/JSONObject;Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;)V

    .line 1355
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "com.google.android.gms.tasks.OnSuccessListener"

    .line 1356
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1354
    invoke-static {v2, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.google.android.gms.appset.AppSet"

    .line 1359
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getClient"

    new-array v5, v3, [Ljava/lang/Class;

    .line 1360
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    .line 1361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAppSetIdInfo"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1363
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v6, [Ljava/lang/Object;

    .line 1364
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "addOnSuccessListener"

    new-array v5, v3, [Ljava/lang/Class;

    const-string v7, "com.google.android.gms.tasks.OnSuccessListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1366
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    .line 1367
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1369
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_0

    .line 1373
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p0, "methodId"

    const-string v1, "getAppSetID"

    .line 1374
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "respCode"

    const/16 v1, 0x2710

    .line 1376
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "respMsg"

    const-string v1, "getAppSetID failed"

    .line 1377
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "native"

    const-string v1, "unisdkbase"

    .line 1378
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, v1, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->onCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1381
    :catch_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAppSize(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1436
    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "getPackageSizeInfo"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1439
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    new-instance p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$3;

    invoke-direct {p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$3;-><init>(Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1456
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1457
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v0, 0x0

    .line 1458
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "cacheSize"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "dataSize"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "appSize"

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "totalSize"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    invoke-interface {p2, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;->onFinished(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getAppSizeTop26(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "totalSize"

    const-string v1, "appSize"

    const-string v2, "dataSize"

    const-string v3, "cacheSize"

    const-string v4, "UNISDK DeviceUtils"

    :try_start_0
    const-string v5, "storagestats"

    .line 1480
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/StorageStatsManager;

    const-string v6, "storage"

    .line 1481
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1482
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 1485
    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v6

    .line 1486
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v7, 0x80

    invoke-virtual {p0, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1487
    invoke-virtual {v5, v6, p0}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f13\u5b58\u5927\u5c0f="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6570\u636e\u5927\u5c0f="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7a0b\u5e8f\u5927\u5c0f="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1493
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;->onFinished(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception p0

    .line 1501
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1505
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1507
    :cond_0
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v4, 0x0

    .line 1508
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    invoke-interface {p2, p0}, Lcom/netease/ntunisdk/modules/deviceinfo/AsyncCallback;->onFinished(Ljava/lang/Object;)V

    return-void
.end method

.method static declared-synchronized getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    const/4 v1, -0x1

    .line 1206
    :try_start_0
    sget v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1209
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1210
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I

    .line 1211
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1212
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1215
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1216
    sput v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I

    goto :goto_0

    .line 1219
    :cond_0
    sput v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I

    .line 1222
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 1226
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 1229
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1230
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1231
    sget v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I

    if-ne v1, v2, :cond_1

    .line 1232
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1235
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    .line 1236
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 1239
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;

    .line 1242
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->appVersionName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAreaZone()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "default"

    .line 522
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 529
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "UNISDK DeviceUtils"

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAreaZone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 535
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;

    :cond_1
    const-string v2, "UNISDK DeviceUtils"

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAreaZone, TimeArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 538
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getCellId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "default"

    .line 572
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    if-nez p0, :cond_1

    :try_start_1
    const-string p0, "UNISDK DeviceUtils"

    const-string v2, "Util [getCellId] context is null"

    .line 575
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;

    .line 577
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string v2, "connectivity"

    .line 580
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    .line 581
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "phone"

    .line 583
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 584
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 585
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    const-string v3, "UNISDK DeviceUtils"

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCellId nPhoneType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    instance-of p0, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_3

    .line 589
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 590
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    if-lez p0, :cond_2

    const v2, 0xffff

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    move v1, p0

    goto :goto_1

    .line 598
    :cond_3
    instance-of p0, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz p0, :cond_4

    .line 599
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 600
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v2, "UNISDK DeviceUtils"

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellId Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string p0, "UNISDK DeviceUtils"

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cellId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;

    .line 608
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->cellID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static declared-synchronized getDeviceUDID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "UNISDK DeviceUtils"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toGetGaid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZLcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "UNISDK DeviceUtils"

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableFake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 336
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedFakeGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 338
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getRandomUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 340
    :cond_0
    monitor-exit v0

    return-object p1

    .line 343
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getFakeUnisdkDeviceId(Landroid/content/Context;ZLcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    if-nez p0, :cond_0

    const-string p0, "UNISDK DeviceUtils"

    const-string p1, "context is null"

    .line 450
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 451
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v2, "UNISDK DeviceUtils"

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toGetGaid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 455
    :try_start_2
    invoke-static {p0, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedFakeGaid(Landroid/content/Context;Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 457
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getRandomUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 459
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 462
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 464
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getFirstDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "first_deviceId_cached"

    .line 1291
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/Utils;->spGet(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1295
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-char v4, v1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-char v4, v1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aget-char v4, v1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_deviceId_cached"

    .line 1298
    invoke-static {p0, v2, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/Utils;->spCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v1, ""

    :cond_0
    :goto_0
    const-string p0, "UNISDK DeviceUtils"

    .line 1305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstDeviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getGateWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "UNISDK DeviceUtils"

    const-string v2, "getGateWay start"

    .line 619
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "UNISDK DeviceUtils"

    const-string v2, "getGateWay param error"

    .line 623
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    monitor-exit v0

    return-object v1

    .line 626
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_1

    .line 628
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 629
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/Utils;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string p0, "UNISDK DeviceUtils"

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGateWay gateWayIp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v2, "UNISDK DeviceUtils"

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGateWay e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    if-eqz p0, :cond_a

    :try_start_0
    const-string v1, "default"

    .line 200
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "default"

    .line 202
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->netIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->netIp:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string v1, "wifi"

    .line 206
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_5

    .line 208
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 p0, 0x0

    .line 212
    sput-boolean p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z

    .line 214
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_3

    .line 215
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 216
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;

    .line 217
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "127.0.0.1"

    .line 218
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, "127.0.0.1"

    .line 221
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;

    .line 223
    :cond_4
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macIp:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_5
    :try_start_3
    const-string p0, "127.0.0.1"

    .line 226
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 228
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 230
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_7

    .line 231
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 236
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "127.0.0.1"

    .line 239
    :cond_9
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->netIp:Ljava/lang/String;

    .line 240
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->netIp:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    :cond_a
    :try_start_4
    const-string p0, "127.0.0.1"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static declared-synchronized getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v1, :cond_0

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    :try_start_1
    const-string v1, "default"

    .line 165
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "UNISDK DeviceUtils"

    const-string v2, "getMacAddress..."

    .line 166
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "wifi"

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_2

    .line 173
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 p0, 0x0

    .line 175
    sput-boolean p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z

    .line 177
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_2

    .line 178
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 183
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    const-string p0, "UNISDK DeviceUtils"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "macAddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v1, :cond_0

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "default"

    .line 301
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    monitor-exit v0

    return-object p0

    :cond_2
    const/4 v1, 0x1

    .line 310
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_6

    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    :try_start_4
    const-string v2, "phone"

    .line 317
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_5
    const-string v2, "UNISDK DeviceUtils"

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileIMEI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    const-string p0, "UNISDK DeviceUtils"

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileIMEI, IMEI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    monitor-exit v0

    return-object v1

    :cond_6
    :try_start_6
    const-string p0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 329
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v1, :cond_0

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "default"

    .line 263
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    monitor-exit v0

    return-object p0

    :cond_2
    const/4 v1, 0x1

    .line 272
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_5

    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v2, "phone"

    .line 278
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_5
    const-string v2, "UNISDK DeviceUtils"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileIMSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    const-string p0, "UNISDK DeviceUtils"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileIMSI, IMSI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    monitor-exit v0

    return-object v1

    :cond_5
    :try_start_6
    const-string p0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getMobileType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-class p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter p0

    .line 1264
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1266
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method static declared-synchronized getNetworkInfoJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "{}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "getNetworkInfoJson"

    .line 746
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const-string p0, "getNetworkInfoJson mContext is null"

    const-string v3, "UNISDK DeviceUtils"

    .line 749
    invoke-static {v3, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "respCode"

    const/4 v4, 0x2

    .line 750
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "respMsg"

    .line 751
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 754
    :cond_0
    :try_start_2
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_1

    const-string v3, "connectivity"

    .line 755
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 757
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    .line 760
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_2

    const-string p0, "getSubtypeName"

    .line 761
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "getType"

    .line 762
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "getDetailedState"

    .line 763
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "isConnected"

    .line 764
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "getSubtype"

    .line 765
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "isAvailable"

    .line 766
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "getTypeName"

    .line 767
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "getState"

    .line 769
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "isConnectedOrConnecting"

    .line 773
    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "respCode"

    const/4 v3, 0x0

    .line 775
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "respMsg"

    const-string v3, "success"

    .line 776
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p0, "respCode"

    const/4 v3, 0x5

    .line 778
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "respMsg"

    const-string v3, "commonNetworkInfo is null, may be the network is disconnected"

    .line 779
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 784
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkInfoJson Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UNISDK DeviceUtils"

    .line 785
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "methodId"

    const-string v4, "getNetworkInfoJson"

    .line 788
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "respCode"

    const/16 v4, 0x2710

    .line 789
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "respMsg"

    .line 790
    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 793
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p0, "UNISDK DeviceUtils"

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkInfoJson Network Info Json : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 797
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "UNISDK DeviceUtils"

    const-string v2, "getNetworkType mContext is null"

    .line 649
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    monitor-exit v0

    return-object v1

    .line 652
    :cond_0
    :try_start_2
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_1

    const-string v2, "connectivity"

    .line 653
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 655
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    .line 658
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 659
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v2, 0x1

    if-ne v2, p0, :cond_2

    const-string v1, "wifi"

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const/4 v2, 0x4

    if-eq v2, p0, :cond_3

    const/4 v2, 0x2

    if-eq v2, p0, :cond_3

    const/4 v2, 0x5

    if-eq v2, p0, :cond_3

    const/4 v2, 0x3

    if-ne v2, p0, :cond_4

    :cond_3
    const-string v1, "mobile"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string v2, "UNISDK DeviceUtils"

    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkType Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string p0, "UNISDK DeviceUtils"

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType Network Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getNetworkType2(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "UNISDK DeviceUtils"

    const-string p1, "getNetworkType2 mContext is null"

    .line 688
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit v0

    return-object v1

    .line 691
    :cond_0
    :try_start_2
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "connectivity"

    .line 692
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2

    .line 694
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    .line 697
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_6

    .line 698
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_3

    const-string v1, "unconnected"

    goto :goto_1

    .line 701
    :cond_3
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    .line 702
    sget-object p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const-string v2, "UNISDK DeviceUtils"

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkType2 type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v2, p0, :cond_4

    const-string v1, "wifi"

    goto :goto_1

    :cond_4
    if-nez p0, :cond_6

    const/16 p0, 0x14

    if-eq p1, p0, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "2G"

    move-object v1, p0

    :pswitch_1
    const-string v1, "3G"

    :pswitch_2
    const-string v1, "4G"

    :cond_5
    const-string v1, "5G"

    :goto_0
    const-string v1, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "UNISDK DeviceUtils"

    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType2 Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string p0, "UNISDK DeviceUtils"

    .line 737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkType2 Network Type : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 738
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static declared-synchronized getNetworkType4Downloader(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "UNISDK DeviceUtils"

    const-string p1, "getNetworkType4Downloader mContext is null"

    .line 886
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    monitor-exit v0

    return-object v1

    .line 889
    :cond_0
    :try_start_2
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "connectivity"

    .line 890
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2

    .line 892
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    .line 895
    :cond_2
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 896
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_3

    const-string p0, "wifi"

    :goto_0
    move-object v1, p0

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_5

    const/4 p1, 0x4

    if-eq p1, p0, :cond_5

    const/4 p1, 0x2

    if-eq p1, p0, :cond_5

    const/4 p1, 0x5

    if-eq p1, p0, :cond_5

    const/4 p1, 0x3

    if-ne p1, p0, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x9

    if-ne p1, p0, :cond_6

    const-string p0, "lan"

    goto :goto_0

    :cond_5
    :goto_1
    const-string p0, "mobile"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "UNISDK DeviceUtils"

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType4Downloader Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string p0, "UNISDK DeviceUtils"

    .line 912
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkType4Downloader Network Type : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 913
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method static declared-synchronized getOsVer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-class p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter p0

    .line 1255
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1257
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 917
    :try_start_0
    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v1, :cond_0

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit v0

    return-object p0

    .line 921
    :cond_0
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "UNISDK DeviceUtils"

    const-string v2, "getSerial"

    .line 922
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 924
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getSerialOnAndroidP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "UNISDK DeviceUtils"

    const-string v1, "getSerial from System API"

    .line 926
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    .line 928
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 929
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    .line 933
    :cond_2
    :goto_0
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default"

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->serial:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getSerialOnAndroidP(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 940
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/deviceinfo/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UNISDK DeviceUtils"

    const-string v2, "getSerialOnAndroidP from System API"

    .line 942
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :cond_0
    monitor-exit v0

    return-object p0

    .line 956
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "UNISDK DeviceUtils"

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSerialOnAndroidP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception p0

    :try_start_2
    const-string v1, "UNISDK DeviceUtils"

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSerialOnAndroidP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getSimCountryIso(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "default"

    .line 994
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->simCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->simCountry:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "phone"

    .line 1002
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_4
    const-string v1, "UNISDK DeviceUtils"

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCountry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :goto_0
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UNISDK DeviceUtils"

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCountry, simCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->simCountry:Ljava/lang/String;

    .line 1020
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->simCountry:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getSystemLanguage(Z)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 968
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->systemLanguage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->systemLanguage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 971
    :cond_0
    :try_start_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p0, v1, :cond_1

    .line 972
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 975
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->systemLanguage:Ljava/lang/String;

    :cond_2
    const-string p0, "UNISDK DeviceUtils"

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrUtil [getSystemLanguage] final System Language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->systemLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->systemLanguage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTimeZone()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "default"

    .line 485
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 490
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    .line 491
    invoke-virtual {v1, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "+"

    .line 493
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\\+|\\:"

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 496
    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const/16 v1, 0x64

    const/4 v3, 0x1

    .line 500
    :try_start_2
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :catch_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_1
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "UNISDK DeviceUtils"

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeZone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 515
    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    :cond_2
    const-string v1, "UNISDK DeviceUtils"

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeZone, TimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTransid(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "UNISDK DeviceUtils"

    const-string v2, "DeviceUtils [getTransid]"

    .line 137
    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string p0, "UNISDK DeviceUtils"

    const-string p1, "DeviceUtils [getTransid] ctx is null"

    .line 140
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "unknow"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    .line 144
    :cond_1
    :try_start_1
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    invoke-static {p0, p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getDeviceUDID(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 147
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%09d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const v6, 0x3b9aca00

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;

    :cond_2
    const-string p0, "UNISDK DeviceUtils"

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeviceUtils [getTransid] sTransid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->sTransid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getUnisdkDeviceId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;ZLcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getUnisdkDeviceId(Landroid/content/Context;ZLcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    if-nez p0, :cond_0

    const-string p0, "UNISDK DeviceUtils"

    const-string p1, "context is null"

    .line 394
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v2, "UNISDK DeviceUtils"

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toGetGaid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    :try_start_2
    sget-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isOversea:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 401
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->getCachedGaid(Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils$Callback;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "UNISDK DeviceUtils"

    .line 402
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnisdkDeviceId getCachedGaid: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    const-string p0, "unknown"

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 407
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 408
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 442
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    move-object p0, v1

    .line 444
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getUnisdkDeviceId(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "UNISDK DeviceUtils"

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableFake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 373
    invoke-static {p0, p1, p2}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getFakeUnisdkDeviceId(Landroid/content/Context;ZLcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils$GaidCallback;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 375
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->getUnisdkDeviceId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getWifiListJson(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 1030
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "wifi"

    .line 1032
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    sput-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1037
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetCommonWifiInfoFirst:Z

    :cond_1
    const/4 v1, 0x0

    .line 1042
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v4, 0x2710

    .line 1044
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "methodId"

    const-string v6, "getWifiListJson"

    .line 1045
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-nez p0, :cond_2

    const-string p0, "getWifiListJson mContext is null"

    const-string p1, "UNISDK DeviceUtils"

    .line 1049
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "respCode"

    const/4 v2, 0x2

    .line 1050
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "respMsg"

    .line 1051
    invoke-virtual {v5, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "wifi"

    .line 1052
    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1053
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    .line 1054
    sput-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetWifiList:Z

    const-string p0, "UNISDK DeviceUtils"

    .line 1055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiListJson wifiList Json : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1059
    :cond_2
    :try_start_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string p0, "getWifiListJson android.permission.ACCESS_COARSE_LOCATION or android.permission.ACCESS_FINE_LOCATION has not been granted"

    const-string p1, "UNISDK DeviceUtils"

    .line 1061
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "respCode"

    const/4 v2, 0x4

    .line 1062
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "respMsg"

    .line 1063
    invoke-virtual {v5, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "wifi"

    .line 1064
    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    .line 1066
    sput-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetWifiList:Z

    const-string p0, "UNISDK DeviceUtils"

    .line 1067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiListJson wifiList Json : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1071
    :cond_3
    :try_start_6
    sget-boolean v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isReqLocation:Z

    if-nez v6, :cond_5

    .line 1072
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_4

    .line 1074
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    sput-object v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1076
    :cond_4
    sput-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isReqLocation:Z

    :cond_5
    if-nez p1, :cond_6

    .line 1079
    invoke-static {}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isValidWifiList()Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetWifiList:Z

    if-eqz v6, :cond_6

    .line 1080
    sput-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetWifiList:Z

    const/4 p1, 0x1

    :cond_6
    if-nez p1, :cond_7

    .line 1084
    sget-boolean v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->hasRefreshWifiList:Z

    if-eqz v6, :cond_7

    .line 1085
    sput-boolean v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->hasRefreshWifiList:Z

    const/4 p1, 0x1

    :cond_7
    if-nez p1, :cond_8

    const-string p0, "UNISDK DeviceUtils"

    .line 1090
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiListJson wifiList Json : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1094
    :cond_8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_f

    .line 1096
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1097
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1099
    sget-object p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-nez p1, :cond_9

    sget-object p1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_9
    const-string p1, ""

    .line 1100
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 1101
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1103
    :try_start_8
    sget-boolean v8, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-eqz v8, :cond_a

    const-string v8, "ssid"

    const-string v9, "unknown"

    .line 1104
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "bssid"

    const-string v9, "unknown"

    .line 1105
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_a
    const-string v8, "ssid"

    .line 1107
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "bssid"

    .line 1108
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v8, "frequency"

    .line 1111
    iget v9, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1113
    invoke-static {p1}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isValidBssid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "connected"

    .line 1114
    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_b
    const-string v8, "connected"

    .line 1116
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    const-string v8, "rss"

    .line 1119
    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1121
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v6

    .line 1124
    :try_start_9
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1129
    :cond_c
    sget-boolean p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceInfoModule;->disableAccessData:Z

    if-nez p0, :cond_f

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_f

    .line 1130
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 1131
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isValidBssid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1132
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1134
    :try_start_a
    sget-object v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 1135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "\""

    const-string v8, ""

    .line 1136
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_d
    const-string v7, "ssid"

    .line 1138
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "bssid"

    .line 1139
    invoke-virtual {p1, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt p0, v6, :cond_e

    const-string p0, "frequency"

    .line 1141
    sget-object v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-virtual {p1, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    :cond_e
    const-string p0, "frequency"

    .line 1143
    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    const-string p0, "connected"

    .line 1145
    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "rss"

    .line 1147
    sget-object v6, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-virtual {p1, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1149
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 1152
    :try_start_b
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 1159
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1162
    :cond_f
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "respCode"

    .line 1163
    invoke-virtual {v5, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "respMsg"

    const-string p1, "success"

    .line 1164
    invoke-virtual {v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    sput-boolean v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->isGetWifiList:Z

    goto :goto_7

    :cond_10
    const-string p0, "respCode"

    .line 1167
    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "respMsg"

    const-string p1, "getWifiListJson wifiList is empty"

    .line 1168
    invoke-virtual {v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_7
    const-string p0, "wifi"

    .line 1171
    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    :catch_4
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    move-object v5, v1

    .line 1173
    :goto_8
    :try_start_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiListJson Exception="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UNISDK DeviceUtils"

    .line 1174
    invoke-static {p1, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1176
    :try_start_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    const-string v1, "methodId"

    const-string v2, "getWifiListJson"

    .line 1177
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "respCode"

    .line 1178
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "respMsg"

    .line 1179
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "wifi"

    .line 1180
    invoke-virtual {p1, p0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v5, p1

    goto :goto_a

    :catch_6
    move-exception p0

    move-object v5, p1

    goto :goto_9

    :catch_7
    move-exception p0

    .line 1182
    :goto_9
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1185
    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    const-string p0, "UNISDK DeviceUtils"

    .line 1186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiListJson wifiList Json : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b
.end method

.method static declared-synchronized getWifiSignal(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "wifi"

    .line 551
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 552
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    const/4 v2, 0x5

    invoke-static {p0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    :cond_0
    const-string p0, "UNISDK DeviceUtils"

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiSignal, signalLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "UNISDK DeviceUtils"

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiSignal, exeption="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static isDomestic(Landroid/content/Context;)Z
    .locals 1

    .line 481
    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->hasInstalledGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/ntunisdk/modules/deviceinfo/GaidUtils;->hasInstalledAmazonAdvertisingId(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static declared-synchronized isInvalidImei(Ljava/lang/String;)Z
    .locals 6

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 468
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 469
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 471
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    .line 472
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 473
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v5, v3, :cond_1

    .line 474
    monitor-exit v0

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static isValidBssid(Ljava/lang/String;)Z
    .locals 1

    .line 1191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidWifiList()Z
    .locals 4

    const-string v0, "wifi"

    const/4 v1, 0x0

    .line 1197
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->wifiListJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method static declared-synchronized ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "unknown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "DCTOOL"

    const-string v2, "\u68c0\u67e5\u4e0b\u521d\u59cb\u5316\u65f6\u4f20\u5165\u7684AppContext\u662f\u5426\u4e3anull\uff0c\u4e00\u822c\u662f\u5728\u8c03\u7528\u65f6\u95f4\u8fc7\u65e9\u5bfc\u81f4AppContext\u4e3anull\u5bfc\u81f4\u7684\u3002\u8fd9\u79cd\u60c5\u51b5\u53ef\u4ee5\u5ffd\u7565\uff1b\u6216\u8005\u8c03\u6574\u4e0b\u521d\u59cb\u5316\u7684\u8c03\u7528\u65f6\u673a\uff1b\u6216\u8005\u589e\u52a0\u5224\u65ad\uff0c\u5728AppContext\u4e3anull\u7684\u65f6\u5019\uff0c\u4e0d\u8981\u8c03\u7528\u8bca\u65ad\u3002"

    .line 812
    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    monitor-exit v0

    return-object v1

    .line 817
    :cond_0
    :try_start_2
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_1

    const-string v2, "connectivity"

    .line 818
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 820
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    .line 823
    :cond_1
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 824
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WIFI"

    .line 825
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "wifi"

    goto :goto_1

    :cond_2
    const-string v2, "MOBILE"

    .line 828
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 829
    sget-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    .line 831
    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->commonNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    if-eq p0, v3, :cond_5

    packed-switch p0, :pswitch_data_0

    const-string p0, "TD-SCDMA"

    .line 859
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "WCDMA"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "CDMA2000"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "3G"

    goto :goto_1

    :pswitch_0
    const-string v1, "4G"

    goto :goto_1

    :pswitch_1
    const-string v1, "3G"

    goto :goto_1

    :pswitch_2
    const-string v1, "2G"

    goto :goto_1

    :cond_5
    const-string v1, "5G"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 870
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    const-string p0, "DCTOOL"

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting NETWORK_TYPE in java : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 873
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setAndroidId(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->androidId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setImei(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imei:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setImsi(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->imsi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMacAddress(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->macAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTimeArea(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeArea:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTimeZone(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default"

    sget-object v2, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    sput-object p0, Lcom/netease/ntunisdk/modules/deviceinfo/DeviceUtils;->timeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
