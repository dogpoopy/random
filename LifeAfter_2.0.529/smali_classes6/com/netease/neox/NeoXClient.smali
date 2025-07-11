.class public abstract Lcom/netease/neox/NeoXClient;
.super Landroid/app/NativeActivity;
.source "NeoXClient.java"


# static fields
.field protected static s_NeoXClient_has_created:Ljava/lang/Boolean;


# instance fields
.field private m_plugin_mgr:Lcom/netease/neox/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/neox/NeoXClient;->s_NeoXClient_has_created:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/netease/neox/PluginManager;

    invoke-direct {v0}, Lcom/netease/neox/PluginManager;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    return-void
.end method

.method private static native NativeOnResume()V
.end method


# virtual methods
.method public native NativeOnCreate()V
.end method

.method public getAabRootPaths()[Ljava/lang/String;
    .locals 4

    const-string v0, "neox_aab"

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/NeoXClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string v3, "root_paths"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    .line 152
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExternalDataPath()Ljava/lang/String;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObbFilePath()Ljava/lang/String;
    .locals 6

    .line 122
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "%s/Android/obb/%s/main.%d.%s.obb"

    .line 130
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPatchObbFilePath()Ljava/lang/String;
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "%s/Android/obb/%s/patch.%d.%s.obb"

    .line 144
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object p1

    return-object p1
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/netease/neox/PluginNeoXView;

    invoke-direct {v0}, Lcom/netease/neox/PluginNeoXView;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/neox/PluginManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    .line 100
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v0, Lcom/netease/neox/NeoXClient;->s_NeoXClient_has_created:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/neox/NeoXClient;->s_NeoXClient_has_created:Ljava/lang/Boolean;

    .line 37
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {p0, v0}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 38
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/netease/neox/NeoXClient;->NativeOnCreate()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 45
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/neox/PluginManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 64
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/netease/neox/NeoXClient;->NativeOnResume()V

    .line 58
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 51
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0}, Lcom/netease/neox/PluginManager;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 76
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p0, p1}, Lcom/netease/neox/PluginManager;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    return-void
.end method

.method public registerPlugin(Lcom/netease/neox/IPlugin;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/neox/NeoXClient;->m_plugin_mgr:Lcom/netease/neox/PluginManager;

    invoke-virtual {v0, p1}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method
