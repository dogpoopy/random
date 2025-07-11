.class public Lcom/netease/mpay/oversea/lb;
.super Lcom/netease/mpay/oversea/fa;
.source "UpdateAgeGroupTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/qb;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/netease/mpay/oversea/s9;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/s9;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/qb;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p7}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/fa;->h:Z

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/lb;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/lb;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/lb;->n:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/netease/mpay/oversea/lb;->o:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/lb;->p:Lcom/netease/mpay/oversea/s9;

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/lb;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qb;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qb;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->r()Lcom/netease/mpay/oversea/x4;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/x4;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/kb;

    iget-object v4, p0, Lcom/netease/mpay/oversea/lb;->p:Lcom/netease/mpay/oversea/s9;

    iget-object v5, p0, Lcom/netease/mpay/oversea/lb;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/lb;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/lb;->o:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/lb;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object v9, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/kb;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/qb;

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/jb;

    iget-object v4, p0, Lcom/netease/mpay/oversea/lb;->p:Lcom/netease/mpay/oversea/s9;

    iget-object v5, p0, Lcom/netease/mpay/oversea/lb;->l:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/lb;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/lb;->o:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/lb;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object v9, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/jb;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/qb;

    return-object p1
.end method
