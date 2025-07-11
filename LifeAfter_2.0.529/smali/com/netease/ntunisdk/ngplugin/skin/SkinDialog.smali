.class public abstract Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;
.super Landroid/app/Dialog;
.source "SkinDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "create SkinDialog"

    .line 25
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getDynamicTextSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hookLayoutInflater(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SkinDialog hook LayoutInflater Failed"

    .line 34
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "create SkinDialog"

    .line 41
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;->getPluginKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getDynamicTextSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->hookLayoutInflater(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SkinDialog hook LayoutInflater Failed"

    .line 50
    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getPluginKey()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;->getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinDialog;->getPluginKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    shr-int/lit8 v1, p1, 0x18

    const/16 v2, 0x7e

    if-lt v1, v2, :cond_1

    .line 68
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "SkinDialog findViewById has Failed"

    .line 79
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPluginHandler()Lcom/netease/ntunisdk/ngplugin/common/PluginHandler;
.end method
