.class public Lcom/netease/mpay/oversea/f6;
.super Lcom/netease/mpay/oversea/fa;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/e6;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Lcom/netease/mpay/oversea/q5;

.field protected m:Z

.field protected n:Lcom/netease/mpay/oversea/s9;

.field protected o:Ljava/lang/String;

.field protected p:Lcom/netease/mpay/oversea/u5;

.field protected q:Lcom/netease/mpay/oversea/y5;

.field protected r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lcom/netease/mpay/oversea/u5;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    iget-boolean p2, p3, Lcom/netease/mpay/oversea/u5;->j:Z

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/f6;->m:Z

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    .line 4
    iget-object p2, p3, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    iput-object p2, p0, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/f6;->l:Lcom/netease/mpay/oversea/q5;

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    iget-object p3, p3, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/i9;->f(Lcom/netease/mpay/oversea/g6;)V

    if-eqz p4, :cond_0

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event:LoginTask:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/e6;)V
    .locals 12

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v2, v2, Lcom/netease/mpay/oversea/u5;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t8;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    .line 43
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_4

    .line 44
    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    sget-object v2, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v1, :cond_3

    .line 46
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 48
    :cond_3
    iget-object v2, p1, Lcom/netease/mpay/oversea/e6;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, v0, Lcom/netease/mpay/oversea/y5;->q:Ljava/lang/String;

    iput-object v2, p1, Lcom/netease/mpay/oversea/e6;->o:Ljava/lang/String;

    :cond_4
    move-object v8, v1

    .line 53
    new-instance v1, Lcom/netease/mpay/oversea/y5$b;

    iget-object v4, p1, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/oversea/e6;->c:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/mpay/oversea/e6;->b:Ljava/lang/String;

    iget-object v9, p1, Lcom/netease/mpay/oversea/e6;->g:Ljava/lang/String;

    iget-object v10, p1, Lcom/netease/mpay/oversea/e6;->f:Ljava/util/ArrayList;

    iget-boolean v2, p1, Lcom/netease/mpay/oversea/e6;->k:Z

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/y5$b;->b(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->o:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    .line 59
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->l:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/e6;->n:I

    .line 61
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/e6;->m:I

    .line 62
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/e6;->s:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    iget p1, p1, Lcom/netease/mpay/oversea/e6;->q:I

    .line 64
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/y5$b;->b(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/e6;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/e6;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/e6;)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/u5;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/netease/mpay/oversea/e6;->j:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f6;->r:Z

    .line 10
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 11
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/f6;->r:Z

    if-eqz v0, :cond_4

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v3, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 15
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    iget-object v4, v3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v4, v3}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 21
    iget v4, p2, Lcom/netease/mpay/oversea/e6;->j:I

    if-eq v4, v2, :cond_3

    iget v2, p2, Lcom/netease/mpay/oversea/e6;->p:I

    if-eq v2, v1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    iput-object v0, p1, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_3
    :goto_1
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/zb;

    .line 29
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2}, Lcom/netease/mpay/oversea/zb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ac;

    .line 30
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    .line 31
    iget-object p2, p0, Lcom/netease/mpay/oversea/f6;->q:Lcom/netease/mpay/oversea/y5;

    iget-object v0, p2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ac;->a(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/mpay/oversea/y5;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/j;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bind_passport_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "bind_ticket"

    .line 110
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/p5;->a(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    const-string v1, "passport_bind"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/f6$d;

    invoke-direct {v5, p0, p2}, Lcom/netease/mpay/oversea/f6$d;-><init>(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/ea;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_bind_passport_guide_force"

    const-string v0, "confirm"

    const-string v1, "cancel"

    .line 150
    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private b(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/j;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__force_bind_email_account_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "bind_ticket"

    .line 61
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/p5;->a(Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/f6$e;

    invoke-direct {v5, p0, v3, p3}, Lcom/netease/mpay/oversea/f6$e;-><init>(Lcom/netease/mpay/oversea/f6;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    new-instance v7, Lcom/netease/mpay/oversea/f6$f;

    invoke-direct {v7, p0, p3, p1}, Lcom/netease/mpay/oversea/f6$f;-><init>(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/ea;I)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_bind_email_guide"

    const-string p3, "confirm"

    const-string v0, "cancel"

    .line 106
    invoke-virtual {p1, p2, p3, v0}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/j;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bind_passport_hint:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    const-string v1, "passport_bind"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/f6$b;

    invoke-direct {v4, p0, p2}, Lcom/netease/mpay/oversea/f6$b;-><init>(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/ea;)V

    new-instance v6, Lcom/netease/mpay/oversea/f6$c;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/f6$c;-><init>(Lcom/netease/mpay/oversea/f6;)V

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_bind_passport_guide_optional"

    const-string v0, "confirm"

    const-string v1, "cancel"

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/f6;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/fa$f;)V
    .locals 5

    .line 66
    iget p1, p1, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v0, 0x271d

    if-ne v0, p1, :cond_4

    .line 67
    iget-object p1, p2, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u5;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/n6;

    .line 70
    invoke-interface {v2}, Lcom/netease/mpay/oversea/n6;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v2}, Lcom/netease/mpay/oversea/n6;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object p2, p2, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/n5;->a(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v1, v0, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    .line 79
    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object p2, p2, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/n5;->a(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p2, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object p2, p2, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/n5;->b(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m1<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance p2, Lcom/netease/mpay/oversea/f6$a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6$a;-><init>(Lcom/netease/mpay/oversea/f6;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/m1;)V

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/u5;Lcom/netease/mpay/oversea/fa$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 4
    iget-object p2, p1, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-static {p2}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    iget-object v0, p1, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    if-ne p2, v0, :cond_0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceTokenVerifyStart(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    iget-object v0, p1, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenStart(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/j;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/e6;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/f6;->b(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V

    return v1

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, "force_bind"

    .line 92
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "bind_ticket"

    .line 93
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/p5;->a(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/fa;->a(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v3, :cond_3

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/oversea/f6;->b(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V

    :goto_0
    return v1

    .line 104
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/fa;->a(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)Z

    move-result p1

    return p1
.end method

.method protected c(I)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->e:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u5;->a:Lcom/netease/mpay/oversea/g6;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x0

    const-string v4, ""

    move v6, p1

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/f6;->g(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/u5;Lcom/netease/mpay/oversea/fa$f;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/f6;->f(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/f6;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/e6;)V

    return-object v0
.end method

.method protected f(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/c6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/c6;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/u5;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/e6;

    return-object p1
.end method

.method protected final g(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/f6;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/f6;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;

    move-result-object p1

    return-object p1
.end method
