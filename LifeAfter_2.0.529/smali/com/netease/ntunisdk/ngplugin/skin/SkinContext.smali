.class public Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;
.super Landroid/content/ContextWrapper;
.source "SkinContext.java"


# instance fields
.field private final pluginKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;->pluginKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 31
    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
