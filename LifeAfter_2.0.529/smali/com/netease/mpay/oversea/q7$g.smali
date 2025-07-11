.class Lcom/netease/mpay/oversea/q7$g;
.super Ljava/lang/Object;
.source "PassportLoginHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q7;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/q7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->z(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->A(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/e$c;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p3}, Lcom/netease/mpay/oversea/q7;->u(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p3}, Lcom/netease/mpay/oversea/q7;->v(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q7;->x(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$g;->a:Lcom/netease/mpay/oversea/q7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q7;->y(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->onLogout()V

    :cond_0
    return-void
.end method
