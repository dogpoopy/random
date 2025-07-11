.class public Lcom/netease/mpay/oversea/g2;
.super Lcom/netease/mpay/oversea/z0;
.source "EmailLoginHome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/g2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/g2;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/g2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/g2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Event: sent ApiResultEvent"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    new-instance v1, Lcom/netease/mpay/oversea/o;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    invoke-direct {v1, p1, p2, v2}, Lcom/netease/mpay/oversea/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/g2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/g2;->i()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/g2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/g2;->j()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "single_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v1}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v3, Lcom/netease/mpay/oversea/d2;

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/e2;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/g2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private j()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    iget-object v3, v2, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    .line 4
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    .line 5
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/d2;->l()Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    .line 6
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/g2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/g2$b;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/g2$b;-><init>(Lcom/netease/mpay/oversea/g2;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13
    new-instance p3, Lcom/netease/mpay/oversea/g2$c;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/g2$c;-><init>(Lcom/netease/mpay/oversea/g2;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 20
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 22
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 23
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 25
    new-instance v0, Lcom/netease/mpay/oversea/g2$d;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/g2$d;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 31
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    new-instance v1, Lcom/netease/mpay/oversea/g2$e;

    invoke-direct {v1, p0, p3}, Lcom/netease/mpay/oversea/g2$e;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 53
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    new-instance v2, Lcom/netease/mpay/oversea/g2$f;

    invoke-direct {v2, p0, p3}, Lcom/netease/mpay/oversea/g2$f;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    new-instance v0, Lcom/netease/mpay/oversea/g2$g;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/g2$g;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 83
    new-instance v1, Lcom/netease/mpay/oversea/g2$h;

    invoke-direct {v1, p0, p3}, Lcom/netease/mpay/oversea/g2$h;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    new-instance v1, Lcom/netease/mpay/oversea/g2$i;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/mpay/oversea/g2$i;-><init>(Lcom/netease/mpay/oversea/g2;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_register:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 121
    new-instance p3, Lcom/netease/mpay/oversea/g2$j;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/g2$j;-><init>(Lcom/netease/mpay/oversea/g2;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_reset:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 135
    new-instance p3, Lcom/netease/mpay/oversea/g2$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/g2$a;-><init>(Lcom/netease/mpay/oversea/g2;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z
    .locals 1

    .line 136
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    instance-of p1, p2, Lcom/netease/mpay/oversea/d6;

    if-eqz p1, :cond_3

    .line 138
    move-object p1, p2

    check-cast p1, Lcom/netease/mpay/oversea/d6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d6;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->f0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast p2, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 146
    :cond_2
    :try_start_0
    check-cast p2, Lcom/netease/mpay/oversea/d6;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/d6;->c()Lcom/netease/mpay/oversea/j;

    move-result-object p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event:onReceive: toast:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 148
    iget-object p1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/netease/mpay/oversea/v8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/g2;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/g2;->h()V

    const/4 v0, 0x1

    return v0
.end method
