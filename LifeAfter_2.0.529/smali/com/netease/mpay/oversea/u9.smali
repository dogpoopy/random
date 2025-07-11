.class public Lcom/netease/mpay/oversea/u9;
.super Lcom/netease/mpay/oversea/z0;
.source "SecurityEmailHome.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/y9;

.field private m:Lcom/netease/mpay/oversea/y5;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u9;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->b(Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->e(Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/w2;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    sget-object v4, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 8
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__backup_email_replace_with_passport_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/w2;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->d(Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/w2;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method private d(Lcom/netease/mpay/oversea/w2;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    new-instance v2, Lcom/netease/mpay/oversea/ui/k;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/ui/k;-><init>()V

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v6, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    new-instance v7, Lcom/netease/mpay/oversea/u9$g;

    invoke-direct {v7, p0, p1}, Lcom/netease/mpay/oversea/u9$g;-><init>(Lcom/netease/mpay/oversea/u9;Lcom/netease/mpay/oversea/w2;)V

    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/ui/k;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/k$g;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/w2;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private e(Lcom/netease/mpay/oversea/w2;)V
    .locals 7

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 15
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__backup_email_replace_with_passport_hint:I

    goto :goto_2

    .line 16
    :cond_2
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__backup_email_guide_to_bind_passport_hint:I

    .line 17
    :goto_2
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/u9$f;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/u9$f;-><init>(Lcom/netease/mpay/oversea/u9;Z)V

    invoke-static {v2, v1, p1, v3}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_3

    .line 34
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    new-instance p1, Lcom/netease/mpay/oversea/ui/g;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->C:Lcom/netease/mpay/oversea/s9;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    .line 37
    invoke-virtual {v4, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {v4, v5, v1}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v0, v3, v2, v4}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 38
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_3

    .line 40
    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/w2;)V

    :goto_3
    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/u9;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/u9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__safe_mail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_current:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    iget-object v5, v5, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/u9$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/u9$b;-><init>(Lcom/netease/mpay/oversea/u9;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/v9;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/u9$c;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/u9$c;-><init>(Lcom/netease/mpay/oversea/u9;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/v9;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/u9$d;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/u9$d;-><init>(Lcom/netease/mpay/oversea/u9;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/v9;->e(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/u9$e;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/u9$e;-><init>(Lcom/netease/mpay/oversea/u9;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/v9;->f(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->l:Lcom/netease/mpay/oversea/y9;

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 3
    new-instance p3, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__security_mail_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/u9;->p:Landroid/view/View;

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    new-instance p2, Lcom/netease/mpay/oversea/u9$a;

    invoke-direct {p2, p0, p1}, Lcom/netease/mpay/oversea/u9$a;-><init>(Lcom/netease/mpay/oversea/u9;Landroid/widget/ImageView;)V

    .line 12
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/u9;->p:Landroid/view/View;

    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 21
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail:I

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-direct {p0}, Lcom/netease/mpay/oversea/u9;->h()V

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/u9;->p:Landroid/view/View;

    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__safe_mail_items:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/u9;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__padding_4:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 26
    iget-object p2, p0, Lcom/netease/mpay/oversea/u9;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/netease/mpay/oversea/v3;

    invoke-direct {p3, v1, p1, p1}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 27
    new-instance p1, Lcom/netease/mpay/oversea/y9;

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/u9;->o:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3}, Lcom/netease/mpay/oversea/y9;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/u9;->l:Lcom/netease/mpay/oversea/y9;

    .line 28
    iget-object p2, p0, Lcom/netease/mpay/oversea/u9;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/u9;->p:Landroid/view/View;

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(IILandroid/content/Intent;)V

    const-string p2, "onActivityResult"

    .line 31
    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/16 p2, 0x1b

    if-ne p2, p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_1

    .line 36
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u9;->c(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 37
    :cond_1
    sget-object p1, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p1, p3, :cond_2

    const-string p1, "onActivityResult:Success"

    .line 38
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 40
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    .line 42
    invoke-direct {p0}, Lcom/netease/mpay/oversea/u9;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/u9;->m:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "backup_email_set"

    goto :goto_1

    :cond_1
    const-string v0, "backup_email_unset"

    :goto_1
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->a()V

    const/4 v0, 0x1

    return v0
.end method
