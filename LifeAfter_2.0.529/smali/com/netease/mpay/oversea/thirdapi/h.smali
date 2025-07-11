.class public Lcom/netease/mpay/oversea/thirdapi/h;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "EmailApi.java"


# instance fields
.field private d:Lcom/netease/mpay/oversea/b1;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/g6;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 6
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/thirdapi/h;->e()Lcom/netease/mpay/oversea/p;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/e2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/e2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hydraEmail Login Success:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p5;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "bind_ticket"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "email"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p2, Lcom/netease/mpay/oversea/a0;

    const-string v0, "password"

    invoke-direct {p2, v0, p3}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p1, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    .line 63
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, -0x2

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/d2;)V
    .locals 3

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 60
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p1, v1, v1, v2, p2}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/d2;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v4, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v6, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/e2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/b1;->b()Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/d2;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/d2;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 6

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 14
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 15
    invoke-static {p2}, Lcom/netease/mpay/oversea/s9;->c(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v3, :cond_2

    .line 17
    sget-object v0, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    if-ne v0, p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 19
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->b(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto/16 :goto_0

    .line 22
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q;->d()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    .line 24
    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 26
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto/16 :goto_0

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 29
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    .line 31
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    move-object v0, v1

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/e2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto/16 :goto_0

    .line 39
    :cond_2
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 41
    :cond_3
    invoke-static {p2}, Lcom/netease/mpay/oversea/s9;->g(Lcom/netease/mpay/oversea/s9;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    new-instance p2, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q;->d()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 46
    iget-object p2, p2, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 48
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 50
    :cond_4
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/s9;->a(Z)V

    .line 51
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->b(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_0

    .line 54
    :cond_5
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->d:Lcom/netease/mpay/oversea/b1;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/h;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/h;->b(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :goto_0
    return-void
.end method

.method public e()Lcom/netease/mpay/oversea/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/h$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/h$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/h;)V

    return-object v0
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/h;->g:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
