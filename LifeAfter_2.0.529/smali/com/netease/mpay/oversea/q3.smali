.class public Lcom/netease/mpay/oversea/q3;
.super Lcom/netease/mpay/oversea/a9;
.source "GameConfigResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/q3$c;,
        Lcom/netease/mpay/oversea/q3$h;,
        Lcom/netease/mpay/oversea/q3$f;,
        Lcom/netease/mpay/oversea/q3$d;,
        Lcom/netease/mpay/oversea/q3$g;,
        Lcom/netease/mpay/oversea/q3$e;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:I

.field public I:Z

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:I

.field public M:Lcom/netease/mpay/oversea/q3$c;

.field public a:Lcom/netease/mpay/oversea/q3$e;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Lcom/netease/mpay/oversea/q3$h;

.field public j:Lcom/netease/mpay/oversea/k6;

.field public k:Lcom/netease/mpay/oversea/l6;

.field public l:Lcom/netease/mpay/oversea/c2;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/netease/mpay/oversea/g6;",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:I

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->n:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/netease/mpay/oversea/q3;->q:I

    .line 6
    iput v1, p0, Lcom/netease/mpay/oversea/q3;->r:I

    .line 7
    iput v1, p0, Lcom/netease/mpay/oversea/q3;->s:I

    .line 16
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/q3;->B:Z

    .line 17
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->C:Z

    .line 19
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/q3;->D:Z

    .line 21
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->E:Z

    .line 23
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->F:Z

    .line 25
    iput v0, p0, Lcom/netease/mpay/oversea/q3;->H:I

    .line 35
    new-instance v8, Lcom/netease/mpay/oversea/q3$e;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/q3$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/netease/mpay/oversea/q3;->a:Lcom/netease/mpay/oversea/q3$e;

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    .line 37
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->b:Z

    .line 38
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->e:Z

    .line 39
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/q3;->f:Z

    .line 40
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/q3;->c:Z

    .line 41
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->d:Z

    .line 42
    new-instance v2, Lcom/netease/mpay/oversea/c2;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/c2;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/q3;->l:Lcom/netease/mpay/oversea/c2;

    .line 43
    new-instance v2, Lcom/netease/mpay/oversea/q3$c;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/q3$c;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    .line 44
    iput v1, p0, Lcom/netease/mpay/oversea/q3;->s:I

    .line 45
    iput v0, p0, Lcom/netease/mpay/oversea/q3;->h:I

    .line 46
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->g:Z

    .line 47
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q3;->A:Z

    .line 48
    new-instance v2, Lcom/netease/mpay/oversea/k6;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/k6;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/oversea/q3;->j:Lcom/netease/mpay/oversea/k6;

    .line 49
    new-instance v2, Lcom/netease/mpay/oversea/l6;

    invoke-direct {v2, v0, v1}, Lcom/netease/mpay/oversea/l6;-><init>(II)V

    iput-object v2, p0, Lcom/netease/mpay/oversea/q3;->k:Lcom/netease/mpay/oversea/l6;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->m:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->o:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Lcom/netease/mpay/oversea/q3$h;

    invoke-direct {v1, v0, v0}, Lcom/netease/mpay/oversea/q3$h;-><init>(ZZ)V

    iput-object v1, p0, Lcom/netease/mpay/oversea/q3;->i:Lcom/netease/mpay/oversea/q3$h;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    return-object p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 16
    :try_start_0
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/q3;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance p1, Lcom/netease/mpay/oversea/q3$b;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/q3$b;-><init>(Lcom/netease/mpay/oversea/q3;)V

    invoke-static {p1}, Lcom/netease/mpay/oversea/s;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/q3$f;)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/q3$f;

    .line 10
    iget v3, p2, Lcom/netease/mpay/oversea/q3$f;->i:I

    iget v2, v2, Lcom/netease/mpay/oversea/q3$f;->i:I

    if-ge v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/q3;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/netease/mpay/oversea/q3$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/q3$a;-><init>(Lcom/netease/mpay/oversea/q3;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
