.class Lcom/netease/mpay/oversea/a8$i;
.super Ljava/lang/Object;
.source "PasswordNew.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/a8;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/a8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/a8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/a8;->p(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/a8;->q(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object p2, Lcom/netease/mpay/oversea/s9;->z:Lcom/netease/mpay/oversea/s9;

    if-eq p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i9;->a(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/a8;->x(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {p2}, Lcom/netease/mpay/oversea/a8;->r(Lcom/netease/mpay/oversea/a8;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    .line 6
    invoke-static {p3}, Lcom/netease/mpay/oversea/a8;->s(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;

    move-result-object p3

    check-cast p3, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {v0}, Lcom/netease/mpay/oversea/a8;->t(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/d2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d2;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    .line 7
    invoke-static {v1}, Lcom/netease/mpay/oversea/a8;->u(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-static {v2}, Lcom/netease/mpay/oversea/a8;->v(Lcom/netease/mpay/oversea/a8;)Lcom/netease/mpay/oversea/v2;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/d2;

    .line 8
    invoke-static {p2, p3, v0, v1, v2}, Lcom/netease/mpay/oversea/e2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/a8$i;->a:Lcom/netease/mpay/oversea/a8;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/z0;->a(Lcom/netease/mpay/oversea/j;)V

    return-void
.end method
