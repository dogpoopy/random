.class Lcom/netease/mpay/oversea/va$b;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/w2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/va;->a(Lcom/netease/mpay/oversea/wb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w2;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/oversea/va;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/va;Lcom/netease/mpay/oversea/w2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/va$b;->c:Lcom/netease/mpay/oversea/va;

    iput-object p2, p0, Lcom/netease/mpay/oversea/va$b;->a:Lcom/netease/mpay/oversea/w2;

    iput-object p3, p0, Lcom/netease/mpay/oversea/va$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/va$b;->c:Lcom/netease/mpay/oversea/va;

    invoke-static {v0}, Lcom/netease/mpay/oversea/va;->c(Lcom/netease/mpay/oversea/va;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/eb;

    iget-object v2, p0, Lcom/netease/mpay/oversea/va$b;->a:Lcom/netease/mpay/oversea/w2;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/eb;-><init>(Lcom/netease/mpay/oversea/w2;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/va$b;->c:Lcom/netease/mpay/oversea/va;

    invoke-static {v0}, Lcom/netease/mpay/oversea/va;->d(Lcom/netease/mpay/oversea/va;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/va$d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/va$d;->a(Z)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/va$b;->c:Lcom/netease/mpay/oversea/va;

    iget-object v1, p0, Lcom/netease/mpay/oversea/va$b;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/va;->a(Lcom/netease/mpay/oversea/va;Ljava/lang/String;)Ljava/lang/String;

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/va$b;->c:Lcom/netease/mpay/oversea/va;

    invoke-static {v0}, Lcom/netease/mpay/oversea/va;->d(Lcom/netease/mpay/oversea/va;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/va$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/va$d;->a(Z)V

    return-void
.end method
