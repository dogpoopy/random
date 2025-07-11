.class public Lcom/netease/mpay/oversea/g8;
.super Ljava/lang/Object;
.source "PluginProxy.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

.field private static c:Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "d88039b97a993573bb6a2eccefbbe205"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "e54eb91a3c7e3493bf3fa0d739dd56f3"

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/netease/mpay/oversea/g8;->a:[Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    const-wide/16 v2, 0x1d6

    const-string v4, "3.7.0"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;-><init>(JLjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/g8;->b:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    .line 3
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    const-string v1, "MpayOversea"

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/g8;->c:Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getProxyActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V
    .locals 6

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/GameLanguage;)V
    .locals 3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLanguagexx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/GameLanguage;->getFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/oversea/g8;->e()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getInstance(I)Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->updateText(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;)V

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/GameLanguage;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/GameLanguage;->getFont()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->updatePluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/netease/mpay/oversea/g8;->c:Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Landroid/content/res/Resources;Z)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g9;->l()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object p3

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/GameLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/GameLanguage;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/GameLanguage;->getFont()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->setPluginLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result p3

    invoke-static {p3}, Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;->getInstance(I)Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object p3

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->m()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->setPlaySoundVolume(F)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    const-string v2, "netease_global_server_h5"

    const-string v3, "3.9.0"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->registerDynamic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/dynamic/DynamicTextLanguage;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/netease/mpay/oversea/g8;->a(Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p0

    iget-object v3, p0, Lcom/netease/mpay/oversea/h9;->e:Ljava/lang/String;

    sget-object v4, Lcom/netease/mpay/oversea/g8;->b:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->initPlugin(Landroid/app/Activity;Landroid/content/res/Resources;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/common/PluginCallback;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getApplySkin()Z

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getId(I)I

    move-result p0

    return p0
.end method

.method private static b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;
    .locals 1

    const-string v0, "MpayOversea"

    .line 1
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->getStringOnlyDynamic(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Landroid/content/res/AssetManager;
    .locals 1

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->playSound(I)V

    return-void
.end method

.method public static d()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g8;->c:Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    return-object v0
.end method

.method public static f()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g8;->b:Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;

    return-object v0
.end method

.method public static h()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static i()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->loadSounds()V

    return-void
.end method

.method public static j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->b()Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->reset()V

    return-void
.end method
