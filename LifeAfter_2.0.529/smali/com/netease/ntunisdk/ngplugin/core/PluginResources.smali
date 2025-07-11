.class public Lcom/netease/ntunisdk/ngplugin/core/PluginResources;
.super Landroid/content/res/Resources;
.source "PluginResources.java"


# instance fields
.field private applySkin:Z

.field private enableDynamicText:Z

.field private final originResource:Landroid/content/res/Resources;

.field private final skinPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;ZZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 44
    iput-object p5, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->skinPackageName:Ljava/lang/String;

    .line 45
    iput-boolean p6, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->applySkin:Z

    .line 46
    iput-boolean p7, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    return-void
.end method

.method private getIdentifier(I)I
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 586
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->skinPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 493
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 494
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 501
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 502
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 504
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 242
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 249
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 250
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    .line 252
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x1

    return p1
.end method

.method public getColor(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 411
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 418
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 419
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 421
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 4

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 434
    invoke-super {p0, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1

    .line 436
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 437
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_2

    .line 445
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 446
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1

    .line 448
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 540
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 541
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 548
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 549
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 551
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 469
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 470
    invoke-super {p0, v2, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 477
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 478
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 480
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDimension(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 516
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 517
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 524
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 525
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1

    .line 527
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 382
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 389
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 390
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 392
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDimensionPixelSize(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 213
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 220
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 221
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 223
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_1

    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v0

    .line 326
    invoke-super {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 333
    :catch_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v0

    .line 300
    invoke-super {p0, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 302
    :catch_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHandleString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    const-string v2, ""

    if-lt v0, v1, :cond_2

    .line 592
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_2

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 603
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v2
.end method

.method public varargs getHandleString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    const-string v2, ""

    if-lt v0, v1, :cond_2

    .line 619
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_2

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 630
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object v2
.end method

.method public getId(I)I
    .locals 2

    .line 566
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->applySkin:Z

    if-eqz v0, :cond_1

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_0

    return p1

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getIdentifier(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 78
    iget-object p3, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->skinPackageName:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInteger(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 351
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v2

    .line 352
    invoke-super {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-lt v0, v1, :cond_1

    .line 359
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 360
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 362
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 276
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayout Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    .line 280
    invoke-super {p0, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    goto :goto_1

    .line 282
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object p1

    .line 286
    :catch_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 647
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_1

    .line 92
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 103
    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_2

    .line 112
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 113
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p1, ""

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_1

    .line 128
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    const/16 v2, 0x7f

    if-lt v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 139
    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_2

    .line 148
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 149
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p1, ""

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_1

    .line 170
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    if-eqz v2, :cond_1

    const/16 v2, 0x7f

    if-lt v0, v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->originResource:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 181
    invoke-static {v3}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->parseString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 186
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-lt v0, v1, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->getId(I)I

    move-result p1

    .line 191
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 193
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p1, ""

    return-object p1
.end method

.method public setApplySkin(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->applySkin:Z

    return-void
.end method

.method public setEnableDynamicText(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginResources;->enableDynamicText:Z

    return-void
.end method
