.class public Lcom/netease/ntunisdk/ngplugin/core/PluginCore;
.super Ljava/lang/Object;
.source "PluginCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginCore"

.field private static volatile sInstance:Lcom/netease/ntunisdk/ngplugin/core/PluginCore;


# instance fields
.field private mHostContext:Landroid/content/Context;

.field private mLoadedPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInit(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mHostContext:Landroid/content/Context;

    goto :goto_0

    .line 39
    :cond_0
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mHostContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/netease/ntunisdk/ngplugin/core/PluginCore;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->sInstance:Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PluginCore"

    const-string v1, " start init PluginCore"

    .line 25
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    invoke-direct {v0}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->sInstance:Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    .line 27
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->sInstance:Lcom/netease/ntunisdk/ngplugin/core/PluginCore;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->doInit(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHostContext()Landroid/content/Context;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLoadedPluginInfo()Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mLoadedPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    return-object v0
.end method

.method public loadPlugin(Ljava/io/File;Landroid/content/Context;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " begin loadPlugin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginCore"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;

    invoke-direct {v0, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p2, p1, p3}, Lcom/netease/ntunisdk/ngplugin/core/PluginParser;->loadPlugin(Landroid/content/Context;Ljava/io/File;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mLoadedPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    .line 53
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginCore;->mLoadedPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    return-object p1
.end method
