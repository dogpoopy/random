.class public Lcom/netease/mpay/oversea/ui/o;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/o$i;,
        Lcom/netease/mpay/oversea/ui/o$h;,
        Lcom/netease/mpay/oversea/ui/o$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h5<",
        "Lcom/netease/mpay/oversea/s4;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/netease/mpay/oversea/g6;

.field protected b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field protected c:Lcom/netease/mpay/oversea/y5;

.field protected d:Lcom/netease/mpay/oversea/ma;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Lcom/netease/mpay/oversea/thirdapi/c;

.field protected h:Z

.field protected i:Z

.field protected j:Landroid/app/Activity;

.field protected k:Lcom/netease/mpay/oversea/ui/i;

.field protected l:Lcom/netease/mpay/oversea/u5;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Lcom/netease/mpay/oversea/v8;

.field protected q:Lcom/netease/mpay/oversea/b1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->i:Z

    .line 17
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 18
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->q:Lcom/netease/mpay/oversea/b1;

    .line 19
    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    .line 20
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 21
    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    .line 24
    new-instance p5, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-direct {p5, v0, p2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    .line 25
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/v8;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->p:Lcom/netease/mpay/oversea/v8;

    if-eqz p4, :cond_0

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object p2, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i9;->c(Lcom/netease/mpay/oversea/s9;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/i9;->f(Lcom/netease/mpay/oversea/g6;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/o;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/o;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 5

    .line 36
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->K:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 39
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 40
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/l;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/netease/mpay/oversea/c1;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/c1;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/o$f;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/o$f;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/c1;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/c1;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$e;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/o$e;-><init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/s9;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/c1;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/c1;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/c1;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/v8;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/z2;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/z2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/z2;->b(Lcom/netease/mpay/oversea/h5;)Lcom/netease/mpay/oversea/v8;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/e7;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o$c;-><init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 1

    const-string v0, "dealApiLoginFailed"

    .line 12
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object p1

    .line 14
    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/o$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/netease/mpay/oversea/ui/o$d;-><init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->g()Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->h()Lcom/netease/mpay/oversea/ma;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    const-string v1, ", this:"

    const-string v2, "Event:LoginTask state:"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :cond_2
    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 26
    invoke-virtual {v0, v3, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v9, 0x0

    move-object v5, p2

    .line 27
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    .line 31
    iput-object p1, v0, Lcom/netease/mpay/oversea/u5;->l:Ljava/lang/String;

    .line 32
    iput-object p2, v0, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/netease/mpay/oversea/f6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 35
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto/16 :goto_7

    .line 39
    :cond_4
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->i:Z

    if-eqz v0, :cond_8

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 43
    iget-object v4, v0, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    if-eqz v0, :cond_6

    .line 44
    iget-object v0, v0, Lcom/netease/mpay/oversea/t8;->d:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto :goto_3

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_8

    .line 47
    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 48
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    :goto_3
    move-object v8, v0

    move-object v7, v4

    goto :goto_4

    :cond_8
    move-object v7, v3

    move-object v8, v7

    .line 52
    :goto_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->g()Lcom/netease/mpay/oversea/g6;

    move-result-object v5

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :cond_9
    :goto_5
    move-object v9, v3

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v11, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 56
    invoke-virtual {v0, v3, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v10, 0x1

    move-object v6, p2

    .line 57
    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    .line 62
    iput-object p1, v0, Lcom/netease/mpay/oversea/u5;->l:Ljava/lang/String;

    .line 63
    iput-object p2, v0, Lcom/netease/mpay/oversea/u5;->k:Ljava/lang/String;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/netease/mpay/oversea/f6;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->l:Lcom/netease/mpay/oversea/u5;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 66
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa;->b()V

    :goto_7
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/e7;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/j;)Z
    .locals 4

    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guide_msg:I

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 70
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 72
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-direct {v1, v3, p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    .line 73
    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 77
    instance-of p1, p2, Lcom/netease/mpay/oversea/o;

    if-eqz p1, :cond_0

    .line 78
    check-cast p2, Lcom/netease/mpay/oversea/o;

    iget-object p1, p2, Lcom/netease/mpay/oversea/o;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/o;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 5
    check-cast p1, Lcom/netease/mpay/oversea/s4;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    const/16 v2, 0x2716

    const/16 v3, 0x271a

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_2

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/j;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/e;->c:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v3, p1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 12
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_3

    .line 13
    new-instance p1, Lcom/netease/mpay/oversea/j;

    const-string v0, ""

    invoke-direct {p1, v3, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p1, Lcom/netease/mpay/oversea/thirdapi/e;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    if-ne v0, v1, :cond_4

    const/16 v2, 0x271a

    .line 19
    :cond_4
    new-instance v0, Lcom/netease/mpay/oversea/j6$b;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/j6$b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 20
    invoke-static {v1, v3, v5}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/j6$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/j6$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    .line 21
    iget-object v5, p1, Lcom/netease/mpay/oversea/thirdapi/e;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/netease/mpay/oversea/j6$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/j6$b;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j6$b;->a()Lcom/netease/mpay/oversea/j6;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/netease/mpay/oversea/j;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j6;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j6;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/oversea/j;->c:Ljava/lang/String;

    .line 25
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    if-eqz v0, :cond_7

    .line 26
    new-instance v0, Lcom/netease/mpay/oversea/j6$b;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netease/mpay/oversea/j6$b;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_retry:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    aput-object v6, v4, v7

    .line 27
    invoke-static {v2, v5, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/j6$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/j6$b;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/e;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/netease/mpay/oversea/j6$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/j6$b;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j6$b;->a()Lcom/netease/mpay/oversea/j6;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j6;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j6;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/mpay/oversea/j;->c:Ljava/lang/String;

    :cond_7
    return-object v1

    .line 32
    :cond_8
    :goto_2
    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/e;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    if-ne p1, v0, :cond_9

    .line 33
    new-instance p1, Lcom/netease/mpay/oversea/j;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 35
    :cond_9
    new-instance p1, Lcom/netease/mpay/oversea/j;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_others:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method protected c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/c;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v1, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_vk_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/g6;->m:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_wechat_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/g6;->B:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_tiktok_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_twitter_not_found:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_4

    const-string v0, ""

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    new-instance v2, Lcom/netease/mpay/oversea/j;

    const/16 v3, 0x2716

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3, v2}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    return-void

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 20
    sget-object v0, Lcom/netease/mpay/oversea/s9;->e:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/netease/mpay/oversea/s9;->f:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_7

    .line 23
    invoke-static {v1}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 32
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/o;->f:Z

    new-instance v3, Lcom/netease/mpay/oversea/ui/o$g;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/o$g;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/l;)V

    goto :goto_2

    .line 33
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/o$b;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method protected d()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "dealApiLoginCancel"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/e$a;->b:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/thirdapi/e;)Lcom/netease/mpay/oversea/j;

    move-result-object v0

    const/16 v1, 0x2713

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/oversea/ui/o;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->e()V

    return-void
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/netease/mpay/oversea/ma;
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->h:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5;->e()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 8
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/ui/o;->h:Z

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/ui/o$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/ui/o$i;-><init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/ui/o$a;)V

    return-object v0

    .line 11
    :cond_5
    new-instance v0, Lcom/netease/mpay/oversea/ui/o$h;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/o$h;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e7;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->e()V

    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->e()V

    :cond_1
    return v1
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e7;->b()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e7;->c()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e7;->d()V

    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->i:Z

    .line 2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->h()Lcom/netease/mpay/oversea/ma;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->f:Z

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/o;->g()Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->i:Z

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->d()V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget-object v3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-eq v3, v0, :cond_3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v3

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_7

    sget-object v4, Lcom/netease/mpay/oversea/s9;->t:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_7

    sget-object v4, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    if-ne v3, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v5, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v4, 0x1

    .line 20
    :goto_2
    invoke-static {v3}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 21
    new-instance v3, Lcom/netease/mpay/oversea/pa;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/netease/mpay/oversea/q8;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v3

    if-eqz v4, :cond_8

    .line 23
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/netease/mpay/oversea/t8;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    .line 25
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/o;->i:Z

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    .line 27
    new-instance v3, Lcom/netease/mpay/oversea/ui/k;

    invoke-direct {v3}, Lcom/netease/mpay/oversea/ui/k;-><init>()V

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    new-instance v8, Lcom/netease/mpay/oversea/ui/o$a;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/ui/o$a;-><init>(Lcom/netease/mpay/oversea/ui/o;)V

    invoke-virtual/range {v3 .. v8}, Lcom/netease/mpay/oversea/ui/k;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ui/k$g;)V

    goto :goto_4

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ma;->a()V

    :goto_4
    return v2
.end method
