.class Lcom/netease/mpay/oversea/ui/u$a;
.super Ljava/lang/Object;
.source "TokenLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/q5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/u;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/u;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 42
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 44
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 48
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 49
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 3

    .line 1
    iget-object p3, p2, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v0, :cond_0

    const-string p3, "onSuccess"

    .line 2
    invoke-static {p3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v0, p2, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 5
    invoke-static {p3, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/u$a$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/u$a$a;-><init>(Lcom/netease/mpay/oversea/ui/u$a;Lcom/netease/mpay/oversea/e6;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    invoke-static {p3, v0, p1, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p3, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    .line 29
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/y5;

    .line 31
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {p3}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 32
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {p3}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object p3, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 34
    :cond_1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 35
    iget v0, p2, Lcom/netease/mpay/oversea/e6;->p:I

    if-nez v0, :cond_2

    iget v0, p2, Lcom/netease/mpay/oversea/e6;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/r4;->a(Lcom/netease/mpay/oversea/y5;)V

    .line 38
    :cond_2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v1, p3, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 40
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    if-eq v2, v3, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_unknown_type:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {v3}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(ILjava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 21
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u;)Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v2, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    if-eq v2, v3, :cond_5

    .line 28
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_unknown_type:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/i9;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 35
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$m;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/i$m;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/u$a;->a:Lcom/netease/mpay/oversea/ui/u;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 36
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 37
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_2
    return-void
.end method
