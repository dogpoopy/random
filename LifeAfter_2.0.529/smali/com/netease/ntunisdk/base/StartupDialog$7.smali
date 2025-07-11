.class final Lcom/netease/ntunisdk/base/StartupDialog$7;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;->popStartupSecond(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 291
    invoke-static {}, Lcom/netease/ntunisdk/base/StartupDialog;->a()Lcom/netease/ntunisdk/base/StartupDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/StartupDialog;->a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/netease/ntunisdk/base/StartupDialog;->a()Lcom/netease/ntunisdk/base/StartupDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/StartupDialog;->a(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
