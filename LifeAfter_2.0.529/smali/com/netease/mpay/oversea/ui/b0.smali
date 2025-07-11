.class public Lcom/netease/mpay/oversea/ui/b0;
.super Lcom/netease/mpay/oversea/ui/n;
.source "WebViewLoginHandler.java"


# instance fields
.field protected j:Lcom/netease/mpay/oversea/ui/z;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/o;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/ui/a0;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/a0;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v6
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_0
    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v4, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    .line 7
    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/netease/mpay/oversea/ui/n;->a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 10
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    new-instance v1, Lcom/netease/mpay/oversea/ui/y;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/n;->f:Lcom/netease/mpay/oversea/g6;

    sget-object v4, Lcom/netease/mpay/oversea/g6;->G:Lcom/netease/mpay/oversea/g6;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/y;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/y;)V

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast p1, Lcom/netease/mpay/oversea/ui/a0;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web:I

    new-instance v2, Lcom/netease/mpay/oversea/ui/b0$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/b0$a;-><init>(Lcom/netease/mpay/oversea/ui/b0;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/netease/mpay/oversea/ui/a0;->a(ILandroid/view/ViewGroup;Lcom/netease/mpay/oversea/ui/y$e;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 130
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    move-result p1

    if-nez p1, :cond_6

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    .line 132
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v2, :cond_5

    .line 133
    sget-object v2, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_5
    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v4, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    .line 135
    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/netease/mpay/oversea/ui/n;->a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 138
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;)V

    .line 141
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0;->j:Lcom/netease/mpay/oversea/ui/z;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/b0$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ui/b0$b;-><init>(Lcom/netease/mpay/oversea/ui/b0;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/z;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)Lcom/netease/mpay/oversea/ui/z;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/b0;->j:Lcom/netease/mpay/oversea/ui/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Z)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->f()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->j()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/b0;->k()V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/b0;->j:Lcom/netease/mpay/oversea/ui/z;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z;->b()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/b0;->j:Lcom/netease/mpay/oversea/ui/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->k()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->l()V

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    return-void
.end method
