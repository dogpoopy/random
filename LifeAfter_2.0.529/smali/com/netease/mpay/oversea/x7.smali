.class public Lcom/netease/mpay/oversea/x7;
.super Lcom/netease/mpay/oversea/z0;
.source "PassportWebView.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lcom/netease/mpay/oversea/ui/y;

.field protected n:Lcom/netease/mpay/oversea/y5;

.field private o:Lcom/netease/mpay/oversea/g6;

.field protected p:Lcom/netease/mpay/oversea/ui/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/ui/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/x7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    .line 3
    new-instance p1, Lcom/netease/mpay/oversea/ui/y;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/netease/mpay/oversea/ui/y;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/x7;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/x7;->l:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/b1;->a()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    iget-object p3, p0, Lcom/netease/mpay/oversea/x7;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/y;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web:I

    invoke-virtual {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/y;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    new-instance p3, Lcom/netease/mpay/oversea/x7$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/x7$a;-><init>(Lcom/netease/mpay/oversea/x7;)V

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/ui/y;->a(Lcom/netease/mpay/oversea/ui/y$e;)Lcom/netease/mpay/oversea/ui/y;

    .line 92
    iget-object p2, p0, Lcom/netease/mpay/oversea/x7;->m:Lcom/netease/mpay/oversea/ui/y;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/y;->k()V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/e6;)V
    .locals 10

    .line 93
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    .line 94
    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 102
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/y5$b;

    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    iget-object v7, p1, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iget-object v8, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/e6;->k:Z

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/x7;->n:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/e6;->n:I

    .line 106
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/e6;->m:I

    .line 107
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget p1, p1, Lcom/netease/mpay/oversea/e6;->q:I

    .line 109
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 110
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    .line 111
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->f(Lcom/netease/mpay/oversea/g6;)V

    .line 112
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/x7;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    instance-of v1, v0, Lcom/netease/mpay/oversea/v5;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    check-cast v0, Lcom/netease/mpay/oversea/v5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v5;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 12
    :goto_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Event:ApiStateImpl\uff1aonSuccess"

    .line 13
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 17
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    invoke-static {v0, p1, v2, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    new-instance v1, Lcom/netease/mpay/oversea/d6;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/d6;-><init>(Lcom/netease/mpay/oversea/e6;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;)V

    .line 28
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7;->p:Lcom/netease/mpay/oversea/ui/z;

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/x7$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/x7$b;-><init>(Lcom/netease/mpay/oversea/x7;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/z;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)Lcom/netease/mpay/oversea/ui/z;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/x7;->p:Lcom/netease/mpay/oversea/ui/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/netease/mpay/oversea/z0;->e()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->p:Lcom/netease/mpay/oversea/ui/z;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/mpay/oversea/x7;->p:Lcom/netease/mpay/oversea/ui/z;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/x7;->b(Z)V

    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->n:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/x7;->n:Lcom/netease/mpay/oversea/y5;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, v0, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 14
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/s9;->x:Lcom/netease/mpay/oversea/s9;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 15
    iget-object v2, v0, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    .line 16
    iget-object v0, v0, Lcom/netease/mpay/oversea/t8;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_4

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/x7;->n:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_6

    .line 20
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 21
    sget-object v3, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->L:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    .line 27
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v6, v2

    move-object v7, v6

    :goto_3
    move-object v8, v7

    .line 31
    :goto_4
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_7

    .line 33
    iget-object v0, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    move-object v5, v0

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v9, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v10, p0, Lcom/netease/mpay/oversea/x7;->o:Lcom/netease/mpay/oversea/g6;

    .line 34
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/vb$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    return-object v0

    :cond_a
    :goto_6
    return-object v2
.end method
