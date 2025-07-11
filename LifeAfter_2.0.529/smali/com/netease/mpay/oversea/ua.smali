.class public Lcom/netease/mpay/oversea/ua;
.super Lcom/netease/mpay/oversea/fa;
.source "SyncTrustDevicesTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ea;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ua;->e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qa;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/qa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/netease/mpay/oversea/y5;->s:I

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/da;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v2, Lcom/netease/mpay/oversea/ta;

    .line 6
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0}, Lcom/netease/mpay/oversea/ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/qa;

    return-object p1
.end method
