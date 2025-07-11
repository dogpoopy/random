.class public Lcom/netease/mpay/oversea/da;
.super Ljava/lang/Object;
.source "ServerApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/fa$f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/da;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/da;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/da;->c:Lcom/netease/mpay/oversea/fa$f;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/a<",
            "TResponse;>;)TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/da;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/da;->c:Lcom/netease/mpay/oversea/fa$f;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/fa$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/a;->b()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/da;->a:Landroid/app/Activity;

    .line 8
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/oversea/da;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/da;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, v4}, Lcom/netease/mpay/oversea/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sget v6, Lcom/netease/mpay/oversea/o6;->b:I

    sget v7, Lcom/netease/mpay/oversea/o6;->a:I

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/netease/mpay/oversea/i3;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/k3;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/da;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/k3;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/netease/mpay/oversea/i3$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 19
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/httpdns/HttpDns;->switchHttpDnsMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/g$a;

    new-instance v0, Lcom/netease/mpay/oversea/j;

    const/16 v1, 0x2714

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/g$a;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw p1
.end method
