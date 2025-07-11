.class public Lcom/netease/mpay/oversea/scan/ScannerUtils;
.super Ljava/lang/Object;
.source "ScannerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->EN:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    sput-object v0, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    .line 25
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;->getLanguageRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringByLocale(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 5

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 31
    sget-object v2, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-static {v2}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLocale(Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)Ljava/util/Locale;

    move-result-object v2

    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-gt v3, v4, :cond_0

    .line 34
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 35
    new-instance p0, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 38
    invoke-virtual {p0, v1}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
