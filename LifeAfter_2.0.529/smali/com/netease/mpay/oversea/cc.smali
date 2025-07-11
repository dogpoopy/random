.class public Lcom/netease/mpay/oversea/cc;
.super Lcom/netease/mpay/oversea/ui/a;
.source "VerifyEmailFlow.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/y5;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field l:Z

.field private m:Lcom/netease/mpay/oversea/wb;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->j:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->k:Z

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->l:Z

    .line 13
    invoke-static {p1}, Lcom/netease/mpay/oversea/b1;->c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/b1;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/d7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/s9;",
            "Lcom/netease/mpay/oversea/d7<",
            "Lcom/netease/mpay/oversea/User;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v1, Lcom/netease/mpay/oversea/cc$f;

    invoke-direct {v1, p2}, Lcom/netease/mpay/oversea/cc$f;-><init>(Lcom/netease/mpay/oversea/d7;)V

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    const-string p1, "setting"

    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/m;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/cc;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/wb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/y5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/v8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->d:Lcom/netease/mpay/oversea/v8;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->I()Lcom/netease/mpay/oversea/yb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/m3;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    new-instance v4, Lcom/netease/mpay/oversea/cc$a;

    iget-object v5, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v4, p0, v2, v0, v5}, Lcom/netease/mpay/oversea/cc$a;-><init>(Lcom/netease/mpay/oversea/cc;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netease/mpay/oversea/m3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/ea;)V

    .line 66
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->I()Lcom/netease/mpay/oversea/yb;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/b1;->a(Lcom/netease/mpay/oversea/yb;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 70
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "security_email"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    .line 71
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "restore_account"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 73
    invoke-static {v4, v5, v2}, Lcom/netease/mpay/oversea/v9;->e(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v4

    .line 74
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-boolean v3, p0, Lcom/netease/mpay/oversea/cc;->l:Z

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v3, v4, v2}, Lcom/netease/mpay/oversea/v9;->c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v3, v4, v2}, Lcom/netease/mpay/oversea/v9;->d(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/w2$b;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    :goto_0
    const-string v3, "setting"

    .line 80
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/wb;->a(Lcom/netease/mpay/oversea/yb;)V

    .line 85
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->a(Ljava/util/HashMap;)V

    .line 86
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/cc;->n()V

    :goto_1
    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method private l()V
    .locals 8

    .line 2
    new-instance v6, Lcom/netease/mpay/oversea/ui/p;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    .line 3
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    :goto_0
    move-object v3, v0

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/s9;->L:Lcom/netease/mpay/oversea/s9;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    :goto_1
    iget-object v5, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v5

    const-string v7, ""

    invoke-direct {v4, v0, v7, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    new-instance v5, Lcom/netease/mpay/oversea/ui/i;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/4 v7, 0x1

    invoke-direct {v5, v0, v7}, Lcom/netease/mpay/oversea/ui/i;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/p;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/i;)V

    .line 5
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/ui/o;->m()Z

    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2}, Lcom/netease/mpay/oversea/w2;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/b1;->d(Lcom/netease/mpay/oversea/w2;)Z

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 6
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->p()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    return-object p0
.end method

.method private p()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v1}, Lcom/netease/mpay/oversea/w2;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->d(Lcom/netease/mpay/oversea/w2;)Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    const-string v1, "home"

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/cc;->k:Z

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/w2;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->h()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->e(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s9;->f(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    const-string v2, "switch"

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    .line 28
    :goto_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v2, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/wb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w2;

    .line 33
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :cond_3
    return-void
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/cc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->l()V

    return-void
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/ui/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/cc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->m()V

    return-void
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/cc;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/cc;)Lcom/netease/mpay/oversea/b1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    return-object p0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/a1;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    const-string p1, "data"

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/wb;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/wb;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    const-string v1, "NAV_TAB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/wb;->b(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->m:Lcom/netease/mpay/oversea/wb;

    const-string v1, "NAV_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/wb;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/i$i;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 20
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    iget-object v3, v3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/netease/mpay/oversea/i9;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/ac;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    .line 24
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->n:Z

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->n:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/cc;->l:Z

    .line 29
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->Z()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    new-instance v2, Lcom/netease/mpay/oversea/j;

    const/16 v3, 0x3f0

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 34
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void

    .line 42
    :cond_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v3, v0

    :goto_4
    iput-object v3, p0, Lcom/netease/mpay/oversea/cc;->h:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 43
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    :cond_7
    iput-object v0, p0, Lcom/netease/mpay/oversea/cc;->i:Ljava/lang/String;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 44
    :goto_5
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/cc;->k:Z

    .line 45
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/cc;->o()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Z)V

    .line 61
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    .line 62
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/a1;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z
    .locals 2

    .line 46
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/a;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    .line 47
    instance-of p1, p2, Lcom/netease/mpay/oversea/x0;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    check-cast p2, Lcom/netease/mpay/oversea/x0;

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/x0;->b:Z

    invoke-direct {v1, p2}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 50
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p2

    .line 51
    invoke-virtual {p1, v1, p2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return v0

    .line 55
    :cond_0
    instance-of p1, p2, Lcom/netease/mpay/oversea/eb;

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    check-cast p2, Lcom/netease/mpay/oversea/eb;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/eb;->c()Lcom/netease/mpay/oversea/w2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/netease/mpay/oversea/s4;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/cc;->a(Lcom/netease/mpay/oversea/s4;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/a1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/a1;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/a1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$i;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/i9;->k0()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return v1
.end method

.method public e()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b1;->f()V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 11

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->n:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->m()V

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result v0

    const-string v1, "cancel"

    const-string v2, "confirm"

    const-string v3, "transfer_code_alert"

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_verify_upgrade_passport:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v8, Lcom/netease/mpay/oversea/cc$b;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/cc$b;-><init>(Lcom/netease/mpay/oversea/cc;)V

    new-instance v10, Lcom/netease/mpay/oversea/cc$c;

    invoke-direct {v10, p0}, Lcom/netease/mpay/oversea/cc$c;-><init>(Lcom/netease/mpay/oversea/cc;)V

    invoke-static/range {v5 .. v10}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v3, v2, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_verify_upgrade_passport:I

    invoke-static {v4, v5}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v6, Lcom/netease/mpay/oversea/cc$d;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/cc$d;-><init>(Lcom/netease/mpay/oversea/cc;)V

    invoke-static {v5, v4, v0, v6}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v3, v2, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->g:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1, v4}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 53
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    goto :goto_2

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->m()V

    goto :goto_2

    .line 61
    :cond_4
    sget-object v0, Lcom/netease/mpay/oversea/s9;->O:Lcom/netease/mpay/oversea/s9;

    iget-object v5, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v5, :cond_6

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    sget-object v5, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__security_verify_upgrade_passport:I

    invoke-static {v4, v5}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v6, Lcom/netease/mpay/oversea/cc$e;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/cc$e;-><init>(Lcom/netease/mpay/oversea/cc;)V

    invoke-static {v5, v4, v0, v6}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v3, v2, v1}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_2

    .line 78
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$i;

    invoke-direct {v1, v4}, Lcom/netease/mpay/oversea/ui/i$i;-><init>(Z)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 80
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    :goto_2
    return-void
.end method

.method protected o()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b1;->d(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__full_content:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/oversea/b1;->a(Landroid/view/View;Landroid/view/View;)V

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->n:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->o:Z

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->j0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/cc;->n:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v2}, Lcom/netease/mpay/oversea/w2;->b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/b1;->d(Lcom/netease/mpay/oversea/w2;)Z

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/cc;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    .line 27
    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/cc;->k()V

    return-void
.end method
