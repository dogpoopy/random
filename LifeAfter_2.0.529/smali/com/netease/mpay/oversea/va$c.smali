.class Lcom/netease/mpay/oversea/va$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/va$d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/va$c;->b:I

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/va$c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/va$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/va$c;->b:I

    return p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/va$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/va$c;->b:I

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/va$c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/va$c;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/va$d;
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    .line 4
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_navigation_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/netease/mpay/oversea/va$d;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/va$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/va$d;I)V
    .locals 6

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/va$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/w2;

    .line 8
    iget-object v2, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_45:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 9
    iget-object v3, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_45:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 10
    iget-object v4, v1, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    iget-object v5, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v3, v2}, Lcom/netease/mpay/oversea/d4;->a(Landroid/view/View;II)V

    .line 11
    iget-object v2, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    new-instance v3, Lcom/netease/mpay/oversea/va$c$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/netease/mpay/oversea/va$c$a;-><init>(Lcom/netease/mpay/oversea/va$c;Lcom/netease/mpay/oversea/w2;ILcom/netease/mpay/oversea/va$d;)V

    .line 39
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    iget-boolean v2, v2, Lcom/netease/mpay/oversea/d4;->c:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    iget-object p1, p1, Lcom/netease/mpay/oversea/va$d;->a:Landroid/widget/TextView;

    iget-boolean v0, v1, Lcom/netease/mpay/oversea/w2;->i:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 71
    iget-boolean p1, v1, Lcom/netease/mpay/oversea/w2;->i:Z

    if-eqz p1, :cond_0

    .line 72
    iput p2, p0, Lcom/netease/mpay/oversea/va$c;->b:I

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/va$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/va$d;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/va$c;->a(Lcom/netease/mpay/oversea/va$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/va$c;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/va$d;

    move-result-object p1

    return-object p1
.end method
