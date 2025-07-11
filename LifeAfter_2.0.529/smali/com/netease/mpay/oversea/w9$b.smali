.class Lcom/netease/mpay/oversea/w9$b;
.super Lcom/netease/mpay/oversea/ga;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/w9;->i()V
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
.field final synthetic d:Lcom/netease/mpay/oversea/w9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/w9;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->C(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->D(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->G(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/w9;->E(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    .line 11
    invoke-static {p1}, Lcom/netease/mpay/oversea/w9;->F(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/qa;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/w9;->M(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/w2;->h:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->w(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->x(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->A(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/w9;->z(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/w9;->B(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->H(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->I(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->L(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    .line 6
    invoke-static {v2}, Lcom/netease/mpay/oversea/w9;->J(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$b;->d:Lcom/netease/mpay/oversea/w9;

    .line 7
    invoke-static {p1}, Lcom/netease/mpay/oversea/w9;->K(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/qa;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/w9$b;->a(Lcom/netease/mpay/oversea/qa;)V

    return-void
.end method
