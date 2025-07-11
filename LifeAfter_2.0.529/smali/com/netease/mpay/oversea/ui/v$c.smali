.class Lcom/netease/mpay/oversea/ui/v$c;
.super Lcom/netease/mpay/oversea/ga;
.source "UserCenterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/v;->a(Lcom/netease/mpay/oversea/g6;)V
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
.field final synthetic d:Lcom/netease/mpay/oversea/g6;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field final synthetic f:Lcom/netease/mpay/oversea/ui/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/v;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/v$c;->d:Lcom/netease/mpay/oversea/g6;

    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/v$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/ac;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v$c;->d:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/ac;->b(Lcom/netease/mpay/oversea/g6;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1, v0}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 21
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->d:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    new-instance p1, Lcom/netease/mpay/oversea/ui/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/v$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v2, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/netease/mpay/oversea/ui/g;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 28
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_1

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->d:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    new-instance p1, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/v$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v4, Lcom/netease/mpay/oversea/ui/i;

    invoke-direct {v4, v2, v0}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    goto :goto_1

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->d:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/v$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v2, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

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
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/v$c;->f:Lcom/netease/mpay/oversea/ui/v;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/v;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ac;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/v$c;->a(Lcom/netease/mpay/oversea/ac;)V

    return-void
.end method
