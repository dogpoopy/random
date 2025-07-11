.class public abstract Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SkinActivity.java"


# instance fields
.field private skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

.field protected skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getDynamicEnable()Z
    .locals 3

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->isDynamicRegister()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getUrlKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->isEnable(Ljava/lang/String;)Z

    move-result v1

    .line 43
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->isDynamicTextEnable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string v1, "getDynamicEnable throws exception"

    .line 49
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    return v0
.end method

.method private getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    .line 189
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez p1, :cond_2

    .line 197
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private getPluginKey()Ljava/lang/String;
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-nez v1, :cond_1

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    .line 212
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    shr-int/lit8 v1, p1, 0x18

    const/16 v2, 0x7e

    if-lt v1, v2, :cond_2

    .line 140
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result v1

    .line 147
    invoke-super {p0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 149
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->updateRelativeLayoutLayoutParams(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-object v1

    .line 155
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "SkinActivity findViewById failed"

    .line 157
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 159
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    :try_start_0
    const-string v0, "use SkinActivity getLayoutInflater"

    .line 172
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "SkinActivity get LayoutInflater failed"

    .line 176
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 177
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getOriginActivity()Landroid/app/Activity;
    .locals 4

    .line 270
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

    .line 246
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getOriginResources()Landroid/content/res/Resources;
    .locals 1

    .line 238
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getOriginTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 242
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getDynamicEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 98
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "get Resources failed in plugin"

    .line 100
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SkinActivity getSystemService "

    .line 252
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 254
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 257
    :try_start_0
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1

    .line 265
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getTheme failed"

    .line 123
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public isDynamicTextEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 220
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConfigurationChanged Failed"

    .line 231
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 232
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getPluginKey()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->updateResourcesConfig(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->getDynamicEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hookLayoutInflater(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "in activity hook LayoutInflater Failed"

    .line 76
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 276
    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 278
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1, v0, p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->setForceShutdownSkin(ZLandroid/content/Context;)V

    :cond_0
    :goto_0
    return-void
.end method
