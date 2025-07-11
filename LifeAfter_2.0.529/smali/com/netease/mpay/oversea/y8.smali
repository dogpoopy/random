.class public Lcom/netease/mpay/oversea/y8;
.super Lcom/netease/mpay/oversea/z0;
.source "RegisterHome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p0, 0x1

    .line 165
    invoke-static {p0}, Lcom/netease/mpay/oversea/g8;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/y8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/y8;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/y8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/y8;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/y8;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 166
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 167
    new-instance p2, Lcom/netease/mpay/oversea/l2;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v5, Lcom/netease/mpay/oversea/y8$b;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/oversea/y8$b;-><init>(Lcom/netease/mpay/oversea/y8;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/l2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;ZLcom/netease/mpay/oversea/ea;)V

    .line 184
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/l2;->k()Lcom/netease/mpay/oversea/l2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/y8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/y8;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p5;->b()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    const-string v1, "loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/v2;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->a()V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/p;->onCancel()V

    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic lambda$KAgDPW_p-m8Izd-v-Ptx1gdCCxY(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/y8;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/y8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/y8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_hydra_email_register:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/y8$c;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/y8$c;-><init>(Lcom/netease/mpay/oversea/y8;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/w2;->j()Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 14
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 17
    sget-object p3, Lcom/netease/mpay/oversea/s9;->C:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v2, :cond_2

    .line 18
    new-instance p3, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    invoke-direct {p3, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 19
    iget-object p3, p3, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 20
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_email_upgrade:I

    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_email_upgrade_set_pw:I

    .line 24
    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    :goto_1
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/EditText;

    const-string p2, "account"

    .line 32
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/z0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 35
    new-instance p3, Lcom/netease/mpay/oversea/y8$d;

    invoke-direct {p3, p0, v4}, Lcom/netease/mpay/oversea/y8$d;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    new-instance p3, Lcom/netease/mpay/oversea/y8$e;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/y8$e;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/ImageView;)V

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/EditText;

    const-string p2, "pwd"

    .line 63
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/z0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 66
    new-instance p3, Lcom/netease/mpay/oversea/y8$f;

    invoke-direct {p3, p0, v5}, Lcom/netease/mpay/oversea/y8$f;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    new-instance p3, Lcom/netease/mpay/oversea/y8$g;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/y8$g;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/ImageView;)V

    invoke-virtual {v5, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ToggleButton;

    .line 94
    new-instance p3, Lcom/netease/mpay/oversea/y8$h;

    invoke-direct {p3, p0, v5}, Lcom/netease/mpay/oversea/y8$h;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_check:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/ToggleButton;

    .line 105
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 106
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->l()Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/netease/mpay/oversea/i9;->c(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;

    move-result-object p3

    .line 107
    iget-object p3, p3, Lcom/netease/mpay/oversea/q3$f;->j:Lcom/netease/mpay/oversea/h8;

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 108
    iget-object v2, p3, Lcom/netease/mpay/oversea/h8;->a:Lcom/netease/mpay/oversea/d5;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p3, :cond_4

    .line 109
    iget-object v1, p3, Lcom/netease/mpay/oversea/h8;->b:Lcom/netease/mpay/oversea/d5;

    :cond_4
    const-string p3, ""

    if-eqz v2, :cond_5

    .line 111
    iget-object v3, v2, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    move-object v8, v3

    goto :goto_3

    :cond_5
    move-object v8, p3

    :goto_3
    if-eqz v1, :cond_6

    .line 112
    iget-object v3, v1, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object p3, v1, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    :cond_6
    move-object v9, p3

    .line 114
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v3, 0x1

    if-eqz p3, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x4

    .line 115
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v7, p3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_5

    .line 120
    :cond_7
    sget-object p3, Lcom/netease/mpay/oversea/-$$Lambda$y8$KAgDPW_p-m8Izd-v-Ptx1gdCCxY;->INSTANCE:Lcom/netease/mpay/oversea/-$$Lambda$y8$KAgDPW_p-m8Izd-v-Ptx1gdCCxY;

    invoke-virtual {v7, p3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_policy:I

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v8, v11, v0

    aput-object v9, v11, v3

    invoke-static {p3, v6, v11}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 126
    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_email_privacy_highlight:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 128
    :try_start_0
    new-instance v11, Lcom/netease/mpay/oversea/y8$i;

    invoke-direct {v11, p0, v2}, Lcom/netease/mpay/oversea/y8$i;-><init>(Lcom/netease/mpay/oversea/y8;Lcom/netease/mpay/oversea/d5;)V

    .line 137
    new-instance v2, Lcom/netease/mpay/oversea/y8$j;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/y8$j;-><init>(Lcom/netease/mpay/oversea/y8;Lcom/netease/mpay/oversea/d5;)V

    new-array v1, v10, [I

    aput v6, v1, v0

    aput v6, v1, v3

    new-array v6, v10, [Ljava/lang/String;

    aput-object v8, v6, v0

    aput-object v9, v6, v3

    new-array v10, v10, [Landroid/text/style/ClickableSpan;

    aput-object v11, v10, v0

    aput-object v2, v10, v3

    .line 146
    invoke-static {p3, v1, v6, v10}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v1

    .line 148
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 149
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 150
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Lcom/netease/mpay/oversea/y8$k;

    invoke-direct {v0, p0, v7}, Lcom/netease/mpay/oversea/y8$k;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/ToggleButton;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 158
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    invoke-virtual {v7, p3}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v6, 0x1

    .line 163
    :goto_5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 164
    new-instance p3, Lcom/netease/mpay/oversea/y8$a;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/netease/mpay/oversea/y8$a;-><init>(Lcom/netease/mpay/oversea/y8;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/widget/ToggleButton;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/y8;->h()V

    const/4 v0, 0x1

    return v0
.end method
