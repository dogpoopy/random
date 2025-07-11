.class public Lcom/netease/mpay/oversea/ia;
.super Lcom/netease/mpay/oversea/z0;
.source "SingleLogin.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/ui/i$g;

.field protected m:Ljava/lang/String;

.field protected n:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object p3, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/ia;->l:Lcom/netease/mpay/oversea/ui/i$g;

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ia;->m:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p0, p2, p3}, Lcom/netease/mpay/oversea/ia;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/o;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    new-instance p3, Lcom/netease/mpay/oversea/ui/i$h;

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    const/16 v3, 0x1e

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/ia;->a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 14
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 15
    invoke-virtual {p2, p3, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_2
    return-object p1
.end method

.method protected a(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/j;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/j;-><init>()V

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/o;
    .locals 8

    .line 16
    sget-object v0, Lcom/netease/mpay/oversea/ia$a;->a:[I

    iget-object v1, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->e:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/netease/mpay/oversea/ui/o;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    .line 31
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/ui/o;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/ui/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0

    .line 34
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/ui/l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/l;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0

    .line 35
    :cond_3
    new-instance v0, Lcom/netease/mpay/oversea/ui/u;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/u;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0

    .line 36
    :cond_4
    new-instance v0, Lcom/netease/mpay/oversea/ui/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->c:Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/j;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->j()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ia;->n:Lcom/netease/mpay/oversea/ui/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->l()V

    :cond_0
    return-void
.end method
