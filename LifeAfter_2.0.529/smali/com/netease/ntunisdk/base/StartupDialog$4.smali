.class final Lcom/netease/ntunisdk/base/StartupDialog$4;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupDialog;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$4;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupDialog$4;->a:Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "UniSDK Base"

    const-string v0, "StartupDialog onDismiss"

    .line 203
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$4;->a:Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;->finishListener()V

    .line 207
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CLEAR_FOCUS_WHEN_STARTUP"

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$4;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/StartupDialog;->a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method
