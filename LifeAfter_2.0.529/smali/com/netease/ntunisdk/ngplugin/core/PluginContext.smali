.class public Lcom/netease/ntunisdk/ngplugin/core/PluginContext;
.super Landroid/content/ContextWrapper;
.source "PluginContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginContext"


# instance fields
.field private final mHostContext:Landroid/content/Context;

.field private final mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mHostContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    const-string v0, "PluginContext"

    const-string v1, "getApplicationContext"

    .line 31
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    const-string v0, "PluginContext"

    const-string v1, "getApplicationInfo"

    .line 37
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    const-string v0, "PluginContext"

    const-string v1, "getAssets"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    const-string v0, "PluginContext"

    const-string v1, "getResources"

    .line 60
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginContext"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clipboard"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "notification"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mHostContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 55
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    const-string v0, "PluginContext"

    const-string v1, "getTheme"

    .line 72
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginContext;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
