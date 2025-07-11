.class public Lcom/netease/ntunisdk/base/view/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isNeedShowingNavigationBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->isNeedShowingNavigationBar()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/view/a;->a(Landroid/content/Context;Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->isNeedShowingNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/view/ViewUtils;->setDialogUnFocusable(Landroid/view/Window;)V

    .line 28
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/view/a;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 29
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 30
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/view/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/base/view/ViewUtils;->clearDialogUnFocusable(Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
