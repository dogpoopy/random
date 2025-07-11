.class public Lcom/netease/mpay/oversea/q9;
.super Lcom/netease/mpay/oversea/fa;
.source "SMSVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/y0;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ga;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ga<",
            "Lcom/netease/mpay/oversea/y0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/q9;->l:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/netease/mpay/oversea/q9;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/y0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/q9;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/netease/mpay/oversea/y0;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    .line 17
    new-instance v2, Lcom/netease/mpay/oversea/da;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/zb;

    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5}, Lcom/netease/mpay/oversea/zb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ac;

    .line 19
    iget-object v2, v1, Lcom/netease/mpay/oversea/ac;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    .line 20
    iget-object v2, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    .line 21
    iget-object v1, v1, Lcom/netease/mpay/oversea/ac;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 25
    :cond_1
    :goto_0
    new-instance v1, Lcom/netease/mpay/oversea/y5$b;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/oversea/y0;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p2, p2, Lcom/netease/mpay/oversea/y0;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p2, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    :goto_1
    move-object v4, p2

    iget-object v5, v0, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v8, v0, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    iget-object v9, v0, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    iget-boolean p2, v0, Lcom/netease/mpay/oversea/y5;->o:Z

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object p2, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->q:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/y5$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v1, v0, Lcom/netease/mpay/oversea/y5;->m:I

    .line 30
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v1, v0, Lcom/netease/mpay/oversea/y5;->s:I

    .line 31
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget v1, v0, Lcom/netease/mpay/oversea/y5;->n:I

    .line 32
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->r:Ljava/lang/String;

    .line 33
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    .line 34
    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    .line 35
    iget-object p1, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    :cond_3
    return-void

    .line 36
    :cond_4
    new-instance p1, Lcom/netease/mpay/oversea/g;

    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/16 v0, 0x2722

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 1

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 1

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/16 p1, 0x8

    .line 6
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/q9;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/y0;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/16 p1, 0x9

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/y0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/p9;

    iget v4, p0, Lcom/netease/mpay/oversea/q9;->n:I

    iget-object v5, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object v2

    iget-object v7, v2, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/q9;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/oversea/q9;->m:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/p9;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/y0;

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/q9;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/y0;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/q9;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q9;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/q9;->p:Ljava/lang/String;

    const/16 p1, 0xb

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/q9;->n:I

    return-object p0
.end method
