.class public Lcom/netease/mrzhna/PermissionNotification;
.super Landroid/app/Activity;
.source "PermissionNotification.java"


# static fields
.field public static final EXIT_GAME:Ljava/lang/String; = "__exit_game_app"

.field public static final EXIT_OR_SETTING:Ljava/lang/String; = "__exit_or_setting"

.field public static final FIRST_TIME_REQUEST_PERMISSION:Ljava/lang/String; = "__first_time_request_permission"

.field public static final PERMISSION_NOTIFICATION:I = 0x1e241

.field public static final PERMISSION_REQUEST:I = 0x1e240

.field public static final SKIP_NOTIFICATION:Ljava/lang/String; = "__skip_permission_notification"


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mFunc:Landroid/widget/RelativeLayout;

.field private mPermissions:[Ljava/lang/String;

.field private mSetting:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 64
    iput-object v0, p0, Lcom/netease/mrzhna/PermissionNotification;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/PermissionNotification;IZ)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netease/mrzhna/PermissionNotification;->setResultRequestOrExit(IZ)V

    return-void
.end method

.method private backToExit(Z)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionNotification.backToExit  isExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[azx]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/mrzhna/Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "__exit_game_app"

    .line 221
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/PermissionNotification;->startActivity(Landroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->finish()V

    return-void
.end method

.method private checkAllRights(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/netease/mrzhna/PermissionNotification;->mPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 254
    aget-object v2, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/netease/mrzhna/PermissionNotification;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 242
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setResultRequestOrExit(IZ)V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "__exit_or_setting"

    .line 172
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/netease/mrzhna/PermissionNotification;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->finish()V

    return-void
.end method

.method private showFirstRequestDialog()V
    .locals 3

    const-string v0, "[azx]"

    const-string v1, "PermissionNotification.showFirstRequestDialog"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "neox_permission_notification"

    .line 99
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/PermissionNotification;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_confirm"

    .line 101
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/PermissionNotification;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/PermissionNotification$1;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/PermissionNotification$1;-><init>(Lcom/netease/mrzhna/PermissionNotification;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showSecondRequestDialog()V
    .locals 6

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 124
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 125
    invoke-virtual {v1, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "neox_permission_storage_confirm"

    invoke-direct {p0, v3}, Lcom/netease/mrzhna/PermissionNotification;->getStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 133
    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_confirm"

    .line 135
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/PermissionNotification;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/PermissionNotification$2;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/PermissionNotification$2;-><init>(Lcom/netease/mrzhna/PermissionNotification;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "neox_cancel"

    .line 151
    invoke-direct {p0, v1}, Lcom/netease/mrzhna/PermissionNotification;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/mrzhna/PermissionNotification$3;

    invoke-direct {v2, p0}, Lcom/netease/mrzhna/PermissionNotification$3;-><init>(Lcom/netease/mrzhna/PermissionNotification;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/PermissionNotification;->backToExit(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09000d

    .line 80
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/PermissionNotification;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__first_time_request_permission"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionNotification.onCreate  firstRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[azx]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/netease/mrzhna/PermissionNotification;->showFirstRequestDialog()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/netease/mrzhna/PermissionNotification;->showSecondRequestDialog()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/netease/mrzhna/PermissionNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mrzhna/PermissionNotification;->checkAllRights(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/netease/mrzhna/PermissionNotification;->backToExit(Z)V

    :cond_0
    return-void
.end method
