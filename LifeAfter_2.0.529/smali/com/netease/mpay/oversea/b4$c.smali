.class Lcom/netease/mpay/oversea/b4$c;
.super Lcom/netease/mpay/oversea/ga;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4;->a(Landroid/view/View;)V
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
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/netease/mpay/oversea/b4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    iput-object p5, p0, Lcom/netease/mpay/oversea/b4$c;->d:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ac;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->n(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->w(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->H(Lcom/netease/mpay/oversea/b4;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b4;->R(Lcom/netease/mpay/oversea/b4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/i9;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ac;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->a0(Lcom/netease/mpay/oversea/b4;)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/b4;->a(Lcom/netease/mpay/oversea/b4;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->h(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->i(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->k(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    .line 17
    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->j(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->b0(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->c0(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->e(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->d(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->f(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->g(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->H(Lcom/netease/mpay/oversea/b4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->l(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->m(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->p(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$c;->e:Lcom/netease/mpay/oversea/b4;

    .line 8
    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->o(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ac;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/b4$c;->a(Lcom/netease/mpay/oversea/ac;)V

    return-void
.end method
