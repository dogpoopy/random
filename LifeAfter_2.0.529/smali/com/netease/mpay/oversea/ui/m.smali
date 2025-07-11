.class public Lcom/netease/mpay/oversea/ui/m;
.super Lcom/netease/mpay/oversea/ui/n;
.source "InheritHandler.java"


# instance fields
.field protected j:Lcom/netease/mpay/oversea/ui/z;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m;->l()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    move-result p1

    if-nez p1, :cond_3

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    .line 49
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v1, :cond_2

    .line 50
    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_2
    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v3, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/16 v4, 0x1e

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/netease/mpay/oversea/ui/n;->a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 55
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/m;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Landroid/view/View;)V

    return-void
.end method

.method private l()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    new-instance v1, Lcom/netease/mpay/oversea/ui/y;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/y;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/ui/y;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    check-cast v0, Lcom/netease/mpay/oversea/ui/a0;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web:I

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/m$b;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/netease/mpay/oversea/ui/a0;->a(ILandroid/view/ViewGroup;Lcom/netease/mpay/oversea/ui/y$e;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/o;
    .locals 7

    .line 3
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

    .line 72
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->i:Lcom/netease/mpay/oversea/ui/o;

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_0
    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v3, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/16 v4, 0x1e

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    .line 10
    invoke-virtual {p0, v2}, Lcom/netease/mpay/oversea/ui/n;->a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/n;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 12
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    .line 21
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->i0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    new-instance v2, Lcom/netease/mpay/oversea/ui/m$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/m$a;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/cc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/d7;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/m;->l()Landroid/view/View;

    move-result-object p1

    .line 39
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;)V

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Lcom/netease/mpay/oversea/ui/z;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/m$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ui/m$c;-><init>(Lcom/netease/mpay/oversea/ui/m;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/z;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)Lcom/netease/mpay/oversea/ui/z;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Lcom/netease/mpay/oversea/ui/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 71
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
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->k()V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Lcom/netease/mpay/oversea/ui/z;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z;->b()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Lcom/netease/mpay/oversea/ui/z;
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
