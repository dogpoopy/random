.class public Lcom/netease/mpay/oversea/l2;
.super Lcom/netease/mpay/oversea/fa;
.source "EmailSendCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/netease/mpay/oversea/s9;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;ZLcom/netease/mpay/oversea/ea;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/s9;",
            "Z",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/qa;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/l2;->l:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/l2;->p:Lcom/netease/mpay/oversea/s9;

    .line 4
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/l2;->q:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/l2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/k2;->f()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/l2;->m:I

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/l2;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/l2;->n:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/l2;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qa;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qa;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/l2;->q:Z

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/fa$f;->f:Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/k2;

    iget-object v3, p0, Lcom/netease/mpay/oversea/l2;->l:Ljava/lang/String;

    iget v4, p0, Lcom/netease/mpay/oversea/l2;->m:I

    iget-object v5, p0, Lcom/netease/mpay/oversea/l2;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/l2;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/l2;->p:Lcom/netease/mpay/oversea/s9;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/oversea/k2;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/qa;

    return-object p1
.end method

.method public k()Lcom/netease/mpay/oversea/l2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/k2;->e()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/l2;->m:I

    return-object p0
.end method

.method public l()Lcom/netease/mpay/oversea/l2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/k2;->g()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/l2;->m:I

    return-object p0
.end method
