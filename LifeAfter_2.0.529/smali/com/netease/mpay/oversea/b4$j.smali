.class Lcom/netease/mpay/oversea/b4$j;
.super Lcom/netease/mpay/oversea/f1;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4;->c(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/w2;

.field final synthetic e:Lcom/netease/mpay/oversea/b4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4;Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/w2;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->K(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/s4;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/r3;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    iget-object v2, v1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/v2;->p:Lorg/json/JSONObject;

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/r3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    const-string v0, "account_deletion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/b4;->a(Lcom/netease/mpay/oversea/b4;Z)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    iget-object p1, p1, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    const-string v1, "gen_migrate_code"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->i0()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b4;->q(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    const/4 v1, 0x1

    .line 18
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->M(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->L(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Z)V

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->N(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    goto :goto_1

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->P(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b4;->O(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Z)V

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->Q(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->N:Lcom/netease/mpay/oversea/s9;

    new-instance v1, Lcom/netease/mpay/oversea/b4$j$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/b4$j$a;-><init>(Lcom/netease/mpay/oversea/b4$j;)V

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/cc;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/d7;)V

    goto :goto_2

    .line 46
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$j;->e:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->V(Lcom/netease/mpay/oversea/b4;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/b4$j;->d:Lcom/netease/mpay/oversea/w2;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :goto_2
    return-void
.end method
