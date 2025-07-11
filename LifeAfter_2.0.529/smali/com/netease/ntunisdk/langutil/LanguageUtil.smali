.class public Lcom/netease/ntunisdk/langutil/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# static fields
.field public static language:Ljava/lang/String;

.field private static region:Ljava/lang/String;

.field private static sCachedRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->sCachedRes:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeLocale()Ljava/util/Locale;
    .locals 1

    .line 94
    invoke-static {}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getKey()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocale()Ljava/util/Locale;
    .locals 3

    .line 87
    sget-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/Locale;

    sget-object v2, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->getStringByLocale(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByLocale(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 107
    invoke-static {}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_1

    .line 112
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    sget-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 118
    invoke-static {}, Lcom/netease/ntunisdk/langutil/LanguageUtil;->changeLocale()Ljava/util/Locale;

    move-result-object v3

    .line 119
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_2

    .line 120
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 121
    new-instance p0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v3, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 124
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    .line 130
    :goto_0
    sget-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLanguageCode(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ZH_HANS"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "zh"

    if-nez v0, :cond_11

    const-string v0, "ZH_CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "ZH_HANT"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ZH_HK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "ZH_TW"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sput-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "TW"

    .line 34
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    const-string v0, "EN"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "en"

    .line 37
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "US"

    .line 38
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v0, "JA"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "ja"

    .line 41
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "JP"

    .line 42
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const-string v0, "KO"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "ko"

    .line 45
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "KR"

    .line 46
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string v0, "PT"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "pt"

    .line 49
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v0, "RU"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "ru"

    .line 53
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v0, "DE"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "de"

    .line 57
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v0, "ES"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "es"

    .line 61
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v0, "TH"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "th"

    .line 65
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v0, "VI"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "vi"

    .line 69
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "VN"

    .line 70
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    :cond_c
    const-string v0, "TR"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, "tr"

    .line 72
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 73
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    :cond_d
    const-string v0, "HI"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "IN"

    if-eqz v0, :cond_e

    const-string p0, "hi"

    .line 75
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 76
    sput-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    .line 77
    :cond_e
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "in"

    .line 78
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "ID"

    .line 79
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    :cond_f
    const-string v0, "FR"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "fr"

    .line 81
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_10
    :goto_0
    sput-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "HK"

    .line 30
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_11
    :goto_1
    sput-object v1, Lcom/netease/ntunisdk/langutil/LanguageUtil;->language:Ljava/lang/String;

    const-string p0, "CN"

    .line 26
    sput-object p0, Lcom/netease/ntunisdk/langutil/LanguageUtil;->region:Ljava/lang/String;

    :cond_12
    :goto_2
    return-void
.end method
