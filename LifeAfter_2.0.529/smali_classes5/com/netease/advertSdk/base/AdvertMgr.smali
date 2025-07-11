.class public Lcom/netease/advertSdk/base/AdvertMgr;
.super Ljava/lang/Object;
.source "AdvertMgr.java"


# static fields
.field private static final AD_SDK_PREFFIX:Ljava/lang/String; = "com.netease.advertSdk."

.field private static final HTTP_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final InMobiAnalytics:Ljava/lang/String; = "com.inmobi.analytics.InMobiAnalytics"

.field private static final SDC_INNER_UPLOAD_URL:Ljava/lang/String; = "https://unisdk.proxima.nie.netease.com"

.field private static final SDC_OVERSEA_UPLOAD_URL:Ljava/lang/String; = "https://unisdk.proxima.nie.easebar.com"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.1.0"

.field private static final TAG:Ljava/lang/String; = "AdvertMgr"

.field private static final inst:Lcom/netease/advertSdk/base/AdvertMgr;


# instance fields
.field private adSdkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cb:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

.field private channel:Ljava/lang/String;

.field private hasInit:Z

.field protected myCtx:Landroid/content/Context;

.field private propDict:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/netease/advertSdk/base/AdvertMgr;

    invoke-direct {v0}, Lcom/netease/advertSdk/base/AdvertMgr;-><init>()V

    sput-object v0, Lcom/netease/advertSdk/base/AdvertMgr;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->propDict:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->hasInit:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    .line 2397
    new-instance v0, Lcom/netease/advertSdk/base/AdvertMgr$1;

    invoke-direct {v0, p0}, Lcom/netease/advertSdk/base/AdvertMgr$1;-><init>(Lcom/netease/advertSdk/base/AdvertMgr;)V

    iput-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->cb:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    return-void
.end method

