.class public Lcom/netease/ntunisdk/modules/api/LifecycleManager;
.super Ljava/lang/Object;
.source "LifecycleManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onLowMemory()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onStop()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->getInst()Lcom/netease/ntunisdk/modules/base/InnerModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/base/InnerModulesManager;->onWindowFocusChanged(Z)V

    return-void
.end method
