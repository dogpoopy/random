.class public Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;
.super Ljava/lang/Object;
.source "PermissionTextUtils.java"


# static fields
.field private static language:Ljava/lang/String;

.field private static region:Ljava/lang/String;

.field private static final sCachedRes:Ljava/util/HashMap;
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

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->sCachedRes:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->region:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeLocale()Ljava/util/Locale;
    .locals 1

    .line 34
    invoke-static {}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getKey()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLocale()Ljava/util/Locale;
    .locals 3

    .line 27
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    new-instance v1, Ljava/util/Locale;

    sget-object v2, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->region:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getStringByLocale(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByLocale(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 47
    invoke-static {}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_1

    .line 52
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object p0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 58
    invoke-static {}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->changeLocale()Ljava/util/Locale;

    move-result-object v3

    .line 59
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_2

    .line 60
    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 61
    new-instance p0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v3, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    .line 70
    :goto_0
    sget-object v1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->sCachedRes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->language:Ljava/lang/String;

    .line 23
    sput-object p1, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->region:Ljava/lang/String;

    return-void
.end method
