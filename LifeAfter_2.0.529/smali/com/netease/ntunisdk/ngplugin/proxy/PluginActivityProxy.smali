.class public abstract Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private b:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

.field private c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a:Z

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v1

    const-string v2, "com.netease.ntunisdk.ngplugin.PluginManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->isDynamicRegister()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getUrlKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->isEnable(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->isDynamicTextEnable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0

    :catch_1
    move-exception v1

    const-string v2, "PluginActivityProxy: getDynamicEnable ClassNotFoundException"

    invoke-static {v2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a:Z

    return v0
.end method

.method private declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->isApplySkin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Landroid/view/LayoutInflater;
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-direct {v1, v0, p0, v2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->getSelf()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getId(I)I

    move-result v0

    invoke-super {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->updateRelativeLayoutLayoutParams(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "SkinActivity findViewById failed"

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public forceReset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c()Landroid/view/LayoutInflater;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginActivityProxy: getLayoutInflater Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a:Z

    const-string v1, "PluginActivityProxy: getLayoutInflater ClassNotFoundException"

    goto :goto_0
.end method

.method public getOriginActivity()Landroid/app/Activity;
    .locals 4

    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/app/Activity;)V

    return-object v0
.end method

.method public getOriginLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getOriginTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PluginActivityProxy: getResources Failed"

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c()Landroid/view/LayoutInflater;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PluginActivityProxy: getTheme Failed"

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public isApplySkin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d:Z

    return v0
.end method

.method public isDynamicTextEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PluginActivityProxy: onConfigurationChanged Failed"

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d()V

    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hookLayoutInflater(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PluginActivityProxy: onCreate Failed"

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    :cond_0
    return-void
.end method

.method public setApplySkin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->d:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->c:Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginManagerProxy;->setForceShutdownSkin(ZLandroid/content/Context;)V

    :cond_0
    :goto_0
    return-void
.end method
