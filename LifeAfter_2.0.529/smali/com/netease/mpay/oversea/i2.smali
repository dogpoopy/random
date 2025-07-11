.class public Lcom/netease/mpay/oversea/i2;
.super Lcom/netease/mpay/oversea/z0;
.source "EmailResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/i2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/i2;->h()V

    return-void
.end method

.method private h()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/i2;->i()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/d2;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    .line 5
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/d2;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_hydra_email_login_result:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__tips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    sget-object p3, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v0, :cond_0

    iget-boolean p3, v0, Lcom/netease/mpay/oversea/s9;->d:Z

    if-nez p3, :cond_0

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_email_upgrade_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_0
    sget-object p3, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v0, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v0, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v0, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v0, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 15
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 16
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_reset_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_1
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 23
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p3}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 24
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_3
    new-instance p3, Lcom/netease/mpay/oversea/i2$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/i2$a;-><init>(Lcom/netease/mpay/oversea/i2;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
