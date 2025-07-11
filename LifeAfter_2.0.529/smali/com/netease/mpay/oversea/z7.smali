.class public Lcom/netease/mpay/oversea/z7;
.super Lcom/netease/mpay/oversea/z0;
.source "PasswordHome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/z7;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/z7;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/z7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/l2;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v7, Lcom/netease/mpay/oversea/z7$f;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/z7$f;-><init>(Lcom/netease/mpay/oversea/z7;)V

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/l2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;ZLcom/netease/mpay/oversea/ea;)V

    .line 17
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/l2;->l()Lcom/netease/mpay/oversea/l2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/z7;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/z7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/z7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/z7;)Lcom/netease/mpay/oversea/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/z7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_password:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/z7$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/z7$a;-><init>(Lcom/netease/mpay/oversea/z7;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13
    new-instance p3, Lcom/netease/mpay/oversea/z7$b;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/z7$b;-><init>(Lcom/netease/mpay/oversea/z7;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 21
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__flex_region:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/wa;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x2

    .line 25
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    :cond_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string p3, "account"

    .line 28
    invoke-virtual {p0, p3}, Lcom/netease/mpay/oversea/z0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/z7$c;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/z7$c;-><init>(Lcom/netease/mpay/oversea/z7;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/z7$d;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/z7$d;-><init>(Lcom/netease/mpay/oversea/z7;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 60
    new-instance v0, Lcom/netease/mpay/oversea/z7$e;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/z7$e;-><init>(Lcom/netease/mpay/oversea/z7;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->a()V

    const/4 v0, 0x1

    return v0
.end method
