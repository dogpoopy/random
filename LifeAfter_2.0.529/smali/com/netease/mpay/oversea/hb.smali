.class public Lcom/netease/mpay/oversea/hb;
.super Lcom/netease/mpay/oversea/fa;
.source "UnBindTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/gb;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/netease/mpay/oversea/g6;

.field private o:Lcom/netease/mpay/oversea/y5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ga;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/g6;",
            "Lcom/netease/mpay/oversea/ga<",
            "Lcom/netease/mpay/oversea/gb;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/hb;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/hb;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/hb;->n:Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/hb;)Lcom/netease/mpay/oversea/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/gb;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->u:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/hb;->n:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/gb;->c()Ljava/util/ArrayList;

    move-result-object v9

    .line 8
    new-instance v11, Lcom/netease/mpay/oversea/y5$b;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/gb;->a()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v7, p0, Lcom/netease/mpay/oversea/hb;->n:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v7, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    :cond_2
    move-object v7, v2

    .line 11
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/gb;->b()Ljava/lang/String;

    move-result-object v8

    iget-boolean p2, v0, Lcom/netease/mpay/oversea/y5;->o:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 12
    invoke-virtual {v11, v0}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/y5;->m:I

    .line 13
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/y5;->n:I

    .line 14
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->q:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->r:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/y5;->s:I

    .line 18
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v2, p0, Lcom/netease/mpay/oversea/hb;->n:Lcom/netease/mpay/oversea/g6;

    .line 19
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 24
    iget-object v3, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    iget-object v4, v3, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2, v4}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 25
    iget-object p2, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 27
    :try_start_0
    new-instance p2, Lcom/netease/mpay/oversea/da;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {p2, v3, v4, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/zb;

    .line 28
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v5}, Lcom/netease/mpay/oversea/zb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, v3}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ac;

    if-eqz p1, :cond_3

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    .line 33
    iget-object p2, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    iget-object v0, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->W()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_3

    iget-object p2, p1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne p2, v0, :cond_3

    .line 37
    iget-object p2, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return v2
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/hb;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/hb;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method

.method private f(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/gb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/fb;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/hb;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/hb;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/hb;->n:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/mpay/oversea/fb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/gb;

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m1<",
            "Lcom/netease/mpay/oversea/gb;",
            ">;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/gb;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/m1;->a:Z

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/hb;->o:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/hb$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/hb$a;-><init>(Lcom/netease/mpay/oversea/hb;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    .line 52
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V

    return-void
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/hb;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/gb;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/gb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/hb;->f(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/gb;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/hb;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/gb;)Z

    return-object v0
.end method
