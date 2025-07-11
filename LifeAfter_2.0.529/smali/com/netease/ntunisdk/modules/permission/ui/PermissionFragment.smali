.class public Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private permissionHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private permissionString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    return-object p1
.end method

.method private isSpecialPermission(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 71
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 2

    const-string v0, "PermissionFragment"

    const-string v1, "chooseDisplayDialog"

    .line 114
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getShowDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    new-instance v0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v1, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$1;-><init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setCallback(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;)V

    .line 131
    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->show()V

    .line 132
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPositiveText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPositiveText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setPositiveButtonText(Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getNegativeText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getNegativeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setNegativeButtonText(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getFirstText()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->dismiss()V

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->proceed(Ljava/lang/String;Landroid/app/Fragment;)V

    const-string p1, "show_dialog_flag is false, needWithTwoBtnDialog: proceed"

    .line 146
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public classifyPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionFragment"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 60
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSensitivePermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->requestSpecialPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNormalPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->requestNormalPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    :goto_0
    return-void
.end method

.method public goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 3

    .line 262
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionName()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;-><init>(Landroid/content/Context;)V

    .line 264
    new-instance v2, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment$2;-><init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setCallback(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;)V

    .line 277
    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->show()V

    .line 278
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getTipSetting()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getGotoSettingReason()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 283
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    sget v0, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__goto_settings_tip:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setMessage(Ljava/lang/String;)V

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    sget v0, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__goto_settings:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setPositiveButtonText(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    sget v0, Lcom/netease/ntunisdk/modules/permission/R$string;->netease_permissionkit_sdk__cancel:I

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setNegativeButtonText(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p2, "PermissionFragment"

    const-string p3, "Handle onActivityResult"

    .line 223
    invoke-static {p2, p3}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 225
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x538

    if-ne p1, p3, :cond_8

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionHandlerMap:Ljava/util/Map;

    iget-object p3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    .line 228
    iget-object p3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getGrantResults(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object p3

    if-eqz p1, :cond_7

    .line 230
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 231
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 232
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v4, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v2, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v2, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_4

    .line 242
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v4, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v2, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    new-array p3, v3, [I

    aput v2, p3, v4

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->hasAllPermissionUpdateAskAgain(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 251
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 253
    :cond_6
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_7
    :goto_0
    const-string p1, ""

    .line 256
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionString:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "PermissionFragment"

    const-string v1, "Handle onRequestPermissionsResult"

    .line 154
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 158
    array-length v3, p2

    if-lez v3, :cond_1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p2, v5

    .line 161
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    .line 162
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v3, v0, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 165
    iget-object v3, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionHandlerMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_2

    .line 168
    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_6

    const/16 v3, 0x538

    if-ne p1, v3, :cond_6

    .line 173
    invoke-static {p3}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    invoke-virtual {v2, p3, p2, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_2

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p3, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->putAllAskAgain(Landroid/app/Activity;[I[Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getShowDialog()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {v2, p3, p2, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_2

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getBooleanArray(Landroid/content/Context;[Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getGotoSetting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 182
    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {v2, p3, p2, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected requestNormalPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 4

    .line 196
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getGrantResults(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->hasAllPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->getBooleanArray(Landroid/content/Context;[Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 204
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->grantOrNotAskAgain(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getGotoSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->goToSetting(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :goto_0
    return-void
.end method

.method protected requestSpecialPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    aget-object v2, v0, v1

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "PermissionFragment"

    if-eqz v2, :cond_0

    const-string v2, "requestWriteSettingsPermission "

    .line 80
    invoke-static {v3, v2}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->requestWriteSettingsPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    .line 83
    :cond_0
    aget-object v0, v0, v1

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "requestSystemAlertWindow "

    .line 84
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->requestSystemAlertWindow(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    :cond_1
    return-void
.end method

.method protected requestSystemAlertWindow(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->hasAllPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {v0, v1, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected requestWriteSettingsPermission(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 92
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionUtils;->hasAllPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PermissionFragment"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "requestWriteSettingsPermission: chooseDisplayDialog"

    .line 96
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->showDialog(Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "requestWriteSettingsPermission: permissionHandler.getPermissionRequestProxy().onNeed()"

    .line 93
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;->getPermissionRequestProxy()Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {v0, v1, p1, p0}, Lcom/netease/ntunisdk/modules/permission/core/PermissionRequest;->onPermissionResult([ILcom/netease/ntunisdk/modules/permission/core/PermissionHandler;Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public setPermissionHandlerMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/modules/permission/core/PermissionHandler;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionFragment;->permissionHandlerMap:Ljava/util/Map;

    return-void
.end method
