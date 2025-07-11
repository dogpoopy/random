.class public Lcom/netease/unisdk/gmbridge5/device/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 59
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    return-object v1
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;-><init>()V

    .line 22
    .local v0, "deviceInfo":Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->packageName:Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/device/DeviceUtil;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge5/device/DeviceUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->appName:Ljava/lang/String;

    .line 25
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->deviceModel:Ljava/lang/String;

    .line 26
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 27
    const-string v1, "android"

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->platform:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->language:Ljava/lang/String;

    .line 29
    const-string v1, "4.9.3"

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->gmSdkVersion:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->freePhoneSpace:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->totalPhoneSpace:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->freeSDCardSpace:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/utils/StorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->convert2UnitStr(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge5/device/DeviceInfo;->totalSDCardSpace:Ljava/lang/String;

    .line 36
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 46
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 47
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    return-object v1
.end method
