.class final Lcom/netease/ntunisdk/base/StartupDialog$5;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/StartupDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupDialog;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$5;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "UniSDK Base"

    const-string v0, "onAnimationEnd!"

    .line 229
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$5;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/StartupDialog;->a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$5;->a:Lcom/netease/ntunisdk/base/StartupDialog;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/StartupDialog;->a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
