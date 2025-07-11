.class public Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ProxyFragmentActivity.java"


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;

.field private final pluginKey:Ljava/lang/String;

.field private skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

.field private final skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    .line 111
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method private getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    .line 255
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 6

    .line 953
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7

    .line 1048
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/fragment/app/FragmentActivity;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public clearWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->clearWallpaper()V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->closeContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1857
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->closeOptionsMenu()V

    return-void
.end method

.method public createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->deleteDatabase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteSharedPreferences(Ljava/lang/String;)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1764
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 6

    .line 1053
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .line 1068
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->enterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->updateRelativeLayoutLayoutParams(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "using plugin findViewById failed"

    .line 225
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 227
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get AssetManager object in plugin"

    .line 154
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getExtraData(Ljava/lang/Class;)Landroidx/core/app/ComponentActivity$ExtraData;

    move-result-object p1

    return-object p1
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 2055
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    :try_start_0
    const-string v0, "get ProxyActivity getLayoutInflater"

    .line 240
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "get LayoutInflater object failed"

    .line 243
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 244
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 246
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get the Resources object in the plugin"

    .line 132
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 134
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 2070
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 518
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 519
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get Theme object in plugin"

    .line 181
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 2040
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1979
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isDeviceProtectedStorage()Z
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1831
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/DirectAction;",
            ">;>;)V"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1811
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1874
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onProvideAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1898
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 2050
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onStateNotSaved()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onUserInteraction()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->openOptionsMenu()V

    return-void
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->postponeEnterTransition()V

    return-void
.end method

.method public putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V
    .locals 1

    .line 2106
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->putExtraData(Landroidx/core/app/ComponentActivity$ExtraData;)V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    .line 915
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public releaseInstance()Z
    .locals 1

    .line 2003
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->removeStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->reportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    move-object v0, p0

    .line 854
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 821
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 848
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 842
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentActivity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 866
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/fragment/app/FragmentActivity;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 886
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1595
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setEnterSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setExitSharedElementCallback(Landroidx/core/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setVisible(Z)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setWallpaper(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setWallpaper(Ljava/io/InputStream;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1904
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1936
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1930
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/fragment/app/FragmentActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 2085
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    .line 1960
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    .line 2100
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->startLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 1942
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1631
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->stopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 2014
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportPostponeEnterTransition()V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 2034
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->supportStartPostponedEnterTransition()V

    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->takeKeyEvents(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyFragmentActivity;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->updateServiceGroup(Landroid/content/ServiceConnection;II)V

    return-void
.end method
