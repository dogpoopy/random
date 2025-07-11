.class public Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;
.super Ljava/lang/Object;
.source "UniSDKDeviceIDUtils.java"


# static fields
.field private static DeviceID:Ljava/lang/String; = ""

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "k_unisdk_device_id"

.field private static final TAG:Ljava/lang/String; = "UniDeviceID"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUnisdkDeviceId()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "-2"

    return-object v0
.end method

.method static InitUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 25
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    const-string v1, "-2"

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "k_unisdk_device_id"

    .line 26
    invoke-static {v0, v2}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->getSwitcherValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    .line 28
    :cond_1
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/utils/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "UniDeviceID"

    if-nez p0, :cond_3

    const-string p0, "context is null"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "unknown_activity_Notcreate_or_Notset"

    return-object p0

    .line 37
    :cond_3
    :try_start_0
    invoke-static {}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->isSamsung()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->getDomesticSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_4
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->isDomestic(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->getDomesticSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_5
    new-instance v3, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils$1;

    invoke-direct {v3}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils$1;-><init>()V

    invoke-static {p0, v3}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getCachedGaid(Landroid/content/Context;Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string v3, "getUnisdkDeviceId gaid = null"

    .line 56
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->getSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object p0, v2

    .line 66
    :goto_0
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->saveDeviceId(Ljava/lang/String;)V

    .line 68
    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/utils/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->saveDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method private static getDomesticSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "UniDeviceID"

    const-string v1, ""

    :try_start_0
    const-string v2, "phone"

    .line 90
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, "cannot get imei"

    .line 95
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/utils/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "getUnisdkDeviceId imei = null"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->getSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static getSystemAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isDomestic(Landroid/content/Context;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->hasInstalledGooglePlayServices(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isSamsung()Z
    .locals 2

    .line 107
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static saveDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 72
    sput-object p0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set device id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniDeviceID"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    const-string v0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 75
    sget-object p0, Ltv/danmaku/ijk/media/player/utils/UniSDKDeviceIDUtils;->DeviceID:Ljava/lang/String;

    const-string v0, "k_unisdk_device_id"

    invoke-static {v0, p0}, Ltv/danmaku/ijk/media/player/utils/SPUtils;->setSwicherString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
