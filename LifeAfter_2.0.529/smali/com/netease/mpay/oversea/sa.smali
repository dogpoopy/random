.class public Lcom/netease/mpay/oversea/sa;
.super Lcom/netease/mpay/oversea/z0;
.source "SwitchView.java"


# static fields
.field private static final K:Lcom/netease/mpay/oversea/s9;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/netease/mpay/oversea/y5;

.field private E:Z

.field private F:Landroidx/recyclerview/widget/RecyclerView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroidx/recyclerview/widget/RecyclerView;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:Lcom/netease/mpay/oversea/r8;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/r8$a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/r8$a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/netease/mpay/oversea/q8;

.field private y:Z

.field private z:Lcom/netease/mpay/oversea/r8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    sput-object v0, Lcom/netease/mpay/oversea/sa;->K:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->r:Ljava/lang/String;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/netease/mpay/oversea/sa;->s:I

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/sa;->t:I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    .line 18
    sget-object v0, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/sa;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/sa;->s:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/sa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 10

    .line 36
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3$h;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    .line 37
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    .line 38
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__switch_quick_login_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->m:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->n:Landroid/view/View;

    .line 40
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__switch_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    .line 41
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__switch_more_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->p:Landroid/view/View;

    .line 42
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->I:Landroid/widget/TextView;

    .line 44
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->J:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_editor:I

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->o()V

    .line 47
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa;->n:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/netease/mpay/oversea/sa;->E:Z

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 49
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/r8;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    if-eqz v0, :cond_2

    .line 50
    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__switch_quick_login_item_simple:I

    goto :goto_1

    .line 51
    :cond_2
    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__switch_quick_login_item:I

    :goto_1
    move v5, v0

    iget-object v8, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    new-instance v9, Lcom/netease/mpay/oversea/sa$e;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/sa$e;-><init>(Lcom/netease/mpay/oversea/sa;)V

    const/4 v7, 0x0

    move-object v3, p1

    move v6, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/r8;-><init>(Landroid/content/Context;IIZLjava/util/ArrayList;Lcom/netease/mpay/oversea/r8$b;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->u:Lcom/netease/mpay/oversea/r8;

    .line 79
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 81
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/a2;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_switch_line:I

    invoke-direct {v0, v3, v4}, Lcom/netease/mpay/oversea/a2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 83
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/sa;->E:Z

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__margin_75:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/netease/mpay/oversea/v3;

    invoke-direct {v3, v1, p1, v2}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->r()V

    .line 88
    iget-object p1, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    new-instance v0, Lcom/netease/mpay/oversea/sa$f;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/sa$f;-><init>(Lcom/netease/mpay/oversea/sa;)V

    .line 103
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/t8;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/t8;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->b(Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t8;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 170
    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/sa;->y:Z

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

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t8;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    .line 177
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget p1, p1, Lcom/netease/mpay/oversea/t8;->b:I

    .line 178
    invoke-static {p1}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_delete_warning:I

    .line 179
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 180
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/oversea/sa$i;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/sa$i;-><init>(Lcom/netease/mpay/oversea/sa;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 186
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netease/mpay/oversea/sa$j;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/sa$j;-><init>(Lcom/netease/mpay/oversea/sa;)V

    .line 187
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/fc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/ui/i$k;)V
    .locals 3

    .line 160
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    new-instance v2, Lcom/netease/mpay/oversea/sa$h;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/sa$h;-><init>(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/j;)V

    invoke-static {v1, p1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/sa;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/sa;->t:I

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method private b(Lcom/netease/mpay/oversea/w2;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4
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

    iget-object v6, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    new-instance v7, Lcom/netease/mpay/oversea/sa$c;

    invoke-direct {v7, p0, p1}, Lcom/netease/mpay/oversea/sa$c;-><init>(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/w2;)V

    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/ui/k;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/k$g;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    new-instance v1, Lcom/netease/mpay/oversea/eb;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/eb;-><init>(Lcom/netease/mpay/oversea/w2;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 5

    .line 34
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__select_login_channels_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__select_login_channels_tips_01:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->H:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__login_channel_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 39
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 40
    invoke-virtual {p1, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return v0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->n()Ljava/util/ArrayList;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/sa;->E:Z

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 50
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_1

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->E:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 58
    iget-object v3, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/netease/mpay/oversea/v3;

    invoke-direct {v4, v0, v1, v2}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/netease/mpay/oversea/ra;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__login_channel_item:I

    new-instance v4, Lcom/netease/mpay/oversea/sa$d;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/sa$d;-><init>(Lcom/netease/mpay/oversea/sa;)V

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/netease/mpay/oversea/ra;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/ra$a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/r8$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->k()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->j()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h()Lcom/netease/mpay/oversea/s9;
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/sa;->K:Lcom/netease/mpay/oversea/s9;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteQuickLoginInfo, key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/q8;->a(Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/netease/mpay/oversea/r8$a;

    .line 8
    iget-object v1, v1, Lcom/netease/mpay/oversea/r8$a;->b:Lcom/netease/mpay/oversea/t8;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/r8$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->s()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->l()V

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v1, Lcom/netease/mpay/oversea/r8$c;->c:Lcom/netease/mpay/oversea/r8$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/r8$a;

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    iput-object v2, v1, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->p()V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->u:Lcom/netease/mpay/oversea/r8;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v1, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/r8$a;

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    iput-object v2, v1, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8
    iget v1, p0, Lcom/netease/mpay/oversea/sa;->A:I

    if-le v0, v1, :cond_2

    .line 9
    iput v1, p0, Lcom/netease/mpay/oversea/sa;->B:I

    .line 10
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    iget v3, p0, Lcom/netease/mpay/oversea/sa;->A:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_2
    iput v0, p0, Lcom/netease/mpay/oversea/sa;->B:I

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->r()V

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->u:Lcom/netease/mpay/oversea/r8;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/sa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->i()V

    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v1, Lcom/netease/mpay/oversea/r8$c;->b:Lcom/netease/mpay/oversea/r8$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->q()V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->u:Lcom/netease/mpay/oversea/r8;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/sa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->q()Ljava/util/ArrayList;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/q3$f;

    .line 6
    iget-object v3, v2, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    .line 7
    iget-boolean v2, v2, Lcom/netease/mpay/oversea/q3$f;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->l:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->F:Lcom/netease/mpay/oversea/g6;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->m:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/h6;->n(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    sget-object v2, Lcom/netease/mpay/oversea/g6;->B:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/h6;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v3, :cond_3

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object v2, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    const/4 v4, 0x0

    if-ne v3, v2, :cond_5

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/i9;->G()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    new-instance v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v7, v2, v4}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 21
    :cond_5
    sget-object v2, Lcom/netease/mpay/oversea/g6;->p:Lcom/netease/mpay/oversea/g6;

    if-ne v3, v2, :cond_7

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/i9;->y()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    .line 24
    :cond_6
    new-instance v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v7, v2, v4}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 26
    :cond_7
    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    if-ne v3, v2, :cond_a

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/i9;->u()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 30
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_0

    .line 32
    :cond_9
    :goto_1
    new-instance v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v7, v2, v4}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_a
    sget-object v2, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-ne v3, v2, :cond_d

    .line 35
    new-instance v5, Lcom/netease/mpay/oversea/pa;

    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v5

    .line 36
    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_b

    .line 37
    iget-object v5, v5, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v5, ""

    .line 38
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/mpay/oversea/i9;->m()Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-static {v6, v7, v5, v8}, Lcom/netease/mpay/oversea/m4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_0

    .line 43
    :cond_c
    new-instance v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v7, v2, v4}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto :goto_3

    .line 46
    :cond_d
    new-instance v6, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;)V

    .line 48
    :goto_3
    new-instance v2, Lcom/netease/mpay/oversea/ui/b;

    invoke-direct {v2, v3, v6}, Lcom/netease/mpay/oversea/ui/b;-><init>(Lcom/netease/mpay/oversea/g6;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method private declared-synchronized o()V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/netease/mpay/oversea/sa;->B:I

    .line 13
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/sa;->E:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :goto_2
    iput v1, p0, Lcom/netease/mpay/oversea/sa;->A:I

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/q8;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v4, v2}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t8;->b()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, v2, Lcom/netease/mpay/oversea/t8;->k:Z

    if-nez v4, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    iget-object v4, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    iget-object v5, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    new-instance v4, Lcom/netease/mpay/oversea/r8$a;

    invoke-direct {v4}, Lcom/netease/mpay/oversea/r8$a;-><init>()V

    .line 20
    iget-object v5, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    iget-object v5, v5, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v4, Lcom/netease/mpay/oversea/r8$a;->d:Z

    .line 21
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/sa;->y:Z

    iput-boolean v3, v4, Lcom/netease/mpay/oversea/r8$a;->a:Z

    .line 22
    iget v3, v2, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    iput-object v3, v4, Lcom/netease/mpay/oversea/r8$a;->e:Lcom/netease/mpay/oversea/g6;

    .line 23
    iput-object v2, v4, Lcom/netease/mpay/oversea/r8$a;->b:Lcom/netease/mpay/oversea/t8;

    .line 24
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    iput-object v2, v4, Lcom/netease/mpay/oversea/r8$a;->c:Lcom/netease/mpay/oversea/r8$c;

    .line 25
    iget v3, p0, Lcom/netease/mpay/oversea/sa;->B:I

    iget v5, p0, Lcom/netease/mpay/oversea/sa;->A:I

    if-lt v3, v5, :cond_8

    sget-object v3, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    if-ne v2, v3, :cond_8

    .line 26
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_8
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/netease/mpay/oversea/sa;->A:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netease/mpay/oversea/sa;->B:I

    goto/16 :goto_3

    .line 32
    :cond_9
    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/q8;->e()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/q3$h;->a:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/sa;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v2, Lcom/netease/mpay/oversea/r8$c;->c:Lcom/netease/mpay/oversea/r8$c;

    if-eq v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_complete:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/sa;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v1, Lcom/netease/mpay/oversea/r8$c;->b:Lcom/netease/mpay/oversea/r8$c;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/sa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/sa;->t:I

    return p0
.end method

.method private r()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->p:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v2, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    if-eq v0, v2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->c()Lcom/netease/mpay/oversea/q3$e;

    move-result-object v0

    .line 6
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/sa;->C:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->m()V

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, v0, Lcom/netease/mpay/oversea/q3$e;->b:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->H:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 19
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->w:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    new-instance v4, Lcom/netease/mpay/oversea/sa$g;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/sa$g;-><init>(Lcom/netease/mpay/oversea/sa;)V

    .line 28
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 30
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->o:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz v0, :cond_5

    .line 40
    iget-object v2, v0, Lcom/netease/mpay/oversea/q3$e;->d:Ljava/lang/String;

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 42
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/netease/mpay/oversea/q3$e;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->H:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->G:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz v0, :cond_6

    .line 48
    iget-object v2, v0, Lcom/netease/mpay/oversea/q3$e;->e:Ljava/lang/String;

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 50
    iget-object v2, p0, Lcom/netease/mpay/oversea/sa;->m:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$e;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->J:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_editor:I

    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->F:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->o()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q8;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->A()Lcom/netease/mpay/oversea/q3$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3$h;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->v:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/sa;->C:Z

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/r8$c;->a:Lcom/netease/mpay/oversea/r8$c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->z:Lcom/netease/mpay/oversea/r8$c;

    sget-object v1, Lcom/netease/mpay/oversea/r8$c;->b:Lcom/netease/mpay/oversea/r8$c;

    if-ne v0, v1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->q()V

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->r()V

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/sa;->u:Lcom/netease/mpay/oversea/r8;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
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

    iput-object p3, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

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

    iput-object p3, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    .line 9
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__switch:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    const-string p3, "restore_account"

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/b1;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    .line 12
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_restore_account:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/w2;->a(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/netease/mpay/oversea/sa$b;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/oversea/sa$b;-><init>(Lcom/netease/mpay/oversea/sa;Lcom/netease/mpay/oversea/w2;)V

    .line 20
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p2

    .line 21
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 28
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :goto_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__switch_account_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 32
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->b(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/z0;->a(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_1

    .line 110
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance p3, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    invoke-direct {p3, v0, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 112
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 113
    invoke-virtual {p2, p3, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto/16 :goto_0

    .line 116
    :cond_1
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_2

    .line 117
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/ui/i$k;)V

    .line 118
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/sa;->f()V

    goto/16 :goto_0

    .line 119
    :cond_2
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_8

    .line 120
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p3}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p3

    .line 121
    invoke-virtual {p3, p2}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 122
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 123
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1e

    if-ne v0, p1, :cond_8

    .line 126
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/i$g;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 127
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->a:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v1, :cond_4

    .line 128
    instance-of p2, p1, Lcom/netease/mpay/oversea/ui/i$k;

    if-eqz p2, :cond_8

    .line 129
    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/sa;->a(Lcom/netease/mpay/oversea/ui/i$k;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_7

    .line 131
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->c:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v1, :cond_7

    .line 132
    iget p2, p0, Lcom/netease/mpay/oversea/sa;->t:I

    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p2

    .line 133
    sget-object p3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/4 v1, 0x0

    if-eq p2, p3, :cond_5

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->u:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v3, :cond_5

    .line 134
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    iget v3, p0, Lcom/netease/mpay/oversea/sa;->t:I

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    new-instance v2, Lcom/netease/mpay/oversea/b6;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->w:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v3, v4, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {v2, v0, p2, v3}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 137
    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/b6;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/b6;

    move-result-object p1

    .line 138
    invoke-interface {p3, p1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    goto/16 :goto_0

    :cond_5
    if-eq p2, p3, :cond_6

    .line 140
    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->w:Lcom/netease/mpay/oversea/s9;

    if-ne p3, v2, :cond_6

    .line 141
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    move-object v3, p1

    check-cast v3, Lcom/netease/mpay/oversea/ui/i$m;

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/g9;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 142
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    iget v4, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 143
    iget p3, v3, Lcom/netease/mpay/oversea/ui/i$m;->f:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object p3

    .line 144
    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    new-instance v4, Lcom/netease/mpay/oversea/b6;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-direct {v4, v0, p2, v5}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 145
    invoke-virtual {v4, p3}, Lcom/netease/mpay/oversea/b6;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/b6;

    move-result-object p1

    .line 146
    invoke-interface {v3, p1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    goto :goto_0

    .line 150
    :cond_6
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    sget-object p3, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    iput-object p3, p2, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 151
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    check-cast p1, Lcom/netease/mpay/oversea/ui/i$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$k;->d:Lcom/netease/mpay/oversea/j;

    invoke-static {p2, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    .line 155
    sget-object p3, Lcom/netease/mpay/oversea/ui/i$p;->b:Lcom/netease/mpay/oversea/ui/i$p;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/i$g;->a:Lcom/netease/mpay/oversea/ui/i$p;

    if-ne p3, v0, :cond_8

    .line 156
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p3}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object p3

    .line 157
    invoke-virtual {p3, p2}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 158
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 159
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "switch_account"

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->D:Lcom/netease/mpay/oversea/y5;

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/sa;->x:Lcom/netease/mpay/oversea/q8;

    .line 5
    invoke-direct {p0}, Lcom/netease/mpay/oversea/sa;->k()V

    return-void
.end method
