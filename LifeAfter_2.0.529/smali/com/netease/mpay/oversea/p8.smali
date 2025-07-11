.class public Lcom/netease/mpay/oversea/p8;
.super Lcom/netease/mpay/oversea/z0;
.source "QuickLogin.java"


# static fields
.field private static final t:Lcom/netease/mpay/oversea/s9;


# instance fields
.field l:Lcom/netease/mpay/oversea/r8;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/r8$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/netease/mpay/oversea/y5;

.field private o:Lcom/netease/mpay/oversea/q8;

.field private p:Z

.field private q:Lcom/netease/mpay/oversea/r8$c;

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->t:Lcom/netease/mpay/oversea/s9;

    sput-object v0, Lcom/netease/mpay/oversea/p8;->t:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    .line 9
    sget-object v0, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/p8;->q:Lcom/netease/mpay/oversea/r8$c;

    .line 10
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/p8;->r:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/netease/mpay/oversea/p8;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p8;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/p8;->r:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/r8$c;)Lcom/netease/mpay/oversea/r8$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/p8;->q:Lcom/netease/mpay/oversea/r8$c;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/p8;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/t8;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/p8;->a(Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/p8;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/p8;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t8;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " ("

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget v1, p1, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_delete_warning:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 194
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/netease/mpay/oversea/p8$f;

    invoke-direct {v7, p0, p1}, Lcom/netease/mpay/oversea/p8$f;-><init>(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/t8;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 200
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/p8$g;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/p8$g;-><init>(Lcom/netease/mpay/oversea/p8;)V

    .line 201
    invoke-static/range {v2 .. v9}, Lcom/netease/mpay/oversea/fc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/p8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/p8;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q8;->a(Ljava/lang/String;)Z

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/r8$a;

    .line 10
    iget-object v1, v1, Lcom/netease/mpay/oversea/r8$a;->b:Lcom/netease/mpay/oversea/t8;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8;->l:Lcom/netease/mpay/oversea/r8;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    invoke-direct {p0}, Lcom/netease/mpay/oversea/p8;->h()V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/p8;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p8;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/p8;)Lcom/netease/mpay/oversea/r8$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/p8;->q:Lcom/netease/mpay/oversea/r8$c;

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

.method static synthetic i(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/p8;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/p8;->n:Lcom/netease/mpay/oversea/y5;

    .line 8
    new-instance p3, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/p8;->o:Lcom/netease/mpay/oversea/q8;

    .line 9
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_quick_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/p8;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(IILandroid/content/Intent;)V

    const-string p2, "Login Failed:"

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_0

    .line 111
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/i$k;

    if-eqz p3, :cond_a

    .line 112
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    new-instance v0, Lcom/netease/mpay/oversea/p8$d;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/p8$d;-><init>(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/j;)V

    invoke-static {p2, p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_a

    .line 123
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_a

    .line 125
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ne v0, p1, :cond_a

    .line 128
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_2

    .line 130
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/i$k;

    if-eqz p3, :cond_a

    .line 131
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mpay/oversea/p8$e;

    invoke-direct {p3, p0, p1}, Lcom/netease/mpay/oversea/p8$e;-><init>(Lcom/netease/mpay/oversea/p8;Lcom/netease/mpay/oversea/j;)V

    invoke-static {p2, p1, p3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_9

    .line 142
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_9

    .line 143
    iget p2, p0, Lcom/netease/mpay/oversea/p8;->r:I

    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 144
    sget-object p3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p2, p3, :cond_5

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->t:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    iget v3, p0, Lcom/netease/mpay/oversea/p8;->r:I

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 147
    new-instance p3, Lcom/netease/mpay/oversea/ui/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 149
    invoke-virtual {v4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v2, v3, p1, p2}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 150
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_0

    .line 151
    :cond_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 152
    new-instance p3, Lcom/netease/mpay/oversea/ui/p;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 154
    invoke-virtual {v4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v2, v3, p1, p2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 155
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto/16 :goto_0

    .line 157
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

    .line 159
    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v2, :cond_8

    .line 160
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    move-object v3, p1

    check-cast v3, Lcom/netease/mpay/oversea/ui/i$m;

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 161
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 162
    iget p3, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p3

    .line 163
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 164
    new-instance p2, Lcom/netease/mpay/oversea/ui/g;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 166
    invoke-virtual {v5, p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p3, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p3, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, v3, v4, p1, p3}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 167
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 169
    new-instance p3, Lcom/netease/mpay/oversea/ui/p;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 171
    invoke-virtual {v5, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v3, v4, p1, p2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 172
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_0

    .line 174
    :cond_7
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget p3, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {p2, p3, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 179
    :cond_8
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    sget-object p3, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    iput-object p3, p2, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 180
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

    .line 184
    sget-object p2, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p2, p3, :cond_a

    .line 185
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

.method public a(Landroid/view/View;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/q3$h;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    .line 15
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_list:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_region:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/p8;->a(Landroid/content/Context;)Z

    move-result v0

    .line 19
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/p8$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/p8$a;-><init>(Lcom/netease/mpay/oversea/p8;)V

    .line 25
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    .line 33
    iget-object v3, p0, Lcom/netease/mpay/oversea/p8;->o:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/q8;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34
    iget-object v6, p0, Lcom/netease/mpay/oversea/p8;->o:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v6, v4}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 35
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t8;->b()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v4, Lcom/netease/mpay/oversea/t8;->k:Z

    if-nez v6, :cond_4

    goto :goto_1

    .line 36
    :cond_4
    iget-object v6, p0, Lcom/netease/mpay/oversea/p8;->n:Lcom/netease/mpay/oversea/y5;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/p8;->n:Lcom/netease/mpay/oversea/y5;

    iget-object v7, v7, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 38
    :cond_5
    new-instance v6, Lcom/netease/mpay/oversea/r8$a;

    invoke-direct {v6}, Lcom/netease/mpay/oversea/r8$a;-><init>()V

    .line 39
    iget-object v7, p0, Lcom/netease/mpay/oversea/p8;->n:Lcom/netease/mpay/oversea/y5;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/netease/mpay/oversea/p8;->n:Lcom/netease/mpay/oversea/y5;

    iget-object v7, v7, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v6, Lcom/netease/mpay/oversea/r8$a;->d:Z

    .line 40
    iget-boolean v7, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    iput-boolean v7, v6, Lcom/netease/mpay/oversea/r8$a;->a:Z

    .line 41
    iget v7, v4, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v7}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v7

    iput-object v7, v6, Lcom/netease/mpay/oversea/r8$a;->e:Lcom/netease/mpay/oversea/g6;

    .line 42
    iput-object v4, v6, Lcom/netease/mpay/oversea/r8$a;->b:Lcom/netease/mpay/oversea/t8;

    .line 43
    iget-object v4, p0, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_7
    new-instance v3, Lcom/netease/mpay/oversea/a2;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_popup_line:I

    invoke-direct {v3, v4, v6}, Lcom/netease/mpay/oversea/a2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 47
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    :cond_8
    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__padding_70:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    new-instance v3, Lcom/netease/mpay/oversea/v3;

    invoke-direct {v3, v2, v0, v5}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 52
    :cond_9
    new-instance v0, Lcom/netease/mpay/oversea/r8;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/netease/mpay/oversea/p8;->p:Z

    if-eqz v3, :cond_a

    .line 53
    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_quick_login_item_simple:I

    goto :goto_3

    .line 54
    :cond_a
    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_quick_login_item:I

    :goto_3
    move v8, v3

    iget-object v11, p0, Lcom/netease/mpay/oversea/p8;->m:Ljava/util/ArrayList;

    new-instance v12, Lcom/netease/mpay/oversea/p8$b;

    invoke-direct {v12, p0}, Lcom/netease/mpay/oversea/p8$b;-><init>(Lcom/netease/mpay/oversea/p8;)V

    const/4 v10, 0x1

    move-object v6, v0

    move v9, v2

    invoke-direct/range {v6 .. v12}, Lcom/netease/mpay/oversea/r8;-><init>(Landroid/content/Context;IIZLjava/util/ArrayList;Lcom/netease/mpay/oversea/r8$b;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/p8;->l:Lcom/netease/mpay/oversea/r8;

    .line 73
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {v0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/netease/mpay/oversea/p8$c;

    invoke-direct {v2, p0, v0, v1}, Lcom/netease/mpay/oversea/p8$c;-><init>(Lcom/netease/mpay/oversea/p8;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 105
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 187
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

    const-string v0, "quick_login_list"

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
