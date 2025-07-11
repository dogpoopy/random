.class Lcom/netease/mpay/oversea/i0$a;
.super Lcom/netease/mpay/oversea/ga;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ga<",
        "Lcom/netease/mpay/oversea/ac;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    iput-object p5, p0, Lcom/netease/mpay/oversea/i0$a;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ac;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->b(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->m(Lcom/netease/mpay/oversea/i0;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/i0$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->w(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->E(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->U(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->O(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/w2;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->V(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/i0;->c(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->W(Lcom/netease/mpay/oversea/i0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->l(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->n(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->p(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    .line 18
    invoke-static {}, Lcom/netease/mpay/oversea/i0;->h()Lcom/netease/mpay/oversea/s9;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    .line 19
    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->o(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->c(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->d(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->m(Lcom/netease/mpay/oversea/i0;)V

    .line 11
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->f(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->e(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->g(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->h(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->i(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/i0$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/i0$a$a;-><init>(Lcom/netease/mpay/oversea/i0$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->q(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->r(Lcom/netease/mpay/oversea/i0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i0;->t(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/i0;->h()Lcom/netease/mpay/oversea/s9;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$a;->e:Lcom/netease/mpay/oversea/i0;

    .line 13
    invoke-static {p1}, Lcom/netease/mpay/oversea/i0;->s(Lcom/netease/mpay/oversea/i0;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ac;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/i0$a;->a(Lcom/netease/mpay/oversea/ac;)V

    return-void
.end method
