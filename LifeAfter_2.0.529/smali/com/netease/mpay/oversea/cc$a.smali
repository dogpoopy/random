.class Lcom/netease/mpay/oversea/cc$a;
.super Lcom/netease/mpay/oversea/ga;
.source "VerifyEmailFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/cc;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ga<",
        "Lcom/netease/mpay/oversea/yb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/cc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/cc;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->n(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->o(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->p(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object p1, p1, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 37
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/yb;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->a(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->b(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->l(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object v1, v1, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/yb;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->w(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "security_email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->x(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "restore_account"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->z(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    .line 7
    invoke-static {v3}, Lcom/netease/mpay/oversea/cc;->y(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object v4, v4, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v3, v4, v1}, Lcom/netease/mpay/oversea/v9;->e(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->C(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-boolean v3, v2, Lcom/netease/mpay/oversea/cc;->l:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/netease/mpay/oversea/cc;->A(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object v3, v3, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2, v3, v1}, Lcom/netease/mpay/oversea/v9;->c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v2}, Lcom/netease/mpay/oversea/cc;->B(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object v3, v3, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2, v3, v1}, Lcom/netease/mpay/oversea/v9;->d(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    :goto_0
    const-string v2, "setting"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->c(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/wb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/wb;->a(Lcom/netease/mpay/oversea/yb;)V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->c(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/wb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->d(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/wb;->a(Ljava/util/HashMap;)V

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->e(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/cc;->a(Lcom/netease/mpay/oversea/cc;Z)Z

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/cc;->n()V

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->f(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/v8;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->c(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/wb;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/v8;->a(Lcom/netease/mpay/oversea/x2;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 24
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->g(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->h(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->i(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object p1, p1, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->j(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->k(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {p1}, Lcom/netease/mpay/oversea/cc;->m(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object v0, v0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->q(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->r(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    invoke-static {v0}, Lcom/netease/mpay/oversea/cc;->s(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/cc$a;->d:Lcom/netease/mpay/oversea/cc;

    iget-object p1, p1, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/yb;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/cc$a;->a(Lcom/netease/mpay/oversea/yb;)V

    return-void
.end method
