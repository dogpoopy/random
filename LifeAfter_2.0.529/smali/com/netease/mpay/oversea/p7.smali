.class public Lcom/netease/mpay/oversea/p7;
.super Lcom/netease/mpay/oversea/z0;
.source "PassportLoginHistory.java"


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private l:Lcom/netease/mpay/oversea/ui/i$g;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroidx/recyclerview/widget/RecyclerView;

.field private r:Landroid/view/View;

.field s:Lcom/netease/mpay/oversea/n7;

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n7$a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/netease/mpay/oversea/y5;

.field private v:Lcom/netease/mpay/oversea/t8;

.field private w:Lcom/netease/mpay/oversea/q8;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    .line 17
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/p7;->x:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/p7;->z:Z

    .line 178
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/p7;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p7;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/p7;->x:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/t8;)Lcom/netease/mpay/oversea/t8;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p7;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/p7;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/oversea/t8;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/p7;->z:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " ("

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const-string v3, "remember_account_list_confirm"

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget v1, p1, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_delete_warning:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 19
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/p7$h;

    invoke-direct {v9, p0, p1}, Lcom/netease/mpay/oversea/p7$h;-><init>(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/t8;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 26
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/netease/mpay/oversea/p7$i;

    invoke-direct {v11, p0}, Lcom/netease/mpay/oversea/p7$i;-><init>(Lcom/netease/mpay/oversea/p7;)V

    .line 27
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/fc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/ui/i$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 7

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/g9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v3, Lcom/netease/mpay/oversea/p7$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/p7$b;-><init>(Lcom/netease/mpay/oversea/p7;)V

    .line 14
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_1
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v3, v3, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :goto_1
    new-instance v1, Lcom/netease/mpay/oversea/p7$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/p7$c;-><init>(Lcom/netease/mpay/oversea/p7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    sget v1, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_longeplay:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    sget v1, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_envoy:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->w:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q8;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    iget-object v4, p0, Lcom/netease/mpay/oversea/p7;->w:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v4, v1}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t8;->b()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/netease/mpay/oversea/t8;->k:Z

    if-nez v4, :cond_6

    goto :goto_3

    .line 48
    :cond_6
    new-instance v4, Lcom/netease/mpay/oversea/n7$a;

    invoke-direct {v4}, Lcom/netease/mpay/oversea/n7$a;-><init>()V

    .line 49
    iget-object v5, p0, Lcom/netease/mpay/oversea/p7;->u:Lcom/netease/mpay/oversea/y5;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v4, Lcom/netease/mpay/oversea/n7$a;->d:Z

    if-eqz v3, :cond_8

    .line 51
    iput-object v1, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    .line 53
    :cond_8
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/p7;->z:Z

    iput-boolean v3, v4, Lcom/netease/mpay/oversea/n7$a;->a:Z

    .line 54
    iget v3, v1, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    iput-object v3, v4, Lcom/netease/mpay/oversea/n7$a;->e:Lcom/netease/mpay/oversea/g6;

    .line 55
    iput-object v1, v4, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    .line 56
    iget-object v1, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    if-nez v0, :cond_a

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/n7$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    .line 62
    :cond_a
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->n:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__server:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->o:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__role:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->p:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay__login_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->m:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__more:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/p7$d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/p7$d;-><init>(Lcom/netease/mpay/oversea/p7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/p7;->b(Lcom/netease/mpay/oversea/t8;)V

    .line 76
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/p7;->r:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/netease/mpay/oversea/p7$e;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/p7$e;-><init>(Lcom/netease/mpay/oversea/p7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 88
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 89
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_longe_btn:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 90
    :cond_b
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_envoy_btn:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 93
    :cond_c
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_passport_btn:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :goto_5
    new-instance v0, Lcom/netease/mpay/oversea/p7$f;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/p7$f;-><init>(Lcom/netease/mpay/oversea/p7;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance p1, Lcom/netease/mpay/oversea/n7;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    new-instance v4, Lcom/netease/mpay/oversea/p7$g;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/p7$g;-><init>(Lcom/netease/mpay/oversea/p7;)V

    invoke-direct {p1, v0, v1, v4}, Lcom/netease/mpay/oversea/n7;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/n7$b;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/p7;->s:Lcom/netease/mpay/oversea/n7;

    .line 126
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 127
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p1, v0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 130
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 131
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/a2;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_userlist_line:I

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/a2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/t8;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/p7;->b(Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/p7;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/p7;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/t8;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget v1, p1, Lcom/netease/mpay/oversea/t8;->b:I

    .line 133
    invoke-static {v1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    const/4 v2, 0x1

    .line 134
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/netease/mpay/oversea/p7;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->n:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/p7;->z:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->o:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_server:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_role:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/netease/mpay/oversea/p7;->o:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/t8;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/netease/mpay/oversea/p7;->p:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/t8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/t8;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/p7;->a(Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/p7;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p7;->y:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q8;->a(Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/n7$a;

    .line 8
    iget-object v1, v1, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/n7$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n7$a;->b:Lcom/netease/mpay/oversea/t8;

    iput-object p1, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    goto :goto_1

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->s:Lcom/netease/mpay/oversea/n7;

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iput-object v1, p0, Lcom/netease/mpay/oversea/p7;->v:Lcom/netease/mpay/oversea/t8;

    .line 24
    invoke-direct {p0}, Lcom/netease/mpay/oversea/p7;->h()V

    :cond_5
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/p7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/p7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/p7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/p7;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/p7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 5
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

    iput-object p3, p0, Lcom/netease/mpay/oversea/p7;->u:Lcom/netease/mpay/oversea/y5;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/p7;->w:Lcom/netease/mpay/oversea/q8;

    .line 7
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_history:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object p3, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/p7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object p2

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/q3$h;->b:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/p7;->z:Z

    .line 10
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/p7;->b(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(IILandroid/content/Intent;)V

    const-string p2, "Login Failed:"

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_0

    .line 32
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/i$k;

    if-eqz p3, :cond_a

    .line 33
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    new-instance v0, Lcom/netease/mpay/oversea/p7$j;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/p7$j;-><init>(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/j;)V

    invoke-static {p2, p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_a

    .line 45
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_a

    .line 46
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ne v0, p1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_2

    .line 51
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/i$k;

    if-eqz p3, :cond_a

    .line 52
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mpay/oversea/p7$a;

    invoke-direct {p3, p0, p1}, Lcom/netease/mpay/oversea/p7$a;-><init>(Lcom/netease/mpay/oversea/p7;Lcom/netease/mpay/oversea/j;)V

    invoke-static {p2, p1, p3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_9

    .line 64
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_9

    .line 65
    iget p2, p0, Lcom/netease/mpay/oversea/p7;->x:I

    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 66
    sget-object p3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p2, p3, :cond_5

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->t:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    iget v3, p0, Lcom/netease/mpay/oversea/p7;->x:I

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 69
    new-instance p3, Lcom/netease/mpay/oversea/ui/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 71
    invoke-virtual {v4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v2, v3, p1, p2}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 72
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_0

    .line 73
    :cond_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 74
    new-instance p3, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 75
    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 76
    invoke-virtual {v3, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v3, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 77
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {p3, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/m;->l(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto/16 :goto_0

    :cond_5
    if-eq p2, p3, :cond_8

    .line 81
    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v2, :cond_8

    .line 82
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    move-object v3, p1

    check-cast v3, Lcom/netease/mpay/oversea/ui/i$m;

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 83
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 84
    iget p3, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p3

    .line 85
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    new-instance p2, Lcom/netease/mpay/oversea/ui/g;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 88
    invoke-virtual {v5, p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p3, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p3, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, v3, v4, p1, p3}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 89
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 91
    new-instance p3, Lcom/netease/mpay/oversea/ui/p;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 93
    invoke-virtual {v5, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v3, v4, p1, p2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 94
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 96
    :cond_7
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget p3, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p2, p3, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 101
    :cond_8
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    sget-object p3, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    iput-object p3, p2, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 102
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    invoke-static {p2, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    .line 106
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_a

    .line 107
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :catch_0
    :cond_a
    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/netease/mpay/oversea/p7;->A:F

    sub-float/2addr v0, v2

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/netease/mpay/oversea/p7;->B:F

    sub-float/2addr p1, v2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v2, v0

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 161
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/p7;->C:Z

    goto :goto_0

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/p7;->C:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/p7;->r:Landroid/view/View;

    .line 169
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 170
    iget-object p1, p0, Lcom/netease/mpay/oversea/p7;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/p7;->A:F

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/p7;->B:F

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/p7;->C:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "remember_account"

    return-object v0
.end method
