.class public Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;
.super Ljava/lang/Object;
.source "SkinManager.java"


# static fields
.field public static final MPAY_SKIN_DEFAULT:Ljava/lang/String; = "default"

.field private static final SKIN_FONT_PATH_IN_ASSETS:Ljava/lang/String; = "fonts/font.ttf"

.field private static forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hasInit:Z

.field private mContext:Landroid/content/Context;

.field mSkinLoaded:Z

.field private originPackageName:Ljava/lang/String;

.field private originResources:Landroid/content/res/Resources;

.field private final pluginKey:Ljava/lang/String;

.field private pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

.field private skinPackageName:Ljava/lang/String;

.field private skinResources:Landroid/content/res/Resources;

.field private skinTypeface:Landroid/graphics/Typeface;

.field private skinVersionVerify:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    .line 52
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->hasInit:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    .line 60
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    return-void
.end method

.method private getIdentifier(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_0

    return p1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setSkinResourcesManager(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;ZZ)V
    .locals 9

    .line 149
    iget-object v0, p2, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    .line 151
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    move-object v1, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    .line 153
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->initTypeface()V

    return-void
.end method

.method private updateResources()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz v1, :cond_0

    .line 377
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setApplySkin(Z)V

    :cond_0
    return-void
.end method

.method private updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 415
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->getPluginLocale()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public antiGetIdentifier(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    return p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public disableSkin()V
    .locals 0

    return-void
.end method

.method public enableDynamicText(Z)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 437
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    if-eqz v1, :cond_0

    .line 438
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->setEnableDynamicText(Z)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    instance-of v1, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz v1, :cond_1

    .line 441
    check-cast v0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setEnableDynamicText(Z)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getApplySkin()Z
    .locals 1

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "bool"

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getColor(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelSize(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "drawable"

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getDynamicTextSwitch()Z
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId(I)I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getIdentifier(I)I

    move-result p1

    return p1
.end method

.method public getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    const-string v0, "integer"

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 291
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public getOriginId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getPixelSize(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getPluginLanguage()Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getSkinResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSkinId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSkinResources()Landroid/content/res/Resources;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSkinTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getOriginId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 246
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8

    .line 122
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->hasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getForceShutdownSkin(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 126
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    move-object v2, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/Resources;Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    const/4 p2, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 129
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SkinResourcesManager application package name get failed"

    .line 131
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 133
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResources()V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->hasInit:Z

    goto :goto_1

    :cond_1
    const-string p1, "init SkinResourcesManager input context is null"

    .line 138
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public initTypeface()V
    .locals 2

    const-string v0, "start initTypeface"

    .line 406
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTypeface(Landroid/content/res/AssetManager;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load default typeface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isDefaultSkin()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSkinReady()Z
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSkinReady\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    return v0
.end method

.method public isSkinVersionVerify()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    return v0
.end method

.method public ismSkinLoaded()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    return v0
.end method

.method public declared-synchronized setApplySkin(Z)V
    .locals 2

    monitor-enter p0

    .line 358
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApplySkin\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForceShutdownSkin(ZLandroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 364
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->forceShutdownSkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResources()V

    if-eqz p1, :cond_1

    .line 368
    invoke-static {p2, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->saveForceShutdownSkin(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 371
    :try_start_1
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setLinkTextColor(Landroid/view/View;I)V
    .locals 1

    .line 521
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setLinkTextColor(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColor(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 527
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setLinkTextColor(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPluginLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    return-void
.end method

.method public setSkinVersionVerify(Z)V
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinVersionVerify:Z

    return-void
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 1

    .line 509
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setTextColor(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getColor(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 515
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->setTextColor(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setmSkinLoaded(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->mSkinLoaded:Z

    return-void
.end method

.method public updateLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 400
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->pluginLanguage:Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;

    .line 401
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V

    .line 402
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesLanguage(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Landroid/content/res/Resources;)V

    return-void
.end method

.method public updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public upgradeResource(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 335
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setSkinResourcesManager(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;ZZ)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 339
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    instance-of p2, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    if-eqz p2, :cond_1

    .line 340
    check-cast p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->applySkin:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setApplySkin(Z)V

    .line 341
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->skinResources:Landroid/content/res/Resources;

    check-cast p1, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->setEnableDynamicText(Z)V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->originResources:Landroid/content/res/Resources;

    instance-of p2, p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    if-eqz p2, :cond_2

    .line 344
    check-cast p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->dynamicTextSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->setEnableDynamicText(Z)V

    :cond_2
    :goto_0
    return-void
.end method
