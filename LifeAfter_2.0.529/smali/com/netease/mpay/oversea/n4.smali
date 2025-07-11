.class public Lcom/netease/mpay/oversea/n4;
.super Lcom/netease/mpay/oversea/fa;
.source "InitConfigTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/q3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/oversea/ea;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/ea<",
            "Lcom/netease/mpay/oversea/q3;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/fa;->h:Z

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/fa;->h()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;

    :goto_0
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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n4;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/q3;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/q3;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->a()Lcom/netease/mpay/oversea/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b0;->b()Lcom/netease/mpay/oversea/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/c0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mpay/oversea/c0;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/oversea/h9;->j:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->k()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->f()Z

    move-result v3

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/netease/mpay/httpdns/HttpDns;->init(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/p3;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/netease/mpay/oversea/p3;-><init>(Landroid/app/Activity;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/q3;

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/q3;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object v0

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/q3;->A:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/e5;->c(Z)V

    return-object p1
.end method
