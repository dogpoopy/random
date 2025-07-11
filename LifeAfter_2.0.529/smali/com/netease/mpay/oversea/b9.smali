.class public Lcom/netease/mpay/oversea/b9;
.super Ljava/lang/Object;
.source "RestoreProxy.java"


# static fields
.field private static volatile e:Lcom/netease/mpay/oversea/b9;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/pa;

.field private final d:Lcom/netease/mpay/oversea/a3;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/a3;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/a3;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b9;)Lcom/netease/mpay/oversea/a3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    return-object p0
.end method

.method public static a()Lcom/netease/mpay/oversea/b9;
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/b9;->e:Lcom/netease/mpay/oversea/b9;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/netease/mpay/oversea/b9;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/b9;->e:Lcom/netease/mpay/oversea/b9;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/b9;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/b9;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/b9;->e:Lcom/netease/mpay/oversea/b9;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/b9;->e:Lcom/netease/mpay/oversea/b9;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/b9;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b9;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/b9;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b9;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 10
    iput-object p1, p0, Lcom/netease/mpay/oversea/b9;->a:Landroid/app/Activity;

    .line 11
    iput-object p2, p0, Lcom/netease/mpay/oversea/b9;->b:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b9;->c:Lcom/netease/mpay/oversea/pa;

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/b9;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/netease/mpay/oversea/b9;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/y1;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/y1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y1;->b()Lcom/netease/mpay/oversea/z1;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->B()Lcom/netease/mpay/oversea/a3$a;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/a3;->a(Lcom/netease/mpay/oversea/z1;Lcom/netease/mpay/oversea/a3$a;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k1;)V
    .locals 4

    const-string v0, "RestoreProxy: recoverLoginData"

    .line 17
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/k1;->a:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/b9;->c:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v1

    iget v2, p1, Lcom/netease/mpay/oversea/k1;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/n5;->b(Ljava/lang/String;I)V

    .line 24
    iget-object p1, p1, Lcom/netease/mpay/oversea/k1;->c:Lcom/netease/mpay/oversea/a3;

    if-nez p1, :cond_1

    return-void

    .line 28
    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object p1, p1, Lcom/netease/mpay/oversea/a3;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b3;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t8;

    if-eqz v1, :cond_4

    .line 35
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    iget v3, v1, Lcom/netease/mpay/oversea/t8;->b:I

    invoke-static {v3}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 38
    :cond_3
    iget v2, v1, Lcom/netease/mpay/oversea/t8;->b:I

    sget-object v3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 39
    iget-object v2, v1, Lcom/netease/mpay/oversea/t8;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreProxy: recoverLoginData remove empty guest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 42
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreProxy: recoverLoginData remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/b9;->c:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/n5;->a(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public b()V
    .locals 6

    const-string v0, "RestoreProxy: Enter uploadLoginData"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RestoreProxy: uploadLoginData, not enabled, ignore"

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/b9;->c:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t1;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->B()Lcom/netease/mpay/oversea/a3$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/a3;->a(Lcom/netease/mpay/oversea/a3$a;)V

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/b9;->c:Lcom/netease/mpay/oversea/pa;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->d()Lcom/netease/mpay/oversea/q8;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/q8;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/a3;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/b9;->d:Lcom/netease/mpay/oversea/a3;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/a3;->c(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "RestoreProxy: uploadLoginData, not changed, ignore"

    .line 18
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    new-instance v1, Lcom/netease/mpay/oversea/o1;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b9;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/b9;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/oversea/a3;->b(Ljava/util/List;)Lcom/netease/mpay/oversea/a3;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oversea/b9$a;

    invoke-direct {v5, p0, v0}, Lcom/netease/mpay/oversea/b9$a;-><init>(Lcom/netease/mpay/oversea/b9;Ljava/util/List;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/o1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/a3;Lcom/netease/mpay/oversea/ea;)V

    .line 40
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "RestoreProxy: uploadLoginData, encKey invalid, ignore"

    .line 41
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method
