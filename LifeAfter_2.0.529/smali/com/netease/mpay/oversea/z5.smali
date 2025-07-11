.class public Lcom/netease/mpay/oversea/z5;
.super Lcom/netease/mpay/oversea/z0;
.source "LoginMore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/z5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/z5;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->f0()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_more:I

    goto :goto_0

    .line 3
    :cond_0
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_more:I

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z5;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_choose_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 11
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_choose_type:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_restore_account:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/g9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 22
    new-instance v4, Lcom/netease/mpay/oversea/z5$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/z5$a;-><init>(Lcom/netease/mpay/oversea/z5;)V

    .line 29
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v4

    .line 30
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/z0;->a(Landroid/view/ViewGroup;)V

    .line 42
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_more_items:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/i9;->q()Ljava/util/ArrayList;

    move-result-object v5

    .line 45
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/z5;->a(Landroid/content/Context;)Z

    move-result v6

    .line 47
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/i9;->f0()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/mpay/oversea/q3$f;

    .line 50
    iget-object v10, v9, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    invoke-static {v10}, Lcom/netease/mpay/oversea/g6;->a(Lcom/netease/mpay/oversea/g6;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    .line 52
    :cond_6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/mpay/oversea/i9;->l()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/netease/mpay/oversea/q3$f;

    .line 53
    iget-object v12, v9, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v11, v11, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    if-ne v12, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    :cond_9
    if-eqz v11, :cond_a

    goto :goto_2

    .line 57
    :cond_a
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_b
    iget-object v8, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v3, v6}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 62
    :cond_c
    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v3, v6}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4
    if-eqz v1, :cond_10

    if-eqz v5, :cond_10

    .line 65
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    .line 70
    :cond_d
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v6, :cond_e

    const/4 v10, 0x3

    goto :goto_5

    :cond_e
    const/4 v10, 0x2

    :goto_5
    invoke-direct {v5, v7, v10}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_10:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 72
    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_5:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 73
    new-instance v10, Lcom/netease/mpay/oversea/v3;

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    const/4 v8, 0x2

    :goto_6
    invoke-direct {v10, v8, v5, v7}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 74
    new-instance v5, Lcom/netease/mpay/oversea/ra;

    sget v6, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_item:I

    new-instance v7, Lcom/netease/mpay/oversea/z5$b;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/z5$b;-><init>(Lcom/netease/mpay/oversea/z5;)V

    invoke-direct {v5, v0, v6, v4, v7}, Lcom/netease/mpay/oversea/ra;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/ra$a;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_8

    .line 75
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_11

    .line 76
    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v4}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    .line 95
    :cond_11
    :goto_8
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/z5$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/z5$c;-><init>(Lcom/netease/mpay/oversea/z5;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->f0()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 109
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 111
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Lcom/netease/mpay/oversea/z5$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/z5$d;-><init>(Lcom/netease/mpay/oversea/z5;)V

    .line 120
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 123
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "channel_login"

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
