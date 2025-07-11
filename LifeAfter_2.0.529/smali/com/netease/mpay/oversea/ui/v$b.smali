.class Lcom/netease/mpay/oversea/ui/v$b;
.super Lcom/netease/mpay/oversea/ga;
.source "UserCenterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/v;->k()V
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
.field final synthetic d:Lcom/netease/mpay/oversea/ui/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/v;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 26
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/yb;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/yb;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v1, p1, v0}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/yb;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "security_email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "restore_account"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, v2, v4}, Lcom/netease/mpay/oversea/v9;->e(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/ui/v;)Lcom/netease/mpay/oversea/wb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/wb;->a(Lcom/netease/mpay/oversea/yb;)V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/ui/v;)Lcom/netease/mpay/oversea/wb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/wb;->a(Ljava/util/HashMap;)V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/v;->l()V

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/a;->d:Lcom/netease/mpay/oversea/v8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/ui/v;)Lcom/netease/mpay/oversea/wb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/v8;->a(Lcom/netease/mpay/oversea/x2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 21
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->s:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$m;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$b;->d:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/yb;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/v$b;->a(Lcom/netease/mpay/oversea/yb;)V

    return-void
.end method
