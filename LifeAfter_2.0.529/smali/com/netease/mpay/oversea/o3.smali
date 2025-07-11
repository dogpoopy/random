.class public Lcom/netease/mpay/oversea/o3;
.super Ljava/lang/Object;
.source "FragmentMemento.java"


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/netease/mpay/oversea/m7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/m7;)Lcom/netease/mpay/oversea/m7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p2

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;->push(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/o3;->b:Lcom/netease/mpay/oversea/m7;

    return-object p2
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/netease/mpay/oversea/m7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o3;->b:Lcom/netease/mpay/oversea/m7;

    return-object v0
.end method

.method public c()Lcom/netease/mpay/oversea/m7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/m7<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/m7;

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iput-object v1, p0, Lcom/netease/mpay/oversea/o3;->b:Lcom/netease/mpay/oversea/m7;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/o3;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/m7;

    iput-object v1, p0, Lcom/netease/mpay/oversea/o3;->b:Lcom/netease/mpay/oversea/m7;

    :goto_0
    return-object v0
.end method
