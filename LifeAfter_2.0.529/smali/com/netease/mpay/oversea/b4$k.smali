.class Lcom/netease/mpay/oversea/b4$k;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/b4$l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/w2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$k;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/b4$k;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/b4$l;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/b4$k;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__user_center_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/b4$l;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/b4$l;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/b4$l;I)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$k;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/b4$l;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/w2;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/b4$l;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/b4$k;->a(Lcom/netease/mpay/oversea/b4$l;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/b4$k;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/b4$l;

    move-result-object p1

    return-object p1
.end method
