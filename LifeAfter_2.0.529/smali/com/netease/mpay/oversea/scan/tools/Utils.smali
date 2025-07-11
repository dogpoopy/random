.class public Lcom/netease/mpay/oversea/scan/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V
    .locals 3

    if-eqz p0, :cond_3

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 146
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 148
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_2

    .line 149
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 151
    :cond_2
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 153
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static changeLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;
    .locals 0

    .line 158
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    invoke-static {p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_0
    return-object p0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 223
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static delayOpenBrowser(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .line 280
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 282
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "alarm"

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getGameLanguage(Ljava/lang/String;)Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;
    .locals 2

    .line 304
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    const-string v1, "ZH_HANS"

    .line 305
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "ZH_CN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "ZH_HANT"

    .line 307
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ZH_HK"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "ZH_TW"

    .line 309
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_TW:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto/16 :goto_2

    :cond_2
    const-string v1, "EN"

    .line 311
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto/16 :goto_2

    :cond_3
    const-string v1, "JA"

    .line 313
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->JA:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto/16 :goto_2

    :cond_4
    const-string v1, "KO"

    .line 315
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->KO:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto/16 :goto_2

    :cond_5
    const-string v1, "PT"

    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->PT:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_6
    const-string v1, "RU"

    .line 319
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->RU:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_7
    const-string v1, "DE"

    .line 321
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->DE:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_8
    const-string v1, "ES"

    .line 323
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 324
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ES:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_9
    const-string v1, "TH"

    .line 325
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 326
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TH:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_a
    const-string v1, "VI"

    .line 327
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->VI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_b
    const-string v1, "TR"

    .line 329
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 330
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->TR:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_c
    const-string v1, "IN"

    .line 331
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 332
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->IN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    :cond_d
    const-string v1, "HI"

    .line 333
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 334
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->HI:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    .line 308
    :cond_e
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_HK:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    goto :goto_2

    .line 306
    :cond_f
    :goto_1
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->ZH_CN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    :cond_10
    :goto_2
    return-object v0
.end method

.method private static getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;
    .locals 2

    if-nez p0, :cond_0

    .line 167
    sget-object p0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 169
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 72
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 76
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3

    const-string v0, "window"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 53
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 55
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 59
    :goto_0
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;I)I
    .locals 3

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 134
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return p1
.end method

.method public static getString(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 194
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 196
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 199
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 200
    :cond_3
    throw p0
.end method

.method public static getString(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 207
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 209
    :try_start_0
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 210
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 212
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 213
    :cond_3
    throw p0
.end method

.method private static getTargetSdkVersion(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 239
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 237
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public static getTimeOffset()Ljava/lang/String;
    .locals 3

    .line 298
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 1

    .line 293
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 217
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/16 v0, 0x8

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1706

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 115
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static isFinishing(Landroid/app/Activity;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x11

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static openBrowser(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 248
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 249
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 250
    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 254
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 252
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setUseCutoutAboveP(Landroid/app/Activity;)V
    .locals 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v1, 0x10000

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 265
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 271
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p0

    .line 268
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return v0
.end method

.method private static updateResources(Landroid/content/Context;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Landroid/content/res/Resources;
    .locals 4

    if-nez p1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 176
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 178
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 180
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 183
    :cond_1
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 184
    new-instance p1, Landroid/content/res/Resources;

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object p1
.end method
