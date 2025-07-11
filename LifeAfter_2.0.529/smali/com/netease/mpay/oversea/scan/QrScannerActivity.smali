.class public Lcom/netease/mpay/oversea/scan/QrScannerActivity;
.super Landroid/app/Activity;
.source "QrScannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/QrScannerActivity$SavedInstanceArgs;,
        Lcom/netease/mpay/oversea/scan/QrScannerActivity$LaunchType;
    }
.end annotation


# static fields
.field protected static final PARAM_ACTIVITY_ORIENTATION:Ljava/lang/String; = "activity_orientation"

.field protected static final PARAM_LAUNCH_TYPE:Ljava/lang/String; = "launch_type"


# instance fields
.field private mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getOrientation(Landroid/app/Activity;)I
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static launchConfirmActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "launch_type"

    .line 163
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-class v1, Lcom/netease/mpay/oversea/scan/QrScannerActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public static launchScannerActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "launch_type"

    .line 157
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-class v1, Lcom/netease/mpay/oversea/scan/QrScannerActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private needRebuild(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "need_rebuild"

    .line 193
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "need_rebuild"

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2

    .line 179
    invoke-static {p0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->getOrientation(Landroid/app/Activity;)I

    move-result v0

    const-string v1, "activity_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;)Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;
    .locals 2

    const-string v0, "launch_type"

    const/4 v1, -0x1

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 152
    new-instance p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 150
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 148
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;-><init>(Landroid/app/Activity;)V

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V

    .line 135
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :try_start_0
    const-string v1, "activity_orientation"

    const/4 v2, -0x1

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    invoke-static {v1}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    sget-object v1, Lcom/netease/mpay/oversea/scan/Consts;->language:Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/scan/tools/Utils;->changeLanguage(Landroid/app/Activity;Lcom/netease/mpay/oversea/scan/MpayConfig$GameLanguage;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->handleIntent(Landroid/content/Intent;)Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    .line 60
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->needRebuild(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->finish()V

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 96
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->saveInstanceState(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/QrScannerActivity;->mActivityHandler:Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ActivityHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
