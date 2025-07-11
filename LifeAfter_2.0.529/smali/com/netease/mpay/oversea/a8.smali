.class public Lcom/netease/mpay/oversea/a8;
.super Lcom/netease/mpay/oversea/z0;
.source "PasswordNew.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a8;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a8;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a8;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/a8;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "email"

    invoke-direct {v0, v1, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/a0;

    const-string v0, "password"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/netease/mpay/oversea/f6;

    iget-object v8, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v9, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    :goto_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 10
    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_2
    move-object v6, v1

    const/4 v1, 0x0

    move-object v2, v4

    move-object v4, p1

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/a8$i;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/a8$i;-><init>(Lcom/netease/mpay/oversea/a8;)V

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, v8

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 44
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/p2;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    .line 5
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v6, Lcom/netease/mpay/oversea/a8$g;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/oversea/a8$g;-><init>(Lcom/netease/mpay/oversea/a8;Ljava/lang/String;)V

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/p2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ea;)V

    .line 22
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p2;->k()Lcom/netease/mpay/oversea/p2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_0

    .line 24
    :cond_0
    new-instance v6, Lcom/netease/mpay/oversea/p2;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    .line 25
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v5, Lcom/netease/mpay/oversea/a8$h;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/oversea/a8$h;-><init>(Lcom/netease/mpay/oversea/a8;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/p2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ea;)V

    .line 42
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/p2;->l()Lcom/netease/mpay/oversea/p2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/a8;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/p;->onCancel()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_hydra_email_password_new:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/a8$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/a8$a;-><init>(Lcom/netease/mpay/oversea/a8;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/w2;->j()Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 14
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 16
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/a8$b;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/a8$b;-><init>(Lcom/netease/mpay/oversea/a8;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v0, Lcom/netease/mpay/oversea/a8$c;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/a8$c;-><init>(Lcom/netease/mpay/oversea/a8;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_second:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_second_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    new-instance v2, Lcom/netease/mpay/oversea/a8$d;

    invoke-direct {v2, p0, p3}, Lcom/netease/mpay/oversea/a8$d;-><init>(Lcom/netease/mpay/oversea/a8;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    new-instance v1, Lcom/netease/mpay/oversea/a8$e;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/oversea/a8$e;-><init>(Lcom/netease/mpay/oversea/a8;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__set_password:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/a8$f;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/mpay/oversea/a8$f;-><init>(Lcom/netease/mpay/oversea/a8;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a8;->h()V

    const/4 v0, 0x1

    return v0
.end method
