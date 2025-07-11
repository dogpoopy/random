.class public Lcom/netease/mpay/oversea/i9;
.super Ljava/lang/Object;
.source "SDKRuntime.java"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ac;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/netease/mpay/oversea/q3;

.field private e:Lcom/netease/mpay/oversea/e6;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Lcom/netease/mpay/oversea/x4;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/netease/mpay/oversea/g6;

.field private m:Lcom/netease/mpay/oversea/s9;

.field private n:I

.field private o:I

.field private p:Lcom/netease/mpay/oversea/p5;

.field private q:Lcom/netease/mpay/oversea/yb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/i9;->b:Z

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/netease/mpay/oversea/i9;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "01012000"

    .line 16
    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->i:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->j:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->k:Ljava/util/ArrayList;

    .line 26
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->l:Lcom/netease/mpay/oversea/g6;

    .line 28
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->m:Lcom/netease/mpay/oversea/s9;

    .line 34
    new-instance v0, Lcom/netease/mpay/oversea/p5;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/p5;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->p:Lcom/netease/mpay/oversea/p5;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 42
    :cond_0
    iget-object p4, p1, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 44
    iget-boolean p1, p4, Lcom/netease/mpay/oversea/q3$d;->f:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/q3$d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, p5, p6}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object p2

    .line 48
    :cond_3
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-eqz p1, :cond_5

    .line 49
    iget-boolean p3, p1, Lcom/netease/mpay/oversea/q3$g;->g:Z

    if-nez p3, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, p5, p6}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    return-object p2
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 13
    :cond_0
    iget-object p4, p1, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 15
    iget-boolean p1, p4, Lcom/netease/mpay/oversea/q3$d;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/q3$d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p5, p6}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object p2

    .line 19
    :cond_3
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-eqz p1, :cond_5

    .line 20
    iget-boolean p3, p1, Lcom/netease/mpay/oversea/q3$g;->f:Z

    if-nez p3, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/e4;->a()Lcom/netease/mpay/oversea/e4;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, p5, p6}, Lcom/netease/mpay/oversea/e4;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    return-object p2
.end method


# virtual methods
.method public A()Lcom/netease/mpay/oversea/q3$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/oversea/q3$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/netease/mpay/oversea/q3$h;-><init>(ZZ)V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->i:Lcom/netease/mpay/oversea/q3$h;

    return-object v0
.end method

