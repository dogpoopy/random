.class Lcom/netease/mpay/oversea/ui/e$a;
.super Ljava/lang/Object;
.source "ChannelLoginHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->f(Lcom/netease/mpay/oversea/ui/e;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 17
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/g6;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->O:Lcom/netease/mpay/oversea/g6;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/e;->a(Lcom/netease/mpay/oversea/ui/e;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/e;->b(Lcom/netease/mpay/oversea/ui/e;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/e;->a(Lcom/netease/mpay/oversea/ui/e;I)I

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    new-instance v2, Lcom/netease/mpay/oversea/ui/e$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/e$a$a;-><init>(Lcom/netease/mpay/oversea/ui/e$a;)V

    invoke-static {v1, v0, p1, v2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/t8;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/e;->a(Lcom/netease/mpay/oversea/ui/e;I)I

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->t:Lcom/netease/mpay/oversea/s9;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m;->l(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/i$g;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/i$g;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v3, Lcom/netease/mpay/oversea/j;

    .line 12
    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->e(Lcom/netease/mpay/oversea/ui/e;)I

    move-result v0

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->d(Lcom/netease/mpay/oversea/ui/e;)I

    move-result v0

    invoke-direct {v2, p1, v3, v0}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;I)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/e;->a(Lcom/netease/mpay/oversea/ui/e;I)I

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->g(Lcom/netease/mpay/oversea/ui/e;)Lcom/netease/mpay/oversea/ui/e$c;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/netease/mpay/oversea/u0;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 21
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->h(Lcom/netease/mpay/oversea/ui/e;)V

    return-void
.end method

.method public onLogout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v4, Lcom/netease/mpay/oversea/j;

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/e;->e(Lcom/netease/mpay/oversea/ui/e;)I

    move-result v0

    const-string v5, ""

    invoke-direct {v4, v0, v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/e$a;->a:Lcom/netease/mpay/oversea/ui/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/e;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