.method private checkCurrentPlatform(Landroid/content/Context;)V
    .locals 4

    const-string v0, "AdvertMgr"

    const-string v1, "checkCurrentPlatform"

    .line 702
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ntadvert_data"

    .line 706
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "ntadvert_data empty"

    .line 709
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    new-array v2, v2, [B

    .line 712
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 714
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ntadvert_data config not found"

    .line 716
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 718
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "ntadvert_data:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ";"

    .line 720
    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 721
    array-length v3, v1

    :goto_1
    if-lt v2, v3, :cond_1

    goto :goto_4

    :cond_1
    aget-object p1, v1, v2

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->initClass(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "read class from dex"

    .line 725
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 730
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 731
    new-instance v0, Ldalvik/system/DexFile;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz p1, :cond_4

    .line 737
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 738
    :cond_3
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    invoke-direct {p0, v1}, Lcom/netease/advertSdk/base/AdvertMgr;->initClass(Ljava/lang/String;)V

    goto :goto_2

    .line 742
    :cond_4
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt p1, v1, :cond_5

    .line 744
    :try_start_2
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 746
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 734
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private checkEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "AD_SDK_CUSTOM_USERID"

    .line 2359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "INSTALL"

    .line 2360
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LAUNCH"

    .line 2361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "chartboost"

    .line 2365
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "ON_BACKPRESSED"

    .line 2368
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ON_DESTROY"

    .line 2369
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ON_PAUSE"

    .line 2370
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ON_RESUME"

    .line 2371
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ON_START"

    .line 2372
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "ON_STOP"

    .line 2373
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public static getInst()Lcom/netease/advertSdk/base/AdvertMgr;
    .locals 1

    .line 95
    sget-object v0, Lcom/netease/advertSdk/base/AdvertMgr;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-object v0
.end method

.method private initClass(Ljava/lang/String;)V
    .locals 6

    const-string v0, "com.ipinyou.sdk.ad.factories.AdConversionFactory"

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AdvertMgr"

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v2, "pinyou"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pinyou_data"

    .line 504
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 505
    invoke-direct {p0, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.optaim.receiver.AppInstallReceiver"

    .line 509
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "INIT"

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "zyz"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zyz_data"

    .line 511
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 512
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->zyz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 513
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.netease.advertSdk.SdkFacebook"

    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "facebook_ad_data"

    .line 519
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "facebook_ad"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->facebook_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 522
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "facebook"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "facebook_data"

    .line 525
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 526
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->facebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.netease.advertSdk.SdkAppsflyer"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "appsflyer"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appsflyer_data"

    .line 535
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 536
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->appsflyer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 537
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "com.netease.advertSdk.SdkAdjust"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "adjust"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adjust_data"

    .line 543
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 544
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->adjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 545
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "com.netease.advertSdk.SdkSingular"

    .line 549
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "singular"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "singular_data"

    .line 551
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 552
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->singular(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 553
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "com.netease.advertSdk.SdkSegment"

    .line 557
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 558
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "segment"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "segment_data"

    .line 559
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 560
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->segment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 561
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.chartboost.sdk.Chartboost"

    .line 565
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 566
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "chartboost"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chartboost_data"

    .line 567
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 568
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->chartboost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 569
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "com.netease.advertSdk.SdkAdmob"

    .line 573
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "admob_ad_data"

    .line 575
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 576
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "admob_ad"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->admob_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 578
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "admob_data"

    .line 580
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 581
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "admob"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->admob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "com.netease.advertSdk.SdkInmobi"

    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "inmobi_ad_data"

    .line 590
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 591
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "inmobi_ad"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->inmobi_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 593
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_b
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "inmobi"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "inmobi_data"

    .line 596
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 597
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->inmobi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 598
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "com.mobvista.Tracker"

    .line 603
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 604
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "advertiser"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "advertiser_data"

    .line 605
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 606
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->advertiser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 607
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "com.nextapps.nasrun.NASRun"

    .line 611
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 612
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "appang"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appang_data"

    .line 613
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 614
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->appang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 615
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "kr.co.cashslide.Cashslide"

    .line 619
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 620
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "cashslide"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cashslide_data"

    .line 621
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 622
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->cashslide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 623
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "it.partytrack.sdk.Track"

    .line 627
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "AdvertMgr [initClass] str="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "partytrack"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "partytrack_data"

    .line 630
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 631
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->partytrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 632
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "com.netease.advertSdk.VponAdvert"

    .line 636
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 637
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "vpon"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpon_data"

    .line 638
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 639
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->vpon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 640
    invoke-direct {p0, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "com.netease.advertSdk.SdkGoogleAnalytics"

    .line 644
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 645
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "google_analytics"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "google_analytics_data"

    .line 646
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 647
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->google_analytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "google_analytics"

    .line 648
    invoke-direct {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "com.adbert.AdbertTrace"

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 653
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "adbert"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adbert_data"

    .line 654
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 655
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->adbert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "adbert"

    .line 656
    invoke-direct {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    const-string v0, "com.netease.advertSdk.SdkNanigans"

    .line 660
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 661
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "nanigans"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nanigans_data"

    .line 662
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 663
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->nanigans(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "nanigans"

    .line 664
    invoke-direct {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    const-string v0, "com.netease.advertSdk.SdkMAT"

    .line 668
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 669
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "mat"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mat_data"

    .line 670
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 671
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->mat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "mat"

    .line 672
    invoke-direct {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto :goto_0

    :cond_15
    const-string v0, "com.netease.advertSdk.SdkFirebase"

    .line 676
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 677
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "firebase"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firebase_data"

    .line 678
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->readConfig(Ljava/lang/String;)Z

    .line 679
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->firebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "firebase"

    .line 680
    invoke-direct {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->postInitData(Ljava/lang/String;)V

    goto :goto_0

    :cond_16
    const-string v0, "com.netease.advertSdk.Sdkmetaps"

    .line 684
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 685
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    const-string v5, "metaps"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->metaps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string v0, "initClass"

    .line 693
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "class name:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method private invokeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdvertMgr [invokeEvent]  event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chnl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto/16 :goto_3

    .line 2304
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u4e8b\u4ef6\u4e3a\u7a7a"

    .line 2305
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2308
    :cond_1
    const-class v0, Lcom/netease/advertSdk/base/AdvertMgr;

    const/4 v3, 0x4

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 2310
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Landroid/os/Bundle;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-virtual {v0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2311
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdvertMgr [invokeEvent] calling method="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    .line 2312
    iget-object v4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p1, v3, v2

    aput-object p3, v3, v7

    aput-object p4, v3, v8

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    invoke-direct {p0, p1, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->checkEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "type"

    .line 2317
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "project"

    const-string v3, "unisdk"

    .line 2318
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    .line 2319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "log"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "eventName"

    .line 2320
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "game_project"

    const-string p2, "JF_GAMEID"

    .line 2321
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "udid"

    .line 2322
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "unisdk_deviceid"

    const-string p2, "UNISDK_DEVICE_ID"

    .line 2323
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2324
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "param"

    .line 2325
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p4, :cond_4

    .line 2327
    invoke-virtual {p4}, Landroid/os/Bundle;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 2328
    invoke-static {p4}, Lcom/netease/advertSdk/base/JsonUtils;->bundle2Map(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 2329
    invoke-static {p1}, Lcom/netease/advertSdk/base/JsonUtils;->obj2str(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2330
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2331
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p1, "bundle"

    .line 2334
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2331
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 2332
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2336
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AdvertMgr [invokeEvent] post2SDC json="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->post2SDC(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2339
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2349
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 2347
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 2345
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception p1

    .line 2343
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    const-string p1, "\u6ca1\u6709\u8bfb\u53d6\u5230\u5e7f\u544aSDK\u4fe1\u606f"

    .line 2301
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeEventAll(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .line 2214
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2218
    :cond_0
    const-class v0, Lcom/netease/advertSdk/base/AdvertMgr;

    .line 2219
    iget-object v2, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    .line 2221
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/os/Bundle;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 2222
    iget-object v6, p0, Lcom/netease/advertSdk/base/AdvertMgr;->adSdkMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v7

    aput-object p1, v4, v1

    aput-object p2, v4, v8

    aput-object p3, v4, v9

    invoke-virtual {v5, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 2230
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2228
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 2226
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v3

    .line 2224
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "AdvertMgr"

    const-string p2, "\u6ca1\u6709\u8bfb\u53d6\u5230\u5e7f\u544aSDK\u4fe1\u606f"

    .line 2215
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private post2SDC(Ljava/lang/String;)V
    .locals 4

    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonStr="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->NewQueueItem()Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;

    move-result-object v0

    const-string v2, "POST"

    .line 2384
    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->method:Ljava/lang/String;

    const-string v2, "EB"

    .line 2385
    invoke-virtual {p0, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https://unisdk.proxima.nie.easebar.com"

    .line 2386
    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "https://unisdk.proxima.nie.netease.com"

    .line 2388
    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->url:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    .line 2390
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->bSync:Ljava/lang/Boolean;

    const-string v2, "SDC"

    .line 2391
    iput-object v2, v0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->transParam:Ljava/lang/String;

    .line 2392
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;->setBody(Ljava/lang/String;)V

    .line 2393
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->checkResend()V

    .line 2394
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->addItem(Lcom/netease/ntunisdk/base/utils/HTTPQueue$QueueItem;)V

    return-void
.end method

.method private postInitData(Ljava/lang/String;)V
    .locals 4

    const-string v0, "INIT"

    .line 483
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    .line 485
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "project"

    const-string v3, "unisdk"

    .line 486
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "log"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventName"

    .line 488
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "unisdk_deviceid"

    const-string v0, "UNISDK_DEVICE_ID"

    .line 489
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "game_project"

    const-string v0, "JF_GAMEID"

    .line 490
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->post2SDC(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private readLibraryConfig()V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "ntunisdk_config"

    .line 122
    iget-object v2, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 126
    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "fail to read ntunisdk_config, try ntunisdk.cfg"

    .line 129
    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    :try_start_1
    const-string v1, "ntunisdk.cfg"

    .line 135
    invoke-virtual {v2, v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    if-nez v5, :cond_2

    const-string v2, "ntunisdk_config/ntunisdk.cfg null"

    .line 138
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 154
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 141
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    if-eqz v5, :cond_3

    .line 154
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 145
    :cond_4
    :try_start_5
    new-array v2, v2, [B

    .line 146
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    .line 148
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_5

    .line 154
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_5
    move-object v4, v3

    goto :goto_2

    :catch_4
    :try_start_7
    const-string v2, "ntunisdk_config/ntunisdk.cfg config not found"

    .line 150
    invoke-static {v0, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_6

    .line 154
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_7
    invoke-static {v0, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\uff1a"

    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u201c"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "\u201d"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 169
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_9
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 175
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "EB"

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    const-string v1, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    .line 178
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :goto_4
    if-eqz v5, :cond_a

    .line 154
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 158
    :catch_7
    :cond_a
    throw v0
.end method


# virtual methods
.method public activateApp()V
    .locals 3

    const-string v0, "OPEN_SESSION"

    const-string v1, ""

    const/4 v2, 0x0

    .line 2239
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->invokeEventAll(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public adbert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "adbert"

    .line 1914
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1919
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "bundle="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 1925
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "ADBERT_GAMEID"

    .line 1926
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ADBERT_APPLYID"

    .line 1927
    invoke-virtual {p0, p3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1928
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p1, "ADBERT GAMEID \u4e3a\u7a7a"

    .line 1929
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1932
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "ADBERT APPLYID \u4e3a\u7a7a"

    .line 1933
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p4, "send"

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 1936
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1, p4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1937
    iget-object v1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    invoke-virtual {p1, p4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1948
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1946
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1944
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1942
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1940
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public adjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "adjust"

    .line 989
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1000
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    const-string p2, "ADJUST_APP_TOKEN"

    .line 1001
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1002
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "appToken is null"

    .line 1003
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "1"

    const-string p4, "ADJUST_DEBUG_MODE"

    .line 1006
    invoke-virtual {p0, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    const-string p4, "init"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Class;

    .line 1007
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    .line 1008
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v3

    aput-object p2, p4, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p1, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string p4, "INSTALL"

    .line 1009
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "REGISTRATION"

    .line 1011
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "OPEN_SESSION"

    .line 1013
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "LAUNCH"

    .line 1015
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "ON_PAUSE"

    .line 1017
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "onPause"

    .line 1018
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1019
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string p4, "ON_RESUME"

    .line 1021
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "onResume"

    .line 1022
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1023
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string p4, "ON_NEWINTENT"

    .line 1025
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p2, "onNewIntent"

    .line 1026
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1027
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string p4, "PURCHASE"

    .line 1029
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "LEVEL"

    .line 1031
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "handleCustomEvent"

    new-array v0, v1, [Ljava/lang/Class;

    .line 1034
    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v2

    .line 1035
    invoke-virtual {p1, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1046
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1044
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1042
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1040
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1038
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public admob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "admob"

    .line 1298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "INIT"

    .line 1309
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    const-string p2, "ADMOB_CONVERSION_ID"

    .line 1310
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "conversionId is null"

    .line 1312
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "init"

    new-array p4, v3, [Ljava/lang/Class;

    .line 1315
    const-class v0, Landroid/content/Context;

    aput-object v0, p4, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v4

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 1316
    iget-object p4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p4, p3, v5

    aput-object p2, p3, v4

    invoke-virtual {p1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string v0, "OPEN_SESSION"

    .line 1318
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "handleLogin"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1319
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v5

    aput-object p4, p2, v4

    .line 1320
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string v0, "INSTALL"

    .line 1322
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "LAUNCH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "REGISTRATION"

    .line 1324
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ON_PAUSE"

    .line 1326
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ON_RESUME"

    .line 1328
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PURCHASE"

    .line 1330
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CREATEROLE"

    .line 1332
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "handleCreateRole"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1333
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v5

    aput-object p4, p2, v4

    .line 1334
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p4, "LEVEL"

    .line 1336
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "handleLevel"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1337
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v5

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v5

    .line 1338
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string p4, "handleCustomEvent"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1341
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v5

    aput-object p3, p4, v4

    .line 1342
    invoke-virtual {p1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1353
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1351
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1349
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1347
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1345
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public admob_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "admob_ad"

    .line 1366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "INIT"

    .line 1377
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    const-string p2, "ADMOB_CONVERSION_ID"

    .line 1378
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1379
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "conversionId is null"

    .line 1380
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "init"

    new-array p4, v3, [Ljava/lang/Class;

    .line 1383
    const-class v0, Landroid/content/Context;

    aput-object v0, p4, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v4

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 1384
    iget-object p4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p4, p3, v5

    aput-object p2, p3, v4

    invoke-virtual {p1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string v0, "OPEN_SESSION"

    .line 1386
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "handleLogin"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1387
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v5

    aput-object p4, p2, v4

    .line 1388
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string v0, "INSTALL"

    .line 1390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "LAUNCH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "REGISTRATION"

    .line 1392
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ON_PAUSE"

    .line 1394
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ON_RESUME"

    .line 1396
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PURCHASE"

    .line 1398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CREATEROLE"

    .line 1400
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "handleCreateRole"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1401
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v5

    aput-object p4, p2, v4

    .line 1402
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p4, "LEVEL"

    .line 1404
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "handleLevel"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1405
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v5

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v5

    .line 1406
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string p4, "handleCustomEvent"

    new-array v0, v3, [Ljava/lang/Class;

    .line 1409
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v5

    aput-object p3, p4, v4

    .line 1410
    invoke-virtual {p1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1421
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1419
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1417
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1415
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1413
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public advertiser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "advertiser"

    .line 1574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1579
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "bundle="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 1585
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p4, 0x0

    const-string v1, "ADVERTISER_APPID\u4e3a\u7a7a"

    const-string v2, "conversionTrack"

    const-string v3, "ADVERTISER_APPID"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz p3, :cond_2

    .line 1586
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1587
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1588
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-array p3, v6, [Ljava/lang/Class;

    .line 1591
    const-class v0, Landroid/content/Context;

    aput-object v0, p3, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, p3, v4

    invoke-virtual {p1, v2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    .line 1592
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p3, v5

    aput-object p2, p3, v4

    invoke-virtual {p1, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p3, "ON_RESUME"

    .line 1594
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1595
    invoke-virtual {p0, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1596
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1597
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-array p3, v6, [Ljava/lang/Class;

    .line 1600
    const-class v0, Landroid/content/Context;

    aput-object v0, p3, v5

    const-class v0, Ljava/lang/String;

    aput-object v0, p3, v4

    invoke-virtual {p1, v2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/Object;

    .line 1601
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p3, v5

    aput-object p2, p3, v4

    invoke-virtual {p1, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1612
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1610
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1606
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1604
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public appang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "APPANG_KEY"

    const-string v1, "AdvertMgr"

    const-string v2, "appang"

    .line 1622
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "className="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "param="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1627
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 1633
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1634
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "calling appang interface, KEY:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "run"

    const/4 p3, 0x2

    new-array p4, p3, [Ljava/lang/Class;

    .line 1636
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, p4, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, p4, v4

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1637
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 1638
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    aput-object v0, p3, v3

    aput-object p2, p3, v4

    invoke-virtual {p1, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "calling "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "OPEN_SESSION"

    .line 1641
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "REGISTRATION"

    .line 1642
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "INSTALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LAUNCH"

    .line 1643
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PURCHASE"

    .line 1644
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1657
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1655
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1653
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1651
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1649
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public appsflyer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "appsflyer"

    .line 847
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 858
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    .line 859
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "APPSFLYER_CURRENCY_CODE"

    .line 860
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string p2, "init"

    const/4 p4, 0x3

    new-array v4, p4, [Ljava/lang/Class;

    .line 863
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string p2, "APPSFLYER_DEV_KEY"

    .line 864
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 865
    iget-object v4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v4, p4, v2

    aput-object p2, p4, v1

    aput-object p3, p4, v0

    invoke-virtual {p1, v3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const-string p4, "INSTALL"

    .line 867
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    const-string p4, "LAUNCH"

    .line 869
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    const-string p4, "ON_PAUSE"

    .line 871
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p2, "onPause"

    .line 872
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 873
    invoke-virtual {p1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string p4, "ON_RESUME"

    .line 875
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "onResume"

    .line 876
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 877
    invoke-virtual {p1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const-string p4, "OPEN_SESSION"

    .line 879
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "handleLogin"

    new-array p4, v1, [Ljava/lang/Class;

    .line 880
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 881
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const-string p4, "REGISTRATION"

    .line 883
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p2, "handleRegister"

    new-array p4, v1, [Ljava/lang/Class;

    .line 884
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 885
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const-string p4, "PURCHASE"

    .line 887
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p2, "handlePurchase"

    new-array p4, v1, [Ljava/lang/Class;

    .line 888
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 889
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const-string p4, "LEVEL"

    .line 891
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p4, "LEVE"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p4, "leve"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_0

    :cond_8
    const-string p4, "AD_SDK_CUSTOM_USERID"

    .line 895
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p2, "handleCustomerUserId"

    new-array p4, v1, [Ljava/lang/Class;

    .line 896
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 897
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    const-string p4, "AD_SDK_DEEP_LINK"

    .line 899
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    const-string p2, "handleDeepLink"

    .line 900
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 901
    invoke-virtual {p1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const-string p4, "handleCustomEvent"

    new-array v4, v0, [Ljava/lang/Class;

    .line 904
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p1, p4, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p2, p4, v2

    aput-object p3, p4, v1

    .line 905
    invoke-virtual {p1, v3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    :goto_0
    const-string p2, "handleLevel"

    new-array p4, v1, [Ljava/lang/Class;

    .line 892
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 893
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 917
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 915
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 913
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 911
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 909
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_c
    :goto_1
    return-void
.end method

.method public cashslide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "CASHSLIDER_APPID"

    const-string v1, "AdvertMgr"

    const-string v2, "cashslide"

    .line 1667
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "className="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "param="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1672
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 1679
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1680
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "calling cashslide interface, APPID:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1683
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p3

    if-eqz p3, :cond_4

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 1685
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_1

    goto/16 :goto_1

    .line 1686
    :cond_1
    aget-object v2, p3, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1687
    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1688
    aget-object v2, p3, v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    aput-object v4, v3, p4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "appFirstLaunched"

    new-array v4, p4, [Ljava/lang/Class;

    .line 1689
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, p4, [Ljava/lang/Object;

    .line 1690
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "calling "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "OPEN_SESSION"

    .line 1695
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "REGISTRATION"

    .line 1696
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "INSTALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "LAUNCH"

    .line 1697
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "PURCHASE"

    .line 1698
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1713
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1711
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1709
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1707
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1705
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 1703
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public chartboost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "chartboost"

    .line 928
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 933
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "bundle="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 939
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const-string p2, "startWithAppId"

    const/4 p3, 0x3

    new-array v2, p3, [Ljava/lang/Class;

    .line 940
    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const-string v2, "CHARTBOOST_APPID"

    .line 941
    invoke-virtual {p0, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHARTBOOST_APP_SIGNATURE"

    .line 942
    invoke-virtual {p0, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array p3, p3, [Ljava/lang/Object;

    .line 943
    iget-object v5, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    aput-object v5, p3, v1

    aput-object v2, p3, v0

    aput-object v3, p3, v4

    invoke-virtual {p2, p4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onCreate"

    new-array p3, v0, [Ljava/lang/Class;

    .line 945
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 946
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string p3, "ON_START"

    .line 947
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p2, "onStart"

    new-array p3, v0, [Ljava/lang/Class;

    .line 948
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 949
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string p3, "ON_STOP"

    .line 950
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "onStop"

    new-array p3, v0, [Ljava/lang/Class;

    .line 951
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 952
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string p3, "ON_PAUSE"

    .line 953
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "onPause"

    new-array p3, v0, [Ljava/lang/Class;

    .line 954
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 955
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p3, "ON_RESUME"

    .line 956
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p2, "onResume"

    new-array p3, v0, [Ljava/lang/Class;

    .line 957
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 958
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string p3, "ON_DESTROY"

    .line 959
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p2, "onDestroy"

    new-array p3, v0, [Ljava/lang/Class;

    .line 960
    const-class v2, Landroid/app/Activity;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 961
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, p4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string p3, "ON_BACKPRESSED"

    .line 962
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "onBackPressed"

    .line 963
    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 964
    invoke-virtual {p1, p4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 975
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 973
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 971
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 969
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 967
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method public completedRegistration()V
    .locals 3

    const-string v0, "REGISTRATION"

    const-string v1, ""

    const/4 v2, 0x0

    .line 2246
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->invokeEventAll(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method protected doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    .line 189
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 200
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public exit()V
    .locals 1

    const-string v0, "AdvertMgr"

    .line 2406
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->close()V

    return-void
.end method

.method public facebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "AdvertMgr"

    const-string v1, "facebook"

    .line 1142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "INIT"

    .line 1153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p2, "init"

    new-array p3, v3, [Ljava/lang/Class;

    .line 1154
    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    .line 1155
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p3, p2, v2

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string v0, "OPEN_SESSION"

    .line 1156
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "LAUNCH"

    .line 1157
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "REGISTRATION"

    .line 1166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "handleRegistration"

    new-array p3, v3, [Ljava/lang/Class;

    .line 1167
    const-class v0, Landroid/os/Bundle;

    aput-object v0, p3, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p4, p2, v2

    .line 1168
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const-string v0, "LEVEL"

    .line 1169
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "handleLevel"

    new-array p4, v3, [Ljava/lang/Class;

    .line 1170
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v2

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 1171
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string v0, "ON_PAUSE"

    .line 1172
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ON_RESUME"

    .line 1175
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "PURCHASE"

    .line 1178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    .line 1181
    :try_start_1
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-wide/16 p2, 0x0

    :goto_0
    :try_start_2
    const-string v0, "handlePurchase"

    new-array v5, v4, [Ljava/lang/Class;

    .line 1185
    const-class v6, Ljava/lang/Double;

    aput-object v6, v5, v2

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v3

    invoke-virtual {p1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 1186
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const-string v0, "logEvent"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 1195
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v4

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p3, v0, v3

    aput-object p4, v0, v4

    .line 1196
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1208
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1206
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1204
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1202
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 1200
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public facebook_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "AdvertMgr"

    const-string v1, "facebook_ad"

    .line 1219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "INIT"

    .line 1230
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string p2, "init"

    new-array p3, v2, [Ljava/lang/Class;

    .line 1231
    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 1232
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p3, p2, v1

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string v0, "OPEN_SESSION"

    .line 1233
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "LAUNCH"

    .line 1234
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "REGISTRATION"

    .line 1243
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "handleRegistration"

    new-array p3, v2, [Ljava/lang/Class;

    .line 1244
    const-class v0, Landroid/os/Bundle;

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    .line 1245
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const-string v0, "LEVEL"

    .line 1246
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "handleLevel"

    new-array p4, v2, [Ljava/lang/Class;

    .line 1247
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v1

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    .line 1248
    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string v0, "ON_PAUSE"

    .line 1249
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "onPause"

    .line 1250
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1251
    invoke-virtual {p1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const-string v0, "ON_RESUME"

    .line 1252
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "onResume"

    .line 1253
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1254
    invoke-virtual {p1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v0, "PURCHASE"

    .line 1255
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    .line 1258
    :try_start_1
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-wide/16 p2, 0x0

    :goto_0
    :try_start_2
    const-string v0, "handlePurchase"

    new-array v5, v4, [Ljava/lang/Class;

    .line 1262
    const-class v6, Ljava/lang/Double;

    aput-object v6, v5, v1

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v2

    invoke-virtual {p1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    .line 1263
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, v1

    aput-object p4, v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    const-string v0, "logEvent"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 1272
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v4

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v2

    aput-object p4, v0, v4

    .line 1273
    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1285
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1283
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1281
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1279
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 1277
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method public firebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "firebase"

    .line 2167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 2178
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    const-string p2, "init"

    new-array p3, v2, [Ljava/lang/Class;

    .line 2179
    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 2180
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p3, p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string p4, "LAUNCH"

    .line 2181
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "REGISTRATION"

    .line 2182
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "OPEN_SESSION"

    .line 2183
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "LEVEL"

    .line 2184
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "PURCHASE"

    .line 2185
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "ON_DESTROY"

    .line 2186
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "TUTORIAL"

    .line 2187
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "ON_RESUME"

    .line 2188
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "ON_PAUSE"

    .line 2189
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "ON_START"

    .line 2190
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "ON_STOP"

    .line 2191
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "handleCustomEvent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2193
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p1, p4, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v1

    aput-object p3, p4, v2

    .line 2194
    invoke-virtual {p1, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2205
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2203
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2201
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 2199
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 2197
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAdvertSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.0"

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public google_analytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "value"

    const-string v5, "AdvertMgr"

    const-string v6, "google_analytics"

    .line 1854
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "className="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "event="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "param="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 1859
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bundle="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "INIT"

    .line 1865
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_1

    const-string v0, "GOOGLE_ANALYTICS_CONFIG_XML"

    .line 1866
    invoke-virtual {v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOOGLE_ANALYTICS_TRACKING_ID"

    .line 1867
    invoke-virtual {v1, v2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configXml="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trackingId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "init"

    new-array v4, v8, [Ljava/lang/Class;

    .line 1870
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v12

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v11

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v10

    invoke-virtual {v6, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 1871
    iget-object v5, v1, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v5, v4, v12

    aput-object v0, v4, v11

    aput-object v2, v4, v10

    invoke-virtual {v3, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string v5, "GOOGLE_ANALYTICS_EVENT"

    .line 1872
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "screenName"

    if-eqz v5, :cond_3

    :try_start_1
    const-string v0, "category"

    .line 1873
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action"

    .line 1874
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "label"

    .line 1875
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1877
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1878
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v9

    .line 1880
    :goto_0
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "sendEvent"

    const/4 v13, 0x5

    new-array v14, v13, [Ljava/lang/Class;

    .line 1881
    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v12

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v11

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v10

    const-class v15, Ljava/lang/Long;

    aput-object v15, v14, v8

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x4

    aput-object v15, v14, v16

    invoke-virtual {v6, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v12

    aput-object v2, v7, v11

    aput-object v5, v7, v10

    aput-object v4, v7, v8

    aput-object v3, v7, v16

    .line 1882
    invoke-virtual {v6, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v4, "GOOGLE_ANALYTICS_SCREEN"

    .line 1883
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1884
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sendScreen"

    new-array v3, v11, [Ljava/lang/Class;

    .line 1885
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v12

    invoke-virtual {v6, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v12

    .line 1886
    invoke-virtual {v2, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v3, "handleCustomEvent"

    new-array v4, v10, [Ljava/lang/Class;

    .line 1888
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v12

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-virtual {v6, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v12

    aput-object v2, v4, v11

    .line 1889
    invoke-virtual {v3, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1900
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1898
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1896
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1894
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 1892
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AdvertMgr"

    const-string v1, "init"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    .line 105
    iget-boolean p1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->hasInit:Z

    if-nez p1, :cond_0

    .line 107
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->cb:Lcom/netease/ntunisdk/base/utils/HTTPCallback;

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->init(Landroid/content/Context;Lcom/netease/ntunisdk/base/utils/HTTPCallback;)V

    .line 108
    invoke-direct {p0}, Lcom/netease/advertSdk/base/AdvertMgr;->readLibraryConfig()V

    .line 109
    iget-object p1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/netease/advertSdk/base/AdvertMgr;->checkCurrentPlatform(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "init again"

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->hasInit:Z

    return-void
.end method

.method public inmobi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "inmobi"

    .line 1434
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1445
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    const-string p2, "INMOBI_PROPERTY_ID"

    .line 1446
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    const-string p4, "INMOBI_DEBUG_MODE"

    .line 1447
    invoke-virtual {p0, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1448
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "PROPERTY_ID\u4e3a\u7a7a"

    .line 1449
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p4, "init"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Class;

    .line 1452
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    .line 1453
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v4

    aput-object p2, p4, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, v2

    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string p4, "OPEN_SESSION"

    .line 1455
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "END_SESSION"

    .line 1460
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "INSTALL"

    .line 1465
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "LAUNCH"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "REGISTRATION"

    .line 1467
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "ON_PAUSE"

    .line 1469
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "ON_RESUME"

    .line 1471
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "PURCHASE"

    .line 1473
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "CREATEROLE"

    .line 1475
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "handleCustomEvent"

    if-eqz p4, :cond_4

    :try_start_1
    new-array p3, v2, [Ljava/lang/Class;

    .line 1476
    const-class p4, Ljava/lang/String;

    aput-object p4, p3, v4

    const-class p4, Ljava/lang/String;

    aput-object p4, p3, v3

    invoke-virtual {p1, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object v1, p3, v3

    .line 1477
    invoke-virtual {p1, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-array p4, v2, [Ljava/lang/Class;

    .line 1479
    const-class v5, Ljava/lang/String;

    aput-object v5, p4, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, p4, v3

    invoke-virtual {p1, v0, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v4

    aput-object p3, p4, v3

    .line 1480
    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1491
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1489
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1487
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1485
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1483
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public inmobi_ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "inmobi_ad"

    .line 1504
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1515
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    const-string p2, "INMOBI_PROPERTY_ID"

    .line 1516
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "1"

    const-string p4, "INMOBI_DEBUG_MODE"

    .line 1517
    invoke-virtual {p0, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1518
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "PROPERTY_ID\u4e3a\u7a7a"

    .line 1519
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p4, "init"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Class;

    .line 1522
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    .line 1523
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v4

    aput-object p2, p4, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, v2

    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string p4, "OPEN_SESSION"

    .line 1525
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "END_SESSION"

    .line 1530
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "INSTALL"

    .line 1535
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "LAUNCH"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "REGISTRATION"

    .line 1537
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "ON_PAUSE"

    .line 1539
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "ON_RESUME"

    .line 1541
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "PURCHASE"

    .line 1543
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "CREATEROLE"

    .line 1545
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "handleCustomEvent"

    if-eqz p4, :cond_4

    :try_start_1
    new-array p3, v2, [Ljava/lang/Class;

    .line 1546
    const-class p4, Ljava/lang/String;

    aput-object p4, p3, v4

    const-class p4, Ljava/lang/String;

    aput-object p4, p3, v3

    invoke-virtual {p1, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object v1, p3, v3

    .line 1547
    invoke-virtual {p1, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-array p4, v2, [Ljava/lang/Class;

    .line 1549
    const-class v5, Ljava/lang/String;

    aput-object v5, p4, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, p4, v3

    invoke-virtual {p1, v0, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v4

    aput-object p3, p4, v3

    .line 1550
    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1561
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1559
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1557
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1555
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1553
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public mat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "mat"

    .line 2039
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 2050
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    const-string p2, "MAT_ADVERTISER_ID"

    .line 2051
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2052
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "MAT_ADVERTISER_ID is null"

    .line 2053
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "MAT_CONVERSION_KEY"

    .line 2056
    invoke-virtual {p0, p3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2057
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p1, "MAT_CONVERSION_KEY is null"

    .line 2058
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p4, "init"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Class;

    .line 2061
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    .line 2062
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v3

    aput-object p2, p4, v2

    aput-object p3, p4, v1

    invoke-virtual {p1, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const-string p4, "LAUNCH"

    .line 2063
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "REGISTRATION"

    .line 2064
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "OPEN_SESSION"

    .line 2068
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "LEVEL"

    .line 2069
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "PURCHASE"

    .line 2070
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "ON_DESTROY"

    .line 2074
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "TUTORIAL"

    .line 2075
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "ON_RESUME"

    .line 2076
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "onResume"

    .line 2077
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2078
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p4, "ON_PAUSE"

    .line 2079
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "ON_START"

    .line 2080
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "onStart"

    .line 2081
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2082
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string p4, "ON_STOP"

    .line 2083
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p2, "onStop"

    .line 2084
    invoke-virtual {p1, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2085
    invoke-virtual {p1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string p4, "handleCustomEvent"

    new-array v0, v1, [Ljava/lang/Class;

    .line 2087
    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v2

    .line 2088
    invoke-virtual {p1, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2099
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2097
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2095
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 2093
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 2091
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method public metaps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string p4, "AdvertMgr"

    const-string v0, "metaps"

    .line 2112
    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "className="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "param="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 2121
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    const-string p2, "init"

    new-array p3, v2, [Ljava/lang/Class;

    .line 2122
    const-class p4, Landroid/content/Context;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 2123
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p3, p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const-string p4, "LAUNCH"

    .line 2124
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "REGISTRATION"

    .line 2125
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "OPEN_SESSION"

    .line 2126
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "LEVEL"

    .line 2127
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "PURCHASE"

    .line 2128
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p2, "handlePurchase"

    new-array p4, v2, [Ljava/lang/Class;

    .line 2129
    const-class v3, Ljava/lang/String;

    aput-object v3, p4, v1

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    .line 2130
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string p4, "ON_DESTROY"

    .line 2131
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "TUTORIAL"

    .line 2132
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "ON_RESUME"

    .line 2133
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "ON_PAUSE"

    .line 2134
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "ON_START"

    .line 2135
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p2, "onStart"

    new-array p3, v2, [Ljava/lang/Class;

    .line 2136
    const-class p4, Landroid/app/Activity;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 2137
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p4, "ON_STOP"

    .line 2138
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p2, "onStop"

    new-array p3, v2, [Ljava/lang/Class;

    .line 2139
    const-class p4, Landroid/app/Activity;

    aput-object p4, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 2140
    iget-object p3, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    aput-object p3, p2, v1

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p4, "handleCustomEvent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2142
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p1, p4, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v1

    aput-object p3, p4, v2

    .line 2143
    invoke-virtual {p1, v0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2154
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2152
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2150
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 2148
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 2146
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public nanigans(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "AdvertMgr"

    const-string v1, "nanigans"

    .line 1961
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1972
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_5

    const-string p2, "NANIGANS_APP_ID"

    .line 1973
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "NANIGANS_FB_APP_ID"

    .line 1974
    invoke-virtual {p0, p3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "NANIGANS_URL"

    .line 1975
    invoke-virtual {p0, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v5, "1"

    const-string v6, "NANIGANS_DEBUG_MODE"

    .line 1976
    invoke-virtual {p0, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1977
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "NANIGANS_APP_ID \u4e3a\u7a7a"

    .line 1978
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1981
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string p1, "NANIGANS_FB_APP_ID \u4e3a\u7a7a"

    .line 1982
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1985
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "url \u4e3a\u7a7a"

    .line 1986
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "init"

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    .line 1988
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v8, v7, v10

    invoke-virtual {p1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    .line 1989
    iget-object v6, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v6, v0, v3

    aput-object p3, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    aput-object p4, v0, v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v10

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const-string p4, "LAUNCH"

    .line 1990
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    const-string p4, "REGISTRATION"

    .line 1995
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string p2, "handleRegister"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1996
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 1997
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    const-string p4, "OPEN_SESSION"

    .line 1998
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p2, "handleLogin"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1999
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 2000
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    const-string p4, "LEVEL"

    .line 2001
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    const-string p2, "handleLevel"

    new-array p4, v4, [Ljava/lang/Class;

    .line 2002
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 2003
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const-string p4, "PURCHASE"

    .line 2004
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p2, "handlePurchase"

    new-array p4, v4, [Ljava/lang/Class;

    .line 2005
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 2006
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    const-string p4, "ON_DESTROY"

    .line 2007
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    const-string p2, "onDestory"

    .line 2008
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2009
    invoke-virtual {p1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const-string p4, "TUTORIAL"

    .line 2010
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    const-string p2, "handleTutorial"

    .line 2011
    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 2012
    invoke-virtual {p1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    const-string p4, "handleCustomEvent"

    new-array v0, v1, [Ljava/lang/Class;

    .line 2014
    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v4

    .line 2015
    invoke-virtual {p1, v2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2026
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2024
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 2022
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 2020
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 2018
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_c
    :goto_1
    return-void
.end method

.method public partytrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "PARTYTRACK_APPKEY"

    const-string v6, "PARTYTRACK_APPID"

    const-string v7, "AdvertMgr"

    const-string v8, "partytrack"

    .line 1723
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "className="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "event="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "param="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    .line 1728
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "bundle="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "INIT"

    .line 1734
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v10, "calling "

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v9, :cond_1

    .line 1735
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calling partytrack interface, APPID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calling partytrack interface, APPKEY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "start"

    new-array v3, v13, [Ljava/lang/Class;

    .line 1738
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v14

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v15

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v12

    invoke-virtual {v8, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1739
    invoke-virtual {v1, v6}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1740
    invoke-virtual {v1, v5}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    .line 1741
    iget-object v6, v1, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    aput-object v6, v5, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v15

    aput-object v4, v5, v12

    invoke-virtual {v2, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    const-string v5, "OPEN_SESSION"

    .line 1744
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "REGISTRATION"

    .line 1745
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "INSTALL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "LAUNCH"

    .line 1746
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PURCHASE"

    .line 1747
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1753
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "itemNum"

    const-string v6, "itemPriceCurrency"

    const-string v9, "itemPrice"

    const-string v11, "itemName"

    if-nez v2, :cond_2

    .line 1755
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1757
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1758
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1759
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    const-string v3, "json parse error"

    .line 1761
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    .line 1766
    :cond_2
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1767
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 1768
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1769
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    :goto_0
    const-string v5, "payment"

    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Class;

    .line 1771
    const-class v16, Ljava/lang/String;

    aput-object v16, v11, v14

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v16, v11, v15

    const-class v16, Ljava/lang/String;

    aput-object v16, v11, v12

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v11, v13

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v3, v8, v14

    .line 1772
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v15

    aput-object v6, v8, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v13

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    const-string v3, "event"

    new-array v4, v15, [Ljava/lang/Class;

    .line 1776
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v14

    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1778
    :try_start_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1779
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calling partytrack interface, int_enent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v15, [Ljava/lang/Object;

    .line 1780
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v14

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1783
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calling Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1797
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 1795
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1793
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 1791
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 1789
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public pinyou(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "pinyou"

    .line 758
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 763
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "bundle="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p3, "bundle=null"

    .line 765
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p3, "INIT"

    .line 771
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 772
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "createAdConversion"

    const/4 p3, 0x3

    new-array p4, p3, [Ljava/lang/Class;

    .line 773
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, p4, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, p4, v3

    const-class v1, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, p4, v4

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const-string p2, "PINYOU_PARAM_A"

    .line 774
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "PINYOU_CONVERSION_TYPE"

    .line 775
    invoke-virtual {p0, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 776
    iget-object v5, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, p3, v2

    aput-object p2, p3, v3

    aput-object p4, p3, v4

    invoke-virtual {p1, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 778
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "calling pinyou noticeToPinyou, param_a:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";conversionType:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "noticeToPinyou"

    new-array p4, v2, [Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    .line 780
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p1, "OPEN_SESSION"

    .line 781
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "REGISTRATION"

    .line 782
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "INSTALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LAUNCH"

    .line 783
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PURCHASE"

    .line 784
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 797
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 795
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 793
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 791
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 789
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public readConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "UNISDK_SERVER_KEY"

    const-string v1, "UTF-8"

    const-string v2, "AdvertMgr"

    const-string v3, "readConfig"

    .line 329
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 333
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v4, 0x3

    invoke-virtual {p1, p2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, " is empty"

    if-nez v4, :cond_0

    .line 336
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 339
    :cond_0
    new-array v4, v4, [B

    .line 340
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 341
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 355
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    new-instance v4, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 360
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v1, "\uff1a"

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_4
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 373
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 374
    invoke-virtual {p0, p1, v0, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v0, "PINYOU_PARAM_A"

    .line 376
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PINYOU_CONVERSION_TYPE"

    .line 377
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ZYZ_SID"

    .line 379
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "FACEBOOK_APPID"

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CHARTBOOST_APPID"

    .line 383
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CHARTBOOST_APP_SIGNATURE"

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPSFLYER_DEV_KEY"

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPSFLYER_CURRENCY_CODE"

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI_PROPERTY_ID"

    .line 389
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI_DEBUG_MODE"

    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI2_PROPERTY_ID"

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADVERTISER_APPID"

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPANG_KEY"

    .line 395
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CASHSLIDER_APPID"

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PARTYTRACK_APPID"

    .line 399
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PARTYTRACK_APPKEY"

    .line 400
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "VPON_GOAL_ID"

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "GOOGLE_ANALYTICS_CONFIG_XML"

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "GOOGLE_ANALYTICS_TRACKING_ID"

    .line 405
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADBERT_GAMEID"

    .line 407
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADBERT_APPLYID"

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_APP_ID"

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_DEBUG_MODE"

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_FB_APP_ID"

    .line 412
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADMOB_CONVERSION_ID"

    .line 414
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "MAT_ADVERTISER_ID"

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "MAT_CONVERSION_KEY"

    .line 417
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADJUST_APP_TOKEN"

    .line 419
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADJUST_DEBUG_MODE"

    .line 420
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SINGULAR_API_KEY"

    .line 422
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SINGULAR_SECRET_KEY"

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SEGMENT_WRITE_KEY"

    .line 425
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "OPEN_SESSION"

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INSTALL"

    .line 428
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "REGISTRATION"

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "LAUNCH"

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "DEBUG_MODE"

    .line 432
    invoke-virtual {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 435
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " config parse to json error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 343
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " read exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public readConfig(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "UNISDK_SERVER_KEY"

    const-string v1, "UTF-8"

    const-string v2, "AdvertMgr"

    const-string v3, "readConfig"

    .line 212
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 216
    :try_start_0
    iget-object v4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, " is empty"

    if-nez v5, :cond_0

    .line 219
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 222
    :cond_0
    new-array v5, v5, [B

    .line 223
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    .line 224
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 231
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 238
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    new-instance v5, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v1, "\uff1a"

    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201c"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u201d"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 256
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 257
    invoke-virtual {p0, v1, v0, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    const-string v0, "PINYOU_PARAM_A"

    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PINYOU_CONVERSION_TYPE"

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ZYZ_SID"

    .line 262
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "FACEBOOK_APPID"

    .line 264
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CHARTBOOST_APPID"

    .line 266
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CHARTBOOST_APP_SIGNATURE"

    .line 267
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPSFLYER_DEV_KEY"

    .line 269
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPSFLYER_CURRENCY_CODE"

    .line 270
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI_PROPERTY_ID"

    .line 272
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI_DEBUG_MODE"

    .line 273
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INMOBI2_PROPERTY_ID"

    .line 274
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADVERTISER_APPID"

    .line 276
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "APPANG_KEY"

    .line 278
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "CASHSLIDER_APPID"

    .line 280
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PARTYTRACK_APPID"

    .line 282
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "PARTYTRACK_APPKEY"

    .line 283
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "VPON_GOAL_ID"

    .line 285
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "GOOGLE_ANALYTICS_CONFIG_XML"

    .line 287
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "GOOGLE_ANALYTICS_TRACKING_ID"

    .line 288
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADBERT_GAMEID"

    .line 290
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADBERT_APPLYID"

    .line 291
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_APP_ID"

    .line 293
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_DEBUG_MODE"

    .line 294
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "NANIGANS_FB_APP_ID"

    .line 295
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADMOB_CONVERSION_ID"

    .line 297
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "MAT_ADVERTISER_ID"

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "MAT_CONVERSION_KEY"

    .line 300
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADJUST_APP_TOKEN"

    .line 302
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "ADJUST_DEBUG_MODE"

    .line 303
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SINGULAR_API_KEY"

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SINGULAR_SECRET_KEY"

    .line 306
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "SEGMENT_WRITE_KEY"

    .line 308
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "OPEN_SESSION"

    .line 310
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "INSTALL"

    .line 311
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "REGISTRATION"

    .line 312
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "LAUNCH"

    .line 313
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v0, "DEBUG_MODE"

    .line 315
    invoke-virtual {p0, v1, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 318
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " config parse to json error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 226
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " read exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public segment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "AdvertMgr"

    const-string v1, "segment"

    .line 1094
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1105
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_2

    const-string p2, "SEGMENT_WRITE_KEY"

    .line 1106
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "writeKey is null"

    .line 1108
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "init"

    new-array p4, v2, [Ljava/lang/Class;

    .line 1111
    const-class v0, Landroid/content/Context;

    aput-object v0, p4, v3

    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v4

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    .line 1112
    iget-object p4, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object p4, p3, v3

    aput-object p2, p3, v4

    invoke-virtual {p1, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p4, "AD_SDK_CUSTOM_USERID"

    .line 1114
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p2, "handleCustomerUserId"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1115
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 1116
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p4, "handleCustomEvent"

    new-array v0, v2, [Ljava/lang/Class;

    .line 1119
    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v4

    .line 1120
    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1131
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1129
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1127
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1125
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1123
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/netease/advertSdk/base/AdvertMgr;->channel:Ljava/lang/String;

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 466
    iget-object p2, p0, Lcom/netease/advertSdk/base/AdvertMgr;->propDict:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public singular(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "AdvertMgr"

    const-string v1, "singular"

    .line 1051
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p4, "INIT"

    .line 1062
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p4, :cond_3

    const-string p2, "SINGULAR_API_KEY"

    .line 1063
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SINGULAR_SECRET_KEY"

    .line 1064
    invoke-virtual {p0, p3}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1065
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "init"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Class;

    .line 1069
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v0, [Ljava/lang/Object;

    .line 1070
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v3

    aput-object p2, p4, v4

    aput-object p3, p4, v2

    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "apiKey or secretKey is null"

    .line 1066
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p4, "AD_SDK_CUSTOM_USERID"

    .line 1072
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "handleCustomerUserId"

    new-array p4, v4, [Ljava/lang/Class;

    .line 1073
    const-class v0, Ljava/lang/String;

    aput-object v0, p4, v3

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    .line 1074
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string p4, "handleCustomEvent"

    new-array v0, v2, [Ljava/lang/Class;

    .line 1077
    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {p1, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v4

    .line 1078
    invoke-virtual {p1, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1089
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1087
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1085
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1083
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 1081
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/advertSdk/base/AdvertMgr;->invokeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2271
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2272
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2273
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/netease/advertSdk/base/AdvertMgr;->invokeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2287
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2288
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2289
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/netease/advertSdk/base/AdvertMgr;->invokeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public vpon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "AdvertMgr"

    const-string v1, "vpon"

    .line 1809
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "className="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 1814
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "bundle="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "INIT"

    .line 1820
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "VPON_GOAL_ID"

    .line 1821
    invoke-virtual {p0, p2}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1822
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "VPON_GOAL_ID\u4e3a\u7a7a"

    .line 1823
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p3, "onCreate"

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Class;

    .line 1826
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p3, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    .line 1827
    iget-object v0, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    aput-object v0, p4, v2

    aput-object p2, p4, v3

    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1838
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1836
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1834
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1832
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1830
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public zyz(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "ZYZ_SID"

    const-string v1, "AdvertMgr"

    const-string v2, "zyz"

    .line 807
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "className="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "param="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 812
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "bundle="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p3, "bundle=null"

    .line 814
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p1, "INIT"

    .line 820
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "calling zyz interface, SID:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.optaim.zyzservice.SETUP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.optaim.zyzservice.SID"

    .line 824
    invoke-virtual {p0, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    iget-object p2, p0, Lcom/netease/advertSdk/base/AdvertMgr;->myCtx:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-string p1, "OPEN_SESSION"

    .line 826
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "REGISTRATION"

    .line 827
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "INSTALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LAUNCH"

    .line 828
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PURCHASE"

    .line 829
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 836
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 834
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
