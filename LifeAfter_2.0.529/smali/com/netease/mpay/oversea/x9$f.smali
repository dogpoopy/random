.class Lcom/netease/mpay/oversea/x9$f;
.super Lcom/netease/mpay/oversea/ga;
.source "SecurityInputEmailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/x9;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ga<",
        "Lcom/netease/mpay/oversea/qa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/x9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/x9;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->P(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->Q(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->U(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 13
    invoke-static {v2}, Lcom/netease/mpay/oversea/x9;->R(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->T(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 0

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->F(Lcom/netease/mpay/oversea/x9;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->G(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->I(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->L(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 6
    invoke-static {v2}, Lcom/netease/mpay/oversea/x9;->J(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 7
    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->K(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->M(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->N(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->O(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/x9$f$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/x9$f$a;-><init>(Lcom/netease/mpay/oversea/x9$f;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->V(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->W(Lcom/netease/mpay/oversea/x9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/x9;->Z(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 13
    invoke-static {v2}, Lcom/netease/mpay/oversea/x9;->X(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/x9$f;->d:Lcom/netease/mpay/oversea/x9;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/x9;->Y(Lcom/netease/mpay/oversea/x9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/x9$f;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
