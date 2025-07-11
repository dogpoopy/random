.class public Lcom/netease/mpay/oversea/ui/g;
.super Lcom/netease/mpay/oversea/ui/o;
.source "EmailLogin.java"


# instance fields
.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/o;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->r:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/ui/o;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/v8;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/z2;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/z2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/z2;->b(Lcom/netease/mpay/oversea/h5;)Lcom/netease/mpay/oversea/v8;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/g;->g()Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    check-cast v0, Lcom/netease/mpay/oversea/thirdapi/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0, v1, p1, v2}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    check-cast v0, Lcom/netease/mpay/oversea/thirdapi/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:dealApiLoginSuccess: state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/y5;->k:Z

    if-nez v0, :cond_0

    const-string v0, "Event:API_BIND"

    .line 9
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v5, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 11
    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 15
    invoke-virtual {v0, v2, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, v5

    .line 16
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    .line 20
    iput-object p1, v0, Lcom/netease/mpay/oversea/u5;->l:Ljava/lang/String;

    .line 21
    iput-object p2, v0, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    .line 22
    new-instance p1, Lcom/netease/mpay/oversea/f6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    new-instance v6, Lcom/netease/mpay/oversea/ui/g$a;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/g$a;-><init>(Lcom/netease/mpay/oversea/ui/g;)V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 43
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Event:parent dealApiLoginSuccess"

    .line 45
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z
    .locals 2

    .line 4
    instance-of p1, p2, Lcom/netease/mpay/oversea/o;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    check-cast p2, Lcom/netease/mpay/oversea/o;

    iget-object p1, p2, Lcom/netease/mpay/oversea/o;->d:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    if-eq p1, v1, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object p1, p2, Lcom/netease/mpay/oversea/o;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/o;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s4;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/g;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/g;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/h;-><init>(Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
