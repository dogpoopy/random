.class public Lcom/netease/mpay/oversea/n3;
.super Lcom/netease/mpay/oversea/fa;
.source "FetchUserInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/n3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/ac;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/netease/mpay/oversea/g6;

.field private o:Lcom/netease/mpay/oversea/s9;

.field private p:Lcom/netease/mpay/oversea/f8;

.field q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/f8;ZLcom/netease/mpay/oversea/ga;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/s9;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/g6;",
            "Lcom/netease/mpay/oversea/f8;",
            "Z",
            "Lcom/netease/mpay/oversea/ga<",
            "Lcom/netease/mpay/oversea/ac;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p4, p9}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/n3;->q:Z

    if-eqz p8, :cond_0

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/fa;->h()V

    :goto_0
    if-nez p6, :cond_1

    .line 21
    sget-object p6, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    :cond_1
    iput-object p6, p0, Lcom/netease/mpay/oversea/n3;->n:Lcom/netease/mpay/oversea/g6;

    .line 22
    iput-object p4, p0, Lcom/netease/mpay/oversea/n3;->l:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/netease/mpay/oversea/n3;->m:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/netease/mpay/oversea/n3;->o:Lcom/netease/mpay/oversea/s9;

    .line 25
    iput-object p7, p0, Lcom/netease/mpay/oversea/n3;->p:Lcom/netease/mpay/oversea/f8;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;ZLcom/netease/mpay/oversea/ga;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/s9;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/g6;",
            "Z",
            "Lcom/netease/mpay/oversea/ga<",
            "Lcom/netease/mpay/oversea/ac;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/oversea/n3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/f8;ZLcom/netease/mpay/oversea/ga;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/ac;)Lcom/netease/mpay/oversea/y5;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Lcom/netease/mpay/oversea/pa;

    iget-object v3, v0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v4, v0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4
    iget-object v1, v0, Lcom/netease/mpay/oversea/n3;->o:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/g;

    new-instance v2, Lcom/netease/mpay/oversea/j;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw v1

    .line 8
    :cond_1
    iget-object v3, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/n3;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 9
    :cond_2
    iget-object v3, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/netease/mpay/oversea/n3;->n:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 10
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/i9;->p()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/mpay/oversea/g6;

    .line 12
    invoke-virtual {v1, v5}, Lcom/netease/mpay/oversea/ac;->b(Lcom/netease/mpay/oversea/g6;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6
    iput-object v3, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 21
    :cond_7
    iget-object v3, v2, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/i9;->W()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    iget-object v4, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v4, v6, :cond_8

    .line 25
    iget-object v4, v1, Lcom/netease/mpay/oversea/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    move-object v11, v4

    goto :goto_1

    :cond_8
    move-object v11, v3

    .line 31
    :goto_1
    iget-boolean v3, v2, Lcom/netease/mpay/oversea/y5;->k:Z

    .line 32
    new-instance v4, Lcom/netease/mpay/oversea/y5$b;

    iget-object v8, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v9, v2, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    iget-object v10, v2, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iget-object v13, v1, Lcom/netease/mpay/oversea/ac;->d:Ljava/lang/String;

    iget-object v14, v1, Lcom/netease/mpay/oversea/ac;->b:Ljava/util/ArrayList;

    iget-boolean v6, v2, Lcom/netease/mpay/oversea/y5;->o:Z

    .line 34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object v7, v4

    invoke-direct/range {v7 .. v15}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v6, v1, Lcom/netease/mpay/oversea/ac;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v6}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget v6, v2, Lcom/netease/mpay/oversea/y5;->m:I

    .line 36
    invoke-virtual {v4, v6}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget-object v6, v2, Lcom/netease/mpay/oversea/y5;->q:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v6}, Lcom/netease/mpay/oversea/y5$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget v6, v2, Lcom/netease/mpay/oversea/y5;->n:I

    .line 38
    invoke-virtual {v4, v6}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    iget-object v6, v2, Lcom/netease/mpay/oversea/y5;->r:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v6}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    .line 40
    iget-boolean v6, v0, Lcom/netease/mpay/oversea/n3;->q:Z

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    iget v5, v2, Lcom/netease/mpay/oversea/y5;->s:I

    :goto_2
    invoke-virtual {v4, v5}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v4

    .line 41
    invoke-virtual {v4, v2}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    .line 42
    iput-boolean v3, v2, Lcom/netease/mpay/oversea/y5;->k:Z

    .line 43
    iget-object v3, v2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    move-object/from16 v1, p1

    .line 44
    iget-object v1, v1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    return-object v2
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m1<",
            "Lcom/netease/mpay/oversea/ac;",
            ">;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/ac;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/n3;->q:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/netease/mpay/oversea/n3$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/oversea/m1;->a:Z

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lcom/netease/mpay/oversea/n3$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/m1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/netease/mpay/oversea/ac;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/n3$a;->a(Lcom/netease/mpay/oversea/ac;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V

    :goto_0
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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n3;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n3;->p:Lcom/netease/mpay/oversea/f8;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/f8;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/oversea/f8;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/f8;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/n3;->p:Lcom/netease/mpay/oversea/f8;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f8;->a:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/n3;->q:Z

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/zb;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n3;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/n3;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/zb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/n3;->q:Z

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/n3;->p:Lcom/netease/mpay/oversea/f8;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/zb;->a(Lcom/netease/mpay/oversea/f8;)Lcom/netease/mpay/oversea/zb;

    .line 10
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/da;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ac;

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/n3;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/ac;)Lcom/netease/mpay/oversea/y5;

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/n3;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    return-object v0
.end method
