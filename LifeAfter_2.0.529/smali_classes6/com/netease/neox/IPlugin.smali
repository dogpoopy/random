.class public interface abstract Lcom/netease/neox/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed(Landroid/app/Activity;)V
.end method

.method public abstract onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onStop(Landroid/app/Activity;)V
.end method

.method public abstract onWindowFocusChanged(Landroid/app/Activity;Z)V
.end method