.method public B()Lcom/netease/mpay/oversea/a3$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/a3$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a3$a;-><init>()V

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/a3$a;

    invoke-direct {v1, v0}, Lcom/netease/mpay/oversea/a3$a;-><init>(Lcom/netease/mpay/oversea/q3;)V

    return-object v1
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->J:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/w8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/x4;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->h:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->i:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public I()Lcom/netease/mpay/oversea/yb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->q:Lcom/netease/mpay/oversea/yb;

    return-object v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->c:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/i9;->b:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/i;->a(I)Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->q:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public N()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->q:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q3$c;->b()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/x4;->i:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->e:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->z:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public U()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/q3$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/q3$f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$f;->g:Ljava/lang/String;

    const-string v2, "games"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public V()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/q3$f;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/q3$f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$f;->g:Ljava/lang/String;

    const-string v2, "games_v2"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public W()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/i;->b(I)Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/i9;->b:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Z()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->k:Lcom/netease/mpay/oversea/l6;

    iget v0, v0, Lcom/netease/mpay/oversea/l6;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    if-nez p1, :cond_1

    return-object v1

    .line 32
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$f;->d:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v1, v1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/q3$f;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 35
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    if-nez p1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$d;->d:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz p2, :cond_5

    .line 38
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-nez p1, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->d:Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/netease/mpay/oversea/i9;->o:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "can_auto_login"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 53
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    monitor-enter p0

    .line 54
    :try_start_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->e:Lcom/netease/mpay/oversea/e6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/netease/mpay/oversea/q3;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/i9;->b:Z

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/x4;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/yb;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->q:Lcom/netease/mpay/oversea/yb;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 21
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->d:Z

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/h9;->c:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 17
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Lcom/netease/mpay/oversea/s9;)Z
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 26
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->q:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->d(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q3;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/x4;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->n:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oversea/i9;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 58
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public b(ZLcom/netease/mpay/oversea/g6;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v1, v1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/q3$f;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 40
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$d;->c:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    :try_start_0
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->f:Lcom/netease/mpay/oversea/q3$d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$d;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    if-eqz p2, :cond_5

    .line 50
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->c:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    :try_start_1
    iget-object p1, p2, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_5
    :goto_1
    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const-string v1, ""

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v2, v2, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 7
    iget-object v4, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v4, v4, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/q3$f;

    .line 8
    iget-object v5, v4, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v6, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/g6;->l:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/g6;->F:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v6, Lcom/netease/mpay/oversea/g6;->m:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v6, :cond_2

    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->n(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    sget-object v5, Lcom/netease/mpay/oversea/g6;->B:Lcom/netease/mpay/oversea/g6;

    iget-object v6, v4, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v6, :cond_3

    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->k(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object v5, v4, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v6, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v6, :cond_4

    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->m(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iget-boolean v5, v4, Lcom/netease/mpay/oversea/q3$f;->b:Z

    if-eqz v5, :cond_5

    .line 19
    iget-object v4, v4, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_7
    :goto_2
    return-object v1
.end method

.method public b(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, v1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$f;->e:Lcom/netease/mpay/oversea/q3$g;

    if-nez p1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$g;->e:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/i9;->n:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "can_auto_login"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/s9;)Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    iget v2, v0, Lcom/netease/mpay/oversea/q3;->q:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    .line 32
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q3$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->d(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/x4;->g:Z

    return v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance p1, Lcom/netease/mpay/oversea/ac;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/ac;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ac;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lcom/netease/mpay/oversea/q3$e;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->a:Lcom/netease/mpay/oversea/q3$e;

    return-object v0
.end method

.method public c(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q3;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->m:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/x4;->h:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->M:Lcom/netease/mpay/oversea/q3$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q3$c;->a()I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->n:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 11
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public d(Lcom/netease/mpay/oversea/g6;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/g6;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3$f;->c:Ljava/util/ArrayList;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->i:Ljava/lang/String;

    return-void
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/x4;->a()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/d1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/x4;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e(Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p1, :cond_4

    sget-object v0, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p1, :cond_4

    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/g6;->a(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/q3$f;->b:Z

    return p1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3$f;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/q3$f;->b:Z

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->E:Z

    return v0
.end method

.method public declared-synchronized f()Lcom/netease/mpay/oversea/e6;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->e:Lcom/netease/mpay/oversea/e6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/netease/mpay/oversea/g6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i9;->l:Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->r:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/i;->c(I)Z

    move-result v0

    return v0
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->l:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->h:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/x4;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/q3;->H:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->q:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->F:Z

    return v0
.end method

.method public j()Lcom/netease/mpay/oversea/c2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/oversea/c2;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/c2;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->l:Lcom/netease/mpay/oversea/c2;

    return-object v0
.end method

.method public j0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->g:Z

    return v0
.end method

.method public declared-synchronized k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->j:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->I:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->c:Ljava/util/HashMap;

    .line 6
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/k;->a()V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->b()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/i9;->b:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    return-void
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/q3;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lcom/netease/mpay/oversea/p5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->p:Lcom/netease/mpay/oversea/p5;

    return-object v0
.end method

.method public p()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Lcom/netease/mpay/oversea/x4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->g:Lcom/netease/mpay/oversea/x4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/x4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/i9;->o:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->G:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user_center/passport_manage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i9;->d:Lcom/netease/mpay/oversea/q3;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3;->G:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->p:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/i9;->n:I

    return v0
.end method
