.class public Lcom/netease/mpay/oversea/aa;
.super Lcom/netease/mpay/oversea/z0;
.source "SecuritySetPassword.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/aa;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/aa;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/aa;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/aa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "email"

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "password"

    move-object/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :try_start_0
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, v0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, v0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 11
    new-instance v15, Lcom/netease/mpay/oversea/f6;

    iget-object v10, v0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v11, v0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    sget-object v7, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v12

    new-instance v14, Lcom/netease/mpay/oversea/aa$h;

    invoke-direct {v14, v0}, Lcom/netease/mpay/oversea/aa$h;-><init>(Lcom/netease/mpay/oversea/aa;)V

    const/4 v13, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 46
    invoke-virtual {v15}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

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
    new-instance v0, Lcom/netease/mpay/oversea/p2;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/aa;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v7, Lcom/netease/mpay/oversea/aa$g;

    invoke-direct {v7, p0, p1}, Lcom/netease/mpay/oversea/aa$g;-><init>(Lcom/netease/mpay/oversea/aa;Ljava/lang/String;)V

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/p2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ea;)V

    .line 15
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p2;->l()Lcom/netease/mpay/oversea/p2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/aa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/aa;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/aa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/aa;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/aa;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/aa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/aa;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/aa;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/aa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 4
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 6
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ticket"

    .line 7
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/aa;->m:Ljava/lang/String;

    const-string v0, "msg"

    .line 8
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/aa;->n:Ljava/lang/String;

    const-string v0, "email"

    .line 9
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/aa;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_hydra_email_password_new:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 15
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 16
    new-instance p3, Lcom/netease/mpay/oversea/aa$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/aa$a;-><init>(Lcom/netease/mpay/oversea/aa;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/w2;->j()Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 24
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {p3, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 26
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_email_upgrade:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 31
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 33
    new-instance v0, Lcom/netease/mpay/oversea/aa$b;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/aa$b;-><init>(Lcom/netease/mpay/oversea/aa;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v0, Lcom/netease/mpay/oversea/aa$c;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/aa$c;-><init>(Lcom/netease/mpay/oversea/aa;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_second:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 61
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_second_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    new-instance v2, Lcom/netease/mpay/oversea/aa$d;

    invoke-direct {v2, p0, p3}, Lcom/netease/mpay/oversea/aa$d;-><init>(Lcom/netease/mpay/oversea/aa;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    new-instance v1, Lcom/netease/mpay/oversea/aa$e;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/oversea/aa$e;-><init>(Lcom/netease/mpay/oversea/aa;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 91
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__set_password:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v1, Lcom/netease/mpay/oversea/aa$f;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/mpay/oversea/aa$f;-><init>(Lcom/netease/mpay/oversea/aa;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    const-string v1, "security_email"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method
