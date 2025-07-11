.class public Lcom/netease/mpay/oversea/ui/e;
.super Lcom/netease/mpay/oversea/ui/a;
.source "ChannelLoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/e$c;
    }
.end annotation


# static fields
.field private static final k:Lcom/netease/mpay/oversea/s9;


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/netease/mpay/oversea/ui/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    sput-object v0, Lcom/netease/mpay/oversea/ui/e;->k:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    const/16 v0, 0x2713

    .line 3
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->h:I

    const/16 v0, 0x66

    .line 4
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->i:I

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/ui/e$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/e$a;-><init>(Lcom/netease/mpay/oversea/ui/e;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->j:Lcom/netease/mpay/oversea/ui/e$c;

    .line 111
    invoke-static {p1}, Lcom/netease/mpay/oversea/b1;->b(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZZ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/q3$f;",
            ">;ZZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/q3$f;

    .line 10
    iget-object v4, v2, Lcom/netease/mpay/oversea/q3$f;->a:Lcom/netease/mpay/oversea/g6;

    .line 11
    iget-boolean v5, v2, Lcom/netease/mpay/oversea/q3$f;->b:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v4, :cond_1

    sget-object v5, Lcom/netease/mpay/oversea/g6;->l:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v4, :cond_1

    sget-object v5, Lcom/netease/mpay/oversea/g6;->F:Lcom/netease/mpay/oversea/g6;

    if-eq v5, v4, :cond_1

    sget-object v5, Lcom/netease/mpay/oversea/g6;->m:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v4, :cond_2

    .line 14
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->n(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    sget-object v5, Lcom/netease/mpay/oversea/g6;->B:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v4, :cond_3

    .line 15
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    sget-object v5, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-ne v5, v4, :cond_4

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/g9;->q()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    sget-object v5, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    if-ne v4, v5, :cond_6

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/i9;->G()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    .line 23
    :cond_5
    new-instance v7, Lcom/netease/mpay/oversea/ui/b$e;

    invoke-static {p0, v5, v3, p5}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_6
    sget-object v5, Lcom/netease/mpay/oversea/g6;->p:Lcom/netease/mpay/oversea/g6;

    if-ne v4, v5, :cond_8

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/i9;->y()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    .line 28
    :cond_7
    new-instance v7, Lcom/netease/mpay/oversea/ui/b$e;

    invoke-static {p0, v5, v3, p5}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_8
    sget-object v5, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    if-ne v4, v5, :cond_a

    if-eqz p5, :cond_9

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/i9;->u()Ljava/lang/String;

    move-result-object v6

    .line 34
    new-instance v7, Lcom/netease/mpay/oversea/ui/b$e;

    invoke-static {p0, v5, v3, p5}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_a
    sget-object v5, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-ne v4, v5, :cond_d

    .line 37
    new-instance v6, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 38
    iget-object v6, v6, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v6, ""

    .line 39
    :goto_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/i9;->m()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-static {p0, p1, v6, v7}, Lcom/netease/mpay/oversea/m4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_0

    .line 43
    :cond_c
    new-instance v7, Lcom/netease/mpay/oversea/ui/b$e;

    invoke-static {p0, v5, v3, p5}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_d
    new-instance v7, Lcom/netease/mpay/oversea/ui/b$e;

    invoke-static {p0, v4, v3, p5}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;)V

    .line 48
    :goto_2
    new-instance v3, Lcom/netease/mpay/oversea/ui/b;

    invoke-direct {v3, v4, v7}, Lcom/netease/mpay/oversea/ui/b;-><init>(Lcom/netease/mpay/oversea/g6;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v2, 0x2

    if-eqz p4, :cond_f

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_10

    goto :goto_3

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_10

    :goto_3
    if-eqz p3, :cond_10

    const/4 p3, 0x1

    goto :goto_4

    :cond_10
    const/4 p3, 0x0

    .line 54
    :goto_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/i9;->X()Z

    move-result v4

    if-eqz p5, :cond_12

    if-eqz p4, :cond_11

    goto :goto_5

    :cond_11
    const/4 p2, 0x2

    :goto_5
    if-eqz p3, :cond_14

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/util/List;)V

    goto :goto_6

    :cond_12
    if-eqz v4, :cond_13

    if-eqz p4, :cond_13

    goto :goto_6

    :cond_13
    const/4 p2, 0x2

    :cond_14
    :goto_6
    if-eqz p3, :cond_15

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_15
    if-eqz p3, :cond_18

    if-eqz p5, :cond_16

    .line 68
    new-instance p1, Lcom/netease/mpay/oversea/ui/b$e;

    sget-object p2, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    .line 69
    invoke-static {p0, p2, v3, v3}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;)V

    goto :goto_7

    :cond_16
    if-eqz p4, :cond_17

    if-nez v4, :cond_17

    .line 72
    new-instance p1, Lcom/netease/mpay/oversea/ui/b$e;

    sget-object p2, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    .line 73
    invoke-static {p0, p2, v3}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;)V

    goto :goto_7

    .line 75
    :cond_17
    new-instance p1, Lcom/netease/mpay/oversea/ui/b$e;

    sget-object p2, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    .line 76
    invoke-static {p0, p2, v3}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;)V

    .line 79
    :goto_7
    new-instance p0, Lcom/netease/mpay/oversea/ui/b;

    sget-object p2, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0, p2, p1}, Lcom/netease/mpay/oversea/ui/b;-><init>(Lcom/netease/mpay/oversea/g6;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object v0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 2

    .line 104
    iput p1, p0, Lcom/netease/mpay/oversea/ui/e;->h:I

    .line 105
    iget v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/a;->c()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/a;->c()V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/a;->c()V

    goto :goto_0

    .line 143
    :cond_5
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->k()V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->m()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/e;ILjava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/e;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ui/e;->i:I

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->l()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    return p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ui/e;->h:I

    return p1
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/ui/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ui/e;->i:I

    return p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/ui/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/ui/e;->h:I

    return p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/ui/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->k()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/ui/e;)Lcom/netease/mpay/oversea/ui/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/e;->j:Lcom/netease/mpay/oversea/ui/e$c;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/ui/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->o()V

    return-void
.end method

.method private k()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/e;->j:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/u0;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method private l()V
    .locals 4

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/e;->j:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/u0;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/e;->j:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/u0;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iput v1, p0, Lcom/netease/mpay/oversea/ui/e;->g:I

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->k()V

    :goto_2
    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->B:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/ui/e$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/e$b;-><init>(Lcom/netease/mpay/oversea/ui/e;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m;->m(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/a1;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    .line 80
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const-string v0, "login_type"

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/e;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 95
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__content:I

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->d(Landroid/app/Activity;)V

    .line 100
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/e;->n()V

    return-void

    .line 101
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
