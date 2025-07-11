.class public Lcom/netease/mpay/oversea/thirdapi/l;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "GuestApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/i9;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/l$a;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/thirdapi/l$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/l;)V

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
