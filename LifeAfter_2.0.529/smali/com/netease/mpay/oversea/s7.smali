.class public Lcom/netease/mpay/oversea/s7;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PassportMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/s7$b;,
        Lcom/netease/mpay/oversea/s7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/s7$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/netease/mpay/oversea/s7$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/s7$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;",
            "Lcom/netease/mpay/oversea/s7$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_item:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_item_small:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/netease/mpay/oversea/s7;->a:[I

    .line 12
    iput-object p1, p0, Lcom/netease/mpay/oversea/s7;->b:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/netease/mpay/oversea/s7;->c:Ljava/util/ArrayList;

    .line 14
    iput-object p3, p0, Lcom/netease/mpay/oversea/s7;->d:Lcom/netease/mpay/oversea/s7$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/s7$b;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/s7;->b:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/s7$b;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/s7$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/s7$b;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s7;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/s7;->d:Lcom/netease/mpay/oversea/s7$a;

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/s7$b;->a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/s7$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s7;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s7$b;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/s7;->a(Lcom/netease/mpay/oversea/s7$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/s7;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/s7$b;

    move-result-object p1

    return-object p1
.end method
