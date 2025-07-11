.class public Lcom/netease/mpay/oversea/va;
.super Lcom/netease/mpay/oversea/z0;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/va$d;,
        Lcom/netease/mpay/oversea/va$c;
    }
.end annotation


# instance fields
.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Lcom/netease/mpay/oversea/va$c;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/va;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/va;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/va;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/oversea/wb;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netease/mpay/oversea/va;->p:Landroid/view/View;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_navigation_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 41
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->h()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/va;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/va;->m:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->f()Lcom/netease/mpay/oversea/yb;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/yb;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "loading"

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/wb;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/w2;

    if-nez v2, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    new-instance v3, Lcom/netease/mpay/oversea/va$b;

    invoke-direct {v3, p0, v2, v1}, Lcom/netease/mpay/oversea/va$b;-><init>(Lcom/netease/mpay/oversea/va;Lcom/netease/mpay/oversea/w2;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/netease/mpay/oversea/w2;->j:Lcom/netease/mpay/oversea/w2$c;

    .line 66
    iget-object v1, p0, Lcom/netease/mpay/oversea/va;->m:Ljava/lang/String;

    iget-object v3, v2, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v2, Lcom/netease/mpay/oversea/w2;->i:Z

    .line 69
    :cond_6
    iget-boolean v1, v2, Lcom/netease/mpay/oversea/w2;->e:Z

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/netease/mpay/oversea/va;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_7
    iget-object p1, p0, Lcom/netease/mpay/oversea/va;->o:Lcom/netease/mpay/oversea/va$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/va;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/va;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/va;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_navigation_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/va;->p:Landroid/view/View;

    .line 6
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    new-instance p2, Lcom/netease/mpay/oversea/va$a;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/va$a;-><init>(Lcom/netease/mpay/oversea/va;)V

    .line 14
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/va;->p:Landroid/view/View;

    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_navigation_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 25
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 27
    iget-object p2, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/va;->l:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Lcom/netease/mpay/oversea/va$c;

    iget-object p2, p0, Lcom/netease/mpay/oversea/va;->l:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lcom/netease/mpay/oversea/va$c;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/va;->o:Lcom/netease/mpay/oversea/va$c;

    .line 30
    iget-object p2, p0, Lcom/netease/mpay/oversea/va;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    iget-object p1, p0, Lcom/netease/mpay/oversea/va;->p:Landroid/view/View;

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z
    .locals 1

    .line 32
    instance-of v0, p2, Lcom/netease/mpay/oversea/wb;

    if-eqz v0, :cond_0

    .line 33
    check-cast p2, Lcom/netease/mpay/oversea/wb;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/va;->a(Lcom/netease/mpay/oversea/wb;)V

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/netease/mpay/oversea/v8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/va;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
