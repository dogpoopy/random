.class public Lcom/netease/ntunisdk/CcMtPermissionUtil;
.super Ljava/lang/Object;
.source "CcMtPermissionUtil.java"


# static fields
.field private static sHasAlter:Z

.field private static sHasCheckAlter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static showDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 34
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ENABLE_UNISDK_PERMISSION_TIPS"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 p2, 0x0

    .line 36
    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "unisdk_ccmt_permission_tips"

    .line 41
    invoke-static {p0, v1}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNISDK_CCMT_PERMISSION_TIPS"

    .line 40
    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x104000a

    .line 42
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const/high16 v0, 0x1040000

    .line 43
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    .line 42
    invoke-static/range {v3 .. v8}, Lcom/netease/ntunisdk/CcMtPermissionUtil;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 50
    sget-boolean v0, Lcom/netease/ntunisdk/CcMtPermissionUtil;->sHasCheckAlter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.netease.ntunisdk.base.view.Alerter"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    sput-boolean v0, Lcom/netease/ntunisdk/CcMtPermissionUtil;->sHasAlter:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    sput-boolean v0, Lcom/netease/ntunisdk/CcMtPermissionUtil;->sHasCheckAlter:Z

    .line 61
    :cond_0
    sget-boolean v0, Lcom/netease/ntunisdk/CcMtPermissionUtil;->sHasAlter:Z

    if-eqz v0, :cond_1

    .line 62
    new-instance v1, Lcom/netease/ntunisdk/base/view/Alerter;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    .line 63
    invoke-virtual/range {v1 .. v8}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p3, p5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
