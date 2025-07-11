.class public Lcom/netease/mpay/oversea/r2;
.super Lcom/netease/mpay/oversea/z0;
.source "EmailVerifyCode.java"


# instance fields
.field private l:Landroid/os/CountDownTimer;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/r2;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/r2;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/r2;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/r2;->b(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 123
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 124
    new-instance p3, Lcom/netease/mpay/oversea/t2;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v6, Lcom/netease/mpay/oversea/r2$k;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/r2$k;-><init>(Lcom/netease/mpay/oversea/r2;)V

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/t2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ea;)V

    .line 141
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t2;->k()Lcom/netease/mpay/oversea/t2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 144
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast p3, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/d2;->m()Ljava/lang/String;

    move-result-object p3

    .line 145
    new-instance v6, Lcom/netease/mpay/oversea/t2;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v5, Lcom/netease/mpay/oversea/r2$a;

    invoke-direct {v5, p0, p1, p3}, Lcom/netease/mpay/oversea/r2$a;-><init>(Lcom/netease/mpay/oversea/r2;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/t2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ea;)V

    .line 159
    invoke-virtual {v6, p3}, Lcom/netease/mpay/oversea/t2;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p4}, Lcom/netease/mpay/oversea/r2;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 94
    new-instance p1, Lcom/netease/mpay/oversea/l2;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v6, Lcom/netease/mpay/oversea/r2$i;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/r2$i;-><init>(Lcom/netease/mpay/oversea/r2;)V

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/l2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;ZLcom/netease/mpay/oversea/ea;)V

    .line 106
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/l2;->l()Lcom/netease/mpay/oversea/l2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 109
    new-instance p1, Lcom/netease/mpay/oversea/l2;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v6, Lcom/netease/mpay/oversea/r2$j;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/r2$j;-><init>(Lcom/netease/mpay/oversea/r2;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/l2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;ZLcom/netease/mpay/oversea/ea;)V

    .line 121
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/l2;->k()Lcom/netease/mpay/oversea/l2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private b(ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/r2;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method private h()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r2;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/r2$b;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/r2$b;-><init>(Lcom/netease/mpay/oversea/r2;JJ)V

    .line 20
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/r2;->l:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r2;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/w2;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/r2;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/r2;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/r2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/r2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/r2;->h()V

    return-void
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/r2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/r2;->i()V

    return-void
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/r2;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 4
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    const-string v0, "hydra_email_password_reset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 6
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p3}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v5

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    const-string v0, "hydra_email_register"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 8
    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_verify:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/r2$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/r2$c;-><init>(Lcom/netease/mpay/oversea/r2;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 19
    new-instance v0, Lcom/netease/mpay/oversea/r2$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/r2$d;-><init>(Lcom/netease/mpay/oversea/r2;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_verify_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->k()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    move-object p3, v4

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v4}, Lcom/netease/mpay/oversea/bc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_send_code_tips:I

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p3, v7, v1

    invoke-static {v0, v2, v7}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_popup_text_highlight:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :try_start_0
    new-array v7, v3, [I

    aput v2, v7, v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p3, v2, v1

    .line 39
    invoke-static {v0, v7, v2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 42
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_1
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/EditText;

    .line 46
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 49
    new-instance p3, Lcom/netease/mpay/oversea/r2$e;

    invoke-direct {p3, p0, v3}, Lcom/netease/mpay/oversea/r2$e;-><init>(Lcom/netease/mpay/oversea/r2;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p3, 0x8

    .line 55
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    new-instance p3, Lcom/netease/mpay/oversea/r2$f;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/r2$f;-><init>(Lcom/netease/mpay/oversea/r2;Landroid/widget/ImageView;)V

    invoke-virtual {v3, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__code_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/r2;->m:Landroid/widget/TextView;

    .line 77
    new-instance p3, Lcom/netease/mpay/oversea/r2$g;

    invoke-direct {p3, p0, v6, v4}, Lcom/netease/mpay/oversea/r2$g;-><init>(Lcom/netease/mpay/oversea/r2;ZLjava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/netease/mpay/oversea/r2;->h()V

    .line 84
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 86
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_bind:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    .line 88
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__verify_email:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :cond_2
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_login:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2
    new-instance p3, Lcom/netease/mpay/oversea/r2$h;

    move-object v1, p3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/r2$h;-><init>(Lcom/netease/mpay/oversea/r2;Landroid/widget/EditText;Ljava/lang/String;ZZ)V

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
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->a()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/p;->onCancel()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
