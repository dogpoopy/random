.class Lcom/netease/mpay/oversea/q2$l;
.super Ljava/lang/Object;
.source "EmailVerifyCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q2;->a(ZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/q2;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q2;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/q2$l;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/q2$l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/q2$l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/q2$l;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    iget-object v0, p0, Lcom/netease/mpay/oversea/q2$l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/q2$l;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/q2;->a(Lcom/netease/mpay/oversea/q2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q2;->m(Lcom/netease/mpay/oversea/q2;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q2;->l(Lcom/netease/mpay/oversea/q2;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/q2$l;->d:Lcom/netease/mpay/oversea/q2;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q2;->n(Lcom/netease/mpay/oversea/q2;)Lcom/netease/mpay/oversea/v2;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d2;->j()Lcom/netease/mpay/oversea/p;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q2$l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/q2$l;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/q2$l;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
