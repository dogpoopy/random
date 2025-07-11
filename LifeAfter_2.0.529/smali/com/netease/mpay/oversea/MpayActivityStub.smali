.class public Lcom/netease/mpay/oversea/MpayActivityStub;
.super Landroid/app/Activity;
.source "MpayActivityStub.java"


# instance fields
.field private a:Lcom/netease/mpay/oversea/p0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/p0;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->a()Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_1
    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 13
    invoke-static {p0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/app/Activity;)V

    .line 15
    :try_start_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 18
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "class_name"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 24
    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/p0;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/p0;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/p0;->b(Landroid/app/Activity;)V

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/p0;->a(Landroid/os/Bundle;)V

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->b()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->c()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->g()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/g9;->a(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/p0;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->d()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/g9;->b(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/p0;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->h()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p0;->i()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivityStub;->a:Lcom/netease/mpay/oversea/p0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/p0;->a(Z)V

    :cond_1
    return-void
.end method
