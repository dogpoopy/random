.class public Lcom/netease/mpay/oversea/o4;
.super Ljava/lang/Object;
.source "InitImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V
    .locals 9

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    new-instance v7, Lcom/netease/mpay/oversea/h3;

    new-instance v8, Lcom/netease/mpay/oversea/o4$b;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/o4$b;-><init>(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    invoke-direct {v7, p1, v0, v8}, Lcom/netease/mpay/oversea/h3;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 67
    invoke-virtual {v7}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->e()Lcom/netease/mpay/oversea/e9;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e9;->b()Lcom/netease/mpay/oversea/f9;

    move-result-object v1

    .line 76
    iget-boolean v2, v1, Lcom/netease/mpay/oversea/f9;->d:Z

    if-eqz v2, :cond_0

    const-string p1, "DataRestore: not first open, ignore."

    .line 77
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 78
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 81
    iput-boolean v2, v1, Lcom/netease/mpay/oversea/f9;->d:Z

    .line 82
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/e9;->a(Lcom/netease/mpay/oversea/f9;)V

    .line 83
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->l0()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DataRestore: need_device_recovery false, ignore."

    .line 84
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 85
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/l1;

    new-instance v1, Lcom/netease/mpay/oversea/o4$c;

    invoke-direct {v1, p0, p3}, Lcom/netease/mpay/oversea/o4$c;-><init>(Lcom/netease/mpay/oversea/o4;Ljava/lang/Runnable;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/netease/mpay/oversea/l1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 106
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/o4;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/o4;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/netease/mpay/oversea/g9$a;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lcom/netease/mpay/oversea/o4;->b(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/m0;->a()Lcom/netease/mpay/oversea/m0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/m0;->b()V

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const-string p3, "Doing Nothing!!!"

    .line 8
    invoke-interface {p2, p1, p3}, Lcom/netease/mpay/oversea/g9$a;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/n4;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/o4$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/o4$a;-><init>(Lcom/netease/mpay/oversea/o4;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/g9$a;)V

    const/4 p2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/n4;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/oversea/ea;)V

    .line 48
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g9$a;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    const-string v1, "Activity is null or Activity is finishing"

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/netease/mpay/oversea/g9$a;->onFailure(ILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/o4;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/g9$a;Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AppCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 68
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->a()Lcom/netease/mpay/oversea/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b0;->b()Lcom/netease/mpay/oversea/c0;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/oversea/c0;->c:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->j()Lcom/netease/mpay/oversea/c2;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/c2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/netease/mpay/oversea/c0;->b:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/e0;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->j()Lcom/netease/mpay/oversea/c2;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/e0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/c2;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
