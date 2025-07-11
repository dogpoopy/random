.class public Lcom/netease/mpay/oversea/e5;
.super Ljava/lang/Object;
.source "LinkAccountService.java"


# static fields
.field private static f:Lcom/netease/mpay/oversea/e5;


# instance fields
.field private a:Lcom/netease/mpay/oversea/f5;

.field private b:Lcom/netease/mpay/oversea/f8;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->d:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->e:Z

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/g5;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/g5;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e5;)Lcom/netease/mpay/oversea/f8;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/q0<",
            "Lcom/netease/mpay/oversea/f8;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/f5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    new-instance v1, Lcom/netease/mpay/oversea/e5$f;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/oversea/e5$f;-><init>(Lcom/netease/mpay/oversea/e5;Lcom/netease/mpay/oversea/q0;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/f5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    .line 67
    sget p1, Lcom/netease/mpay/oversea/ErrorCode;->ERR_NOT_SUPPORT_LINK:I

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/q0;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/e5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/e5;Lcom/netease/mpay/oversea/f8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/e5;->a(Lcom/netease/mpay/oversea/f8;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/f8;)V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/f8;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/f8;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    iget-object p1, p1, Lcom/netease/mpay/oversea/f8;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/mpay/oversea/f8;->c:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    :goto_0
    return-void
.end method

.method public static b()Lcom/netease/mpay/oversea/e5;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/e5;->f:Lcom/netease/mpay/oversea/e5;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/e5;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/e5;->f:Lcom/netease/mpay/oversea/e5;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/e5;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/e5;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/e5;->f:Lcom/netease/mpay/oversea/e5;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/e5;->f:Lcom/netease/mpay/oversea/e5;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/f8;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->b:Lcom/netease/mpay/oversea/f8;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "LinkAccount# init"

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    sget-object v1, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 26
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pgs_trust_device_warning:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 27
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pgs_trust_device_tips:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 28
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pgs_trust_refuse:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 29
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pgs_trust_confirm:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 30
    new-instance v5, Lcom/netease/mpay/oversea/e5$d;

    invoke-direct {v5, p0, p1, p2}, Lcom/netease/mpay/oversea/e5$d;-><init>(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v7, Lcom/netease/mpay/oversea/e5$e;

    invoke-direct {v7, p0, p3}, Lcom/netease/mpay/oversea/e5$e;-><init>(Lcom/netease/mpay/oversea/e5;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "trust_tip"

    const-string p3, "confirm"

    const-string v0, "cancel"

    .line 46
    invoke-virtual {p1, p2, p3, v0}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/s9;",
            "Lcom/netease/mpay/oversea/y5;",
            "Lcom/netease/mpay/oversea/q0<",
            "Lcom/netease/mpay/oversea/f8;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/netease/mpay/oversea/s9;->n:Lcom/netease/mpay/oversea/s9;

    if-eq v0, p2, :cond_2

    if-eqz p3, :cond_0

    iget p2, p3, Lcom/netease/mpay/oversea/y5;->n:I

    const/16 v0, 0x66

    if-eq p2, v0, :cond_0

    const/16 v0, 0x12d

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/y5;->g()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    new-instance p2, Lcom/netease/mpay/oversea/e5$b;

    invoke-direct {p2, p0, p1, p4}, Lcom/netease/mpay/oversea/e5$b;-><init>(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    new-instance p3, Lcom/netease/mpay/oversea/e5$c;

    invoke-direct {p3, p0, p4}, Lcom/netease/mpay/oversea/e5$c;-><init>(Lcom/netease/mpay/oversea/e5;Lcom/netease/mpay/oversea/q0;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/e5;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/netease/mpay/oversea/e5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    :goto_0
    return-void

    .line 25
    :cond_2
    :goto_1
    invoke-interface {p4}, Lcom/netease/mpay/oversea/q0;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e5;->e:Z

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/q0<",
            "Lcom/netease/mpay/oversea/f8;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/f5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LinkAccount# queryAccount start"

    .line 10
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    new-instance v1, Lcom/netease/mpay/oversea/e5$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/e5$a;-><init>(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/f5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    goto :goto_0

    :cond_0
    const-string p1, "LinkAccount# PGS disable restore account"

    .line 58
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e5;->b(Z)V

    .line 60
    invoke-interface {p2}, Lcom/netease/mpay/oversea/q0;->a()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/f5;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e5;->d:Z

    return-void
.end method

.method public c()Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/e5;->a:Lcom/netease/mpay/oversea/f5;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/f5;->b(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e5;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/e5;->c:Z

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/e5;->b(Z)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkAccount# isCouldRestoreAccount :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/e5;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/e5;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
