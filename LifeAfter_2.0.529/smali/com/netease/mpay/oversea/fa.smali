.class public abstract Lcom/netease/mpay/oversea/fa;
.super Ljava/lang/Object;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/fa$c;,
        Lcom/netease/mpay/oversea/fa$d;,
        Lcom/netease/mpay/oversea/fa$f;,
        Lcom/netease/mpay/oversea/fa$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/netease/mpay/oversea/ea;

.field protected f:Lcom/netease/mpay/oversea/i8;

.field protected g:Z

.field protected h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/netease/mpay/oversea/fa$f;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ea<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/fa;->e:Lcom/netease/mpay/oversea/ea;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/fa;->g:Z

    .line 7
    iput-object p3, p0, Lcom/netease/mpay/oversea/fa;->i:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/fa;->h:Z

    .line 9
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/fa;->c()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;)V
    .locals 1

    const-string v0, "reset: logout:device"

    .line 62
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r1;->d()V

    .line 64
    iget-object p1, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->j()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/fa$e;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/netease/mpay/oversea/fa$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/fa;->b(Lcom/netease/mpay/oversea/fa$f;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/fa;->c(Lcom/netease/mpay/oversea/fa$f;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/fa$f;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/fa$f;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reset: logout:LOGOUT_USER"

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->j()V

    :cond_0
    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/fa$f;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/netease/mpay/oversea/fa$f;->a:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n5;->a(Lcom/netease/mpay/oversea/y5;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/fa$f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/fa$f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/p5;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->o()Lcom/netease/mpay/oversea/p5;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/p5;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    iget-object v2, v2, Lcom/netease/mpay/oversea/fa$f;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/netease/mpay/oversea/a0;

    const-string v4, "iso_code"

    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/fa$f;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/mpay/oversea/a0;

    const-string v3, "birthday"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    return-object p0
.end method

.method protected a(Lcom/netease/mpay/oversea/j;)Lcom/netease/mpay/oversea/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/fa;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->b(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/fa$f;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/m1;Lcom/netease/mpay/oversea/ea;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/m1<",
            "TData;>;",
            "Lcom/netease/mpay/oversea/ea<",
            "TData;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/m1;->a:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/netease/mpay/oversea/m1;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/ea;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/oversea/m1;->d:Lcom/netease/mpay/oversea/j;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/fa;->h:Z

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/netease/mpay/oversea/z4;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->E:Lcom/netease/mpay/oversea/s9;

    new-instance v5, Lcom/netease/mpay/oversea/fa$a;

    invoke-direct {v5, p0, p2, p1}, Lcom/netease/mpay/oversea/fa$a;-><init>(Lcom/netease/mpay/oversea/fa;Lcom/netease/mpay/oversea/ea;Lcom/netease/mpay/oversea/m1;)V

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/fa$f;->f:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    invoke-virtual {v3, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 26
    invoke-static {v1, v2, p1}, Lcom/netease/mpay/oversea/m;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 43
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->c(I)V

    goto :goto_2

    .line 45
    :cond_4
    iget v0, p1, Lcom/netease/mpay/oversea/m1;->c:I

    iget-object v1, p1, Lcom/netease/mpay/oversea/m1;->d:Lcom/netease/mpay/oversea/j;

    invoke-virtual {p0, v0, v1, p2}, Lcom/netease/mpay/oversea/fa;->a(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 46
    iget v0, p1, Lcom/netease/mpay/oversea/m1;->c:I

    iget-object p1, p1, Lcom/netease/mpay/oversea/m1;->d:Lcom/netease/mpay/oversea/j;

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/ea;->a(ILcom/netease/mpay/oversea/j;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected a(ILcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/j;",
            "Lcom/netease/mpay/oversea/ea<",
            "TData;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected b(I)Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 12
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/fa;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/fa$d;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/fa$d;-><init>(Lcom/netease/mpay/oversea/fa;Lcom/netease/mpay/oversea/fa$a;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/s;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/fa$c;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/fa$c;-><init>(Lcom/netease/mpay/oversea/fa;Lcom/netease/mpay/oversea/fa$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/s;->b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;

    :goto_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 6
    const-class v0, Lcom/netease/mpay/oversea/da;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x4

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_no_perr_certificate:I

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_no_perr_certificate_date_error:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->j:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method protected abstract d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/fa$f;",
            ")TData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized e()Lcom/netease/mpay/oversea/m1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/m1<",
            "TData;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/fa;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/fa;->d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/m1;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/m1;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/m1;->a(Ljava/lang/Object;)Lcom/netease/mpay/oversea/m1;

    move-result-object v0
    :try_end_1
    .catch Lcom/netease/mpay/oversea/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g;->a()Lcom/netease/mpay/oversea/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/j;)Lcom/netease/mpay/oversea/j;

    move-result-object v1

    .line 7
    instance-of v2, v0, Lcom/netease/mpay/oversea/w5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v5, v0, Lcom/netease/mpay/oversea/g;->a:I

    .line 8
    invoke-static {v5}, Lcom/netease/mpay/oversea/w5;->h(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 9
    iget v2, v0, Lcom/netease/mpay/oversea/g;->a:I

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/w5;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_1
    iget-boolean v6, p0, Lcom/netease/mpay/oversea/fa;->a:Z

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 12
    :goto_2
    iget-boolean v7, p0, Lcom/netease/mpay/oversea/fa;->b:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v5, :cond_4

    .line 13
    iget-object v8, v1, Lcom/netease/mpay/oversea/j;->g:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    .line 15
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    sget-object v3, Lcom/netease/mpay/oversea/fa$e;->d:Lcom/netease/mpay/oversea/fa$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/fa$e;)V

    goto :goto_6

    :cond_5
    if-nez v6, :cond_9

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 19
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    sget-object v3, Lcom/netease/mpay/oversea/fa$e;->a:Lcom/netease/mpay/oversea/fa$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/fa$e;)V

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    .line 21
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    sget-object v3, Lcom/netease/mpay/oversea/fa$e;->c:Lcom/netease/mpay/oversea/fa$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/fa$f;Lcom/netease/mpay/oversea/fa$e;)V

    goto :goto_6

    .line 22
    :cond_8
    iget v2, v0, Lcom/netease/mpay/oversea/g;->a:I

    invoke-static {v2}, Lcom/netease/mpay/oversea/w5;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    new-instance v2, Lcom/netease/mpay/oversea/pa;

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 25
    iput-boolean v4, v2, Lcom/netease/mpay/oversea/y5;->j:Z

    .line 26
    new-instance v3, Lcom/netease/mpay/oversea/pa;

    iget-object v4, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v2, 0x2711

    .line 27
    iput v2, v1, Lcom/netease/mpay/oversea/j;->a:I

    .line 39
    :cond_a
    :goto_6
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/j;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/oversea/bc$a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g9;->b(Landroid/content/Context;)V

    .line 44
    :cond_b
    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->k:Lcom/netease/mpay/oversea/fa$f;

    invoke-virtual {p0, v1, v2}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/fa$f;)V

    .line 45
    new-instance v2, Lcom/netease/mpay/oversea/m1;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/m1;-><init>()V

    iget v0, v0, Lcom/netease/mpay/oversea/g;->a:I

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/oversea/m1;->a(ILcom/netease/mpay/oversea/j;)Lcom/netease/mpay/oversea/m1;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/fa;->b:Z

    return-void
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/fa;->a:Z

    return-void
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/fa;->g:Z

    return-void
.end method

.method protected i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/fa;->f:Lcom/netease/mpay/oversea/i8;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/i8;->a()V

    :cond_0
    return-void
.end method
