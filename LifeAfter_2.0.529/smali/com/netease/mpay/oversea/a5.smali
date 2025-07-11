.class public Lcom/netease/mpay/oversea/a5;
.super Lcom/netease/mpay/oversea/ui/a;
.source "LVUHandler.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/b1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a5;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a5;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/a5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/j;->a:I

    iget-object p1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a5;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 20
    new-instance v6, Lcom/netease/mpay/oversea/y4;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v5, Lcom/netease/mpay/oversea/a5$b;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/oversea/a5$b;-><init>(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;)V

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/y4;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 34
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/a5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->f()Lcom/netease/mpay/oversea/e6;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    move-object v5, v1

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 13
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v1

    move-object v6, v5

    .line 20
    :goto_1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->G:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v4, :cond_2

    .line 21
    new-instance v0, Lcom/netease/mpay/oversea/o8;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v7, Lcom/netease/mpay/oversea/a5$a;

    invoke-direct {v7, p0, p1, v5, v6}, Lcom/netease/mpay/oversea/a5$a;-><init>(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/o8;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 42
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_2

    .line 44
    :cond_2
    invoke-direct {p0, p1, v5, v6}, Lcom/netease/mpay/oversea/a5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/oversea/z4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_NETWORK:I

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/a1;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "NAV_CONTENT"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b1;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    .line 11
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5;->g:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->f()V

    :cond_0
    return-void
.end method
