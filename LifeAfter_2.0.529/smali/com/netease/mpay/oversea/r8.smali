.class public Lcom/netease/mpay/oversea/r8;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuickLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/r8$a;,
        Lcom/netease/mpay/oversea/r8$b;,
        Lcom/netease/mpay/oversea/r8$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/u8;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/r8$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netease/mpay/oversea/r8$b;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLjava/util/ArrayList;Lcom/netease/mpay/oversea/r8$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/r8$a;",
            ">;",
            "Lcom/netease/mpay/oversea/r8$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/r8;->a:Landroid/content/Context;

    .line 3
    iput-object p5, p0, Lcom/netease/mpay/oversea/r8;->b:Ljava/util/ArrayList;

    .line 4
    iput-object p6, p0, Lcom/netease/mpay/oversea/r8;->c:Lcom/netease/mpay/oversea/r8$b;

    .line 5
    iput p2, p0, Lcom/netease/mpay/oversea/r8;->d:I

    .line 6
    iput p3, p0, Lcom/netease/mpay/oversea/r8;->e:I

    .line 7
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/r8;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/u8;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/r8;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/netease/mpay/oversea/r8;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/u8;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r8;->f:Z

    iget-object v1, p0, Lcom/netease/mpay/oversea/r8;->c:Lcom/netease/mpay/oversea/r8$b;

    invoke-direct {p2, p1, v0, v1}, Lcom/netease/mpay/oversea/u8;-><init>(Landroid/view/View;ZLcom/netease/mpay/oversea/r8$b;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/u8;I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/r8;->a:Landroid/content/Context;

    iget v1, p0, Lcom/netease/mpay/oversea/r8;->e:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/r8;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/r8$a;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/netease/mpay/oversea/u8;->a(Landroid/content/Context;IILcom/netease/mpay/oversea/r8$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r8;->b:Ljava/util/ArrayList;

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
    check-cast p1, Lcom/netease/mpay/oversea/u8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/r8;->a(Lcom/netease/mpay/oversea/u8;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/r8;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/u8;

    move-result-object p1

    return-object p1
.end method
