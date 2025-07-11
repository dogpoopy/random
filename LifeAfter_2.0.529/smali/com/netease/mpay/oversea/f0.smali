.class public Lcom/netease/mpay/oversea/f0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/f0$a;,
        Lcom/netease/mpay/oversea/f0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/f0$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$b;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/netease/mpay/oversea/f0$b;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/f0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$b;",
            ">;>;",
            "Lcom/netease/mpay/oversea/f0$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/f0;->c:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/netease/mpay/oversea/f0;->d:I

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/f0;->a:Ljava/util/ArrayList;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/f0;->b:Lcom/netease/mpay/oversea/f0$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/f0$a;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/f0;->c:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/netease/mpay/oversea/f0;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/f0$a;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/f0$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/f0$a;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/f0;->b:Lcom/netease/mpay/oversea/f0$b;

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/f0$a;->a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/f0$b;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/f0$a;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/f0;->a(Lcom/netease/mpay/oversea/f0$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/f0;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/f0$a;

    move-result-object p1

    return-object p1
.end method
