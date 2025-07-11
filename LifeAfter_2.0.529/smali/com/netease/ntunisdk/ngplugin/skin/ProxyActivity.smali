.class public Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;
.super Landroid/app/Activity;
.source "ProxyActivity.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final pluginKey:Ljava/lang/String;

.field private skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

.field private final skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    .line 104
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    .line 106
    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method private getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    .line 228
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    new-instance v1, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinFactory2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinLayoutInflater:Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    if-nez p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 6

    .line 926
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7

    .line 1021
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

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

    .line 774
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->clearWallpaper()V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1830
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

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

    .line 1052
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

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

    .line 1046
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteDatabase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteSharedPreferences(Ljava/lang/String;)Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 6

    .line 1026
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .line 1041
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public enterPictureInPictureMode()V
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

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

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getId(I)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->updateRelativeLayoutLayoutParams(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "using plugin findViewById failed"

    .line 198
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 200
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1974
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1400
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    :try_start_0
    const-string v0, "get ProxyActivity getLayoutInflater"

    .line 213
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "get LayoutInflater object failed"

    .line 216
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 217
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 219
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginActivity()Landroid/app/Activity;
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getApplySkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get the Resources object in the plugin"

    .line 127
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 129
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 491
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 492
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->getLayoutInflater(Ljava/lang/String;)Landroid/view/LayoutInflater;

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

    .line 542
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->pluginKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->skinManager:Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get Theme object in plugin"

    .line 154
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    .line 156
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isDeviceProtectedStorage()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1539
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1728
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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

    .line 1293
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

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

    .line 1299
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1859
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1281
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

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

    .line 1305
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onStateNotSaved()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1213
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

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

    .line 621
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public releaseInstance()Z
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    move-object v0, p0

    .line 827
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 794
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 821
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    .line 815
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 839
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 859
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

.method public setVrModeEnabled(ZLandroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1501
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setVrModeEnabled(ZLandroid/content/ComponentName;)V

    return-void
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setWallpaper(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setWallpaper(Ljava/io/InputStream;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1877
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1545
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1907
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

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

    .line 351
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

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

    .line 1943
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startLocalVoiceInteraction(Landroid/os/Bundle;)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 1925
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/ProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->updateServiceGroup(Landroid/content/ServiceConnection;II)V

    return-void
.end method
