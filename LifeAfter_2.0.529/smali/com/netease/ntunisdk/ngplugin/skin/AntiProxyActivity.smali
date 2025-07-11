.class public Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;
.super Landroid/app/Activity;
.source "AntiProxyActivity.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;

.field private final theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/app/Activity;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->theme:Landroid/content/res/Resources$Theme;

    .line 99
    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    .line 100
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->resources:Landroid/content/res/Resources;

    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity.getBaseContext(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 103
    new-instance p2, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;

    invoke-virtual {p4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->layoutInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 105
    :cond_0
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->layoutInflater:Landroid/view/LayoutInflater;

    .line 107
    :goto_0
    invoke-virtual {p4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 6

    .line 861
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 855
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result p1

    return p1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    return p1
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 7

    .line 956
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 709
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->clearWallpaper()V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    return-void
.end method

.method public createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 987
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 981
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteDatabase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteSharedPreferences(Ljava/lang/String;)Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1693
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 6

    .line 961
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 976
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1295
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    return-void
.end method

.method public enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishActivity(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    return-void
.end method

.method public finishAffinity()V
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public finishAfterTransition()V
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .line 1915
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCodeCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->layoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getMaxNumPictureInPictureActions()I
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMaxNumPictureInPictureActions()I

    move-result v0

    return v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getObbDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 426
    instance-of v0, p1, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 427
    iget-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->layoutInflater:Landroid/view/LayoutInflater;

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

    .line 477
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTaskId()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    const-string v0, "AntiProxyContext: getTheme"

    .line 131
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    const-string v0, "AntiProxyContext: getWindow"

    .line 200
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isActivityTransitionRunning()Z
    .locals 1

    .line 1824
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isActivityTransitionRunning()Z

    move-result v0

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isDeviceProtectedStorage()Z
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDeviceProtectedStorage()Z

    move-result v0

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isImmersive()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    return v0
.end method

.method public isLocalVoiceInteractionSupported()Z
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isLocalVoiceInteractionSupported()Z

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    return v0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    return v0
.end method

.method public moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 1

    .line 1927
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1618
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1709
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1228
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1623
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocalVoiceInteractionStarted()V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    return-void
.end method

.method public onLocalVoiceInteractionStopped()V
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1729
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1234
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public onPictureInPictureRequested()Z
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    return v0
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1240
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onStateNotSaved()V

    return-void
.end method

.method public onTopResumedActivityChanged(Z)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTopResumedActivityChanged(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 551
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 556
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOptionsMenu()V
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public overridePendingTransition(II)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    .line 823
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1921
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->releaseInstance()Z

    move-result v0

    return v0
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    return-void
.end method

.method public requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p1

    return-object p1
.end method

.method public requestVisibleBehind(Z)Z
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestVisibleBehind(Z)Z

    move-result p1

    return p1
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    move-object v0, p0

    .line 762
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 724
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 729
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 756
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 750
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 768
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 774
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 794
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1382
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentTransitionManager(Landroid/transition/TransitionManager;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setInheritShowWhenLocked(Z)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    return-void
.end method

.method public setTranslucent(Z)Z
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    move-result p1

    return p1
.end method

.method public setTurnScreenOn(Z)V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1436
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 684
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 689
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setWallpaper(Ljava/io/InputStream;)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showAssist(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;)V

    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 287
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1848
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 272
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1830
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 312
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1878
    iget-object v1, v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

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

    .line 1178
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startLocalVoiceInteraction(Landroid/os/Bundle;)V

    return-void
.end method

.method public startLockTask()V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->startLockTask()V

    return-void
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public stopLocalVoiceInteraction()V
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLocalVoiceInteraction()V

    return-void
.end method

.method public stopLockTask()V
    .locals 1

    .line 1541
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->stopLockTask()V

    return-void
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public takeKeyEvents(Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->updateServiceGroup(Landroid/content/ServiceConnection;II)V

    return-void
.end method
