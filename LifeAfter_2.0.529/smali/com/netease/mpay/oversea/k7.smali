.class public Lcom/netease/mpay/oversea/k7;
.super Lcom/netease/mpay/oversea/f6;
.source "PNMigrateTask.java"


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/u5;Ljava/lang/String;Lcom/netease/mpay/oversea/q5;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/k7;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected f(Lcom/netease/mpay/oversea/fa$f;)Lcom/netease/mpay/oversea/e6;
    .locals 4
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

    new-instance p1, Lcom/netease/mpay/oversea/j7;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f6;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/k7;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/f6;->p:Lcom/netease/mpay/oversea/u5;

    invoke-direct {p1, v1, v2, v3}, Lcom/netease/mpay/oversea/j7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/e6;

    return-object p1
.end method
