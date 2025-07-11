.class public Lcom/netease/mpay/oversea/n5;
.super Lcom/netease/mpay/oversea/a6;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/n5$b;,
        Lcom/netease/mpay/oversea/n5$a;
    }
.end annotation


# static fields
.field private static m:Lcom/netease/mpay/oversea/n5;


# instance fields
.field private d:Lcom/netease/mpay/oversea/q8;

.field private e:Lcom/netease/mpay/oversea/y5;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/mpay/oversea/k5;

.field private h:Lcom/netease/mpay/oversea/g6;

.field private i:Lcom/netease/mpay/oversea/j5;

.field private j:Lcom/netease/mpay/oversea/n5$a;

.field private k:Lcom/netease/mpay/oversea/e9;

.field private l:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/a6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/n5;->l:Z

    .line 12
    new-instance v0, Lcom/netease/mpay/oversea/j5;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/j5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/n5$a;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/n5$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->j:Lcom/netease/mpay/oversea/n5$a;

    .line 14
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/e9;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/e9;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->k:Lcom/netease/mpay/oversea/e9;

    .line 15
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/q8;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/q8;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->d:Lcom/netease/mpay/oversea/q8;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/n5;
    .locals 2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/n5;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/n5;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/n5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, v1, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/n5;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/n5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p1, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    invoke-static {p0}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/netease/mpay/oversea/n5;->l:Z

    .line 12
    sget-object p0, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/y5;
    .locals 1

    .line 24
    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->b(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/y;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-static {p1}, Lcom/netease/mpay/oversea/y5;->a([B)Lcom/netease/mpay/oversea/y5;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Lcom/netease/mpay/oversea/n5;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n5;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/netease/mpay/oversea/y5;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    iget v1, v0, Lcom/netease/mpay/oversea/k5;->b:I

    iget v2, p1, Lcom/netease/mpay/oversea/y5;->n:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/netease/mpay/oversea/k5;->c:I

    iget v1, p1, Lcom/netease/mpay/oversea/y5;->m:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x66

    const/4 v1, 0x2

    .line 18
    iget-object v2, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v2, :cond_2

    .line 19
    iget v0, v2, Lcom/netease/mpay/oversea/k5;->b:I

    .line 20
    iget v1, v2, Lcom/netease/mpay/oversea/k5;->c:I

    .line 22
    :cond_2
    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 23
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    .line 24
    iget v0, p1, Lcom/netease/mpay/oversea/y5;->n:I

    .line 25
    iget v1, p1, Lcom/netease/mpay/oversea/y5;->m:I

    :cond_3
    move v6, v0

    move v7, v1

    .line 27
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 29
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v5

    .line 30
    new-instance p1, Lcom/netease/mpay/oversea/k5;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/k5;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/j5;->a(Lcom/netease/mpay/oversea/k5;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/netease/mpay/oversea/k5;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x66

    const/4 v5, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/k5;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/j5;->a(Lcom/netease/mpay/oversea/k5;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/netease/mpay/oversea/y5;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/h9;->h:Z

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->k:Lcom/netease/mpay/oversea/e9;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e9;->b()Lcom/netease/mpay/oversea/f9;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/f9;->a:Z

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->f()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/f9;->a(Z)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->k:Lcom/netease/mpay/oversea/e9;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/e9;->a(Lcom/netease/mpay/oversea/f9;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/f9;->a:Z

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/h9;->b(Z)V

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/f9;->c()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/h9;->h:Z

    :cond_1
    return-void
.end method

.method private declared-synchronized g()V
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    const-string v2, "version"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "local data is null"

    .line 4
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/n5;->l:Z

    if-eqz v1, :cond_1

    const-string v1, "isSdcardReady"

    .line 6
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->j:Lcom/netease/mpay/oversea/n5$a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5$a;->d()Lcom/netease/mpay/oversea/f3;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    iget v2, v1, Lcom/netease/mpay/oversea/f3;->e:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    .line 9
    new-instance v2, Lcom/netease/mpay/oversea/y5$b;

    iget-object v5, v1, Lcom/netease/mpay/oversea/f3;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/netease/mpay/oversea/f3;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/netease/mpay/oversea/f3;->f:Lcom/netease/mpay/oversea/g6;

    .line 10
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    const-string v3, ""

    .line 11
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    iget v3, v1, Lcom/netease/mpay/oversea/f3;->e:I

    .line 12
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/y5$b;->c(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    const-string v3, ""

    .line 13
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    iget v3, v1, Lcom/netease/mpay/oversea/f3;->d:I

    .line 14
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/y5$b;->a(I)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 16
    iget-boolean v1, v1, Lcom/netease/mpay/oversea/f3;->g:Z

    iput-boolean v1, v2, Lcom/netease/mpay/oversea/y5;->k:Z

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->h()V

    goto :goto_0

    :cond_1
    const-string v1, "start to load inner data"

    .line 21
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->h()V

    .line 24
    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v1, :cond_3

    const-string v1, "create loginInfo from local account"

    .line 25
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/netease/mpay/oversea/y5$b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    iget-object v6, v2, Lcom/netease/mpay/oversea/k5;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 27
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    const-string v2, ""

    .line 28
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v1

    const-string v2, ""

    .line 29
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    goto :goto_0

    :cond_2
    const-string v2, "load local data"

    .line 34
    invoke-static {v2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/n5;->a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/y5;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 37
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->h()V

    .line 40
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/n5;->c(Lcom/netease/mpay/oversea/y5;)V

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v0, :cond_5

    const-string v0, "create loginInfo from local account[final]"

    .line 44
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/netease/mpay/oversea/y5$b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    iget-object v5, v1, Lcom/netease/mpay/oversea/k5;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 46
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netease/mpay/oversea/y5$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    const-string v1, ""

    .line 47
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    const-string v1, ""

    .line 48
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/y5$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/y5$b;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5$b;->a()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_7

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v0, "loginInfo is null"

    .line 58
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======read=======\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lastLoginType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v0, "unknown"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j5;->b()Lcom/netease/mpay/oversea/k5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/netease/mpay/oversea/k5;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/k5;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    iget v0, v0, Lcom/netease/mpay/oversea/k5;->d:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_4

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/mpay/oversea/y5;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data"

    .line 18
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->j:Lcom/netease/mpay/oversea/n5$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n5$a;->f()V

    .line 22
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/n5;->c(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->d:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q8;->b(Lcom/netease/mpay/oversea/y5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/t8;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->d:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q8;->a(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized b(Lcom/netease/mpay/oversea/y5;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/y5;->n:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->a(I)V

    .line 24
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 26
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n5;->e(Lcom/netease/mpay/oversea/y5;)V

    .line 27
    sget-object v0, Lcom/netease/mpay/oversea/n5;->m:Lcom/netease/mpay/oversea/n5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->a()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/y;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    const/4 v2, 0x1

    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->j:Lcom/netease/mpay/oversea/n5$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n5$a;->a(Lcom/netease/mpay/oversea/y5;)V

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n5;->c(Lcom/netease/mpay/oversea/y5;)V

    .line 34
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n5;->d(Lcom/netease/mpay/oversea/y5;)V

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "loginInfo is null"

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======write=======\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n5;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 7

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreLocalAccount: account = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastLoginType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j5;->b()Lcom/netease/mpay/oversea/k5;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    .line 12
    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/k5;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    const/16 v5, 0x66

    const/4 v6, 0x2

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/k5;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/j5;->a(Lcom/netease/mpay/oversea/k5;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/y5;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/y5;

    .line 16
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/n5;->e(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Lcom/netease/mpay/oversea/y5;
    .locals 3

    const-string v0, "get"

    const-string v1, "enter"

    .line 32
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h9;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-nez v0, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->g()V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "loginInfo is null"

    .line 38
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    return-object v0
.end method

.method public d()Lcom/netease/mpay/oversea/y5;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lcom/netease/mpay/oversea/y5;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->d:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q8;->a(Lcom/netease/mpay/oversea/y5;)V

    return-void
.end method

.method public f()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n5;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n5;->h:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method

.method public declared-synchronized i()Lcom/netease/mpay/oversea/y5;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "logout"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    sget-object v3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    iget-object v4, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    if-ne v3, v4, :cond_0

    .line 7
    iput-object v2, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/netease/mpay/oversea/y5;->k:Z

    .line 10
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/y5;->t:Z

    .line 11
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/netease/mpay/oversea/n5;->g:Lcom/netease/mpay/oversea/k5;

    if-eqz v3, :cond_1

    .line 14
    iput v1, v3, Lcom/netease/mpay/oversea/k5;->d:I

    const/16 v1, 0x66

    .line 15
    iput v1, v3, Lcom/netease/mpay/oversea/k5;->b:I

    const/4 v1, 0x2

    .line 16
    iput v1, v3, Lcom/netease/mpay/oversea/k5;->c:I

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->i:Lcom/netease/mpay/oversea/j5;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/j5;->a(Lcom/netease/mpay/oversea/k5;)V

    .line 19
    :cond_1
    iput-object v2, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data"

    .line 21
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->j:Lcom/netease/mpay/oversea/n5$a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n5$a;->f()V

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/y5;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "loginInfo is null"

    .line 27
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======logout=======\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 2

    const-string v0, "wipeLoginToken"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n5;->c()Lcom/netease/mpay/oversea/y5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/netease/mpay/oversea/y5;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/netease/mpay/oversea/n5;->e:Lcom/netease/mpay/oversea/y5;

    return-void
.end method
