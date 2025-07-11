.class public Lcom/netease/mpay/oversea/auth/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field public static final CURRENT_QUICK_QR_MODE:Ljava/lang/String; = "CURRENT_QUICK_QR_MODE"

.field public static final CURRENT_SHORTCUT_MAIN_RUNNING:Ljava/lang/String; = "CURRENT_SHORTCUT_MAIN_RUNNING"

.field public static final DECODED_DATA:Ljava/lang/String; = "decoded_data"

.field public static final DOT:Ljava/lang/String; = "."

.field public static final GAME_MOBILE:Ljava/lang/String; = "game.mobile"

.field public static final NTES:Ljava/lang/String; = "ntes"

.field public static final TAG:Ljava/lang/String; = "AuthActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getUnisdkDeepLinkPath()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "JF_GAMEID"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcess()V
    .locals 2

    const-string v0, "AuthActivity"

    const-string v1, "killProcess"

    .line 119
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->finish()V

    const/4 v0, 0x0

    .line 121
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private loadGameBackground()V
    .locals 0

    return-void
.end method

.method private returnToGame()Z
    .locals 4

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "ntes"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "game.mobile"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 101
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getUnisdkDeepLinkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no UniSDK Deep Link found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private shouldHandleLifecycle()Z
    .locals 1

    .line 210
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getFlag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":[add]="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult...requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "AuthActivity"

    const-string v0, "onConfigurationChanged"

    .line 193
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasRunning\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->hasRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/auth/AuthUtils;->checkRequest(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "check intent failed, finish self"

    .line 42
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->finish()V

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const-string p1, "open From History"

    .line 49
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x24000000

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v3

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/auth/SDKContext;->setColdLaunch(Z)V

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "cold launch"

    goto :goto_1

    :cond_3
    const-string v3, "hot launch"

    :goto_1
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "decoded_data"

    .line 62
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->init(Landroid/content/Intent;)V

    .line 64
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/auth/AuthActivity;->setIntent(Landroid/content/Intent;)V

    .line 65
    invoke-static {}, Lcom/netease/mpay/oversea/auth/SDKContext;->getInstance()Lcom/netease/mpay/oversea/auth/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/auth/SDKContext;->isColdLaunch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->attachActivity(Landroid/app/Activity;)Lcom/netease/mpay/oversea/auth/Rule;

    .line 67
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->start()V

    goto :goto_2

    .line 69
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->getInstance()Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/scan/auth/DefaultAuthRules;->start()V

    .line 70
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "CURRENT_SHORTCUT_MAIN_RUNNING"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->shouldHandleLifecycle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onDestroy()V

    .line 177
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    .line 178
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "AuthActivity"

    const-string v1, "onNewIntent"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 199
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "AuthActivity"

    const-string v1, "onRestart"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 137
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 144
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/auth/AuthActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 165
    invoke-static {}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->getInstance()Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/auth/plugins/PluginExecutor;->onStop()V

    return-void
.end method
