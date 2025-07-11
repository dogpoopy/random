.class public Lcom/netease/mpay/oversea/n7;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PassportHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/n7$a;,
        Lcom/netease/mpay/oversea/n7$b;,
        Lcom/netease/mpay/oversea/n7$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/n7$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/netease/mpay/oversea/n7$b;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n7$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/n7$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n7$a;",
            ">;",
            "Lcom/netease/mpay/oversea/n7$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n7;->a:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/n7;->b:Lcom/netease/mpay/oversea/n7$b;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/n7;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/n7$c;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/n7;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_quick_login_item:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/n7$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n7;->b:Lcom/netease/mpay/oversea/n7$b;

    invoke-direct {p2, p1, v0}, Lcom/netease/mpay/oversea/n7$c;-><init>(Landroid/view/View;Lcom/netease/mpay/oversea/n7$b;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/n7$c;I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/n7;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n7;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/n7$a;

    invoke-virtual {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/n7$c;->a(Landroid/content/Context;ILcom/netease/mpay/oversea/n7$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n7;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n7$c;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n7;->a(Lcom/netease/mpay/oversea/n7$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n7;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/n7$c;

    move-result-object p1

    return-object p1
.end method
