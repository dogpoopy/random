.class public Lcom/netease/mpay/oversea/q8;
.super Lcom/netease/mpay/oversea/ba;
.source "QuickLogin.java"


# static fields
.field private static g:Lcom/netease/mpay/oversea/q8;


# instance fields
.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/t8;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.netease.mpay.history"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ba;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/q8;->f:Z

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/q8;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/q8;
    .locals 2

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/q8;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/q8;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/q8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v1, v1, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/q8;->f()V

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/q8;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/q8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/q8;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    sget-object p0, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/q8;->d()V

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object p0, Lcom/netease/mpay/oversea/q8;->g:Lcom/netease/mpay/oversea/q8;

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/t8;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/q8;->d(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/y5;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 21
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/q8;->d(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t8;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/t8;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v1, p1, Lcom/netease/mpay/oversea/y5;->o:Z

    if-eqz v1, :cond_2

    .line 31
    invoke-static {p1}, Lcom/netease/mpay/oversea/t8;->a(Lcom/netease/mpay/oversea/y5;)Lcom/netease/mpay/oversea/t8;

    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t8;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->b(I)V
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/t8;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t8;

    .line 50
    iget-object v1, v0, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/oversea/ba;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 17
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/q8;->d(Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ba;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/t8;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/t8;

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t8;->b()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/netease/mpay/oversea/t8;->k:Z

    if-nez v3, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public declared-synchronized b(Lcom/netease/mpay/oversea/y5;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "QuickLogin[delete]:enter"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickLogin[delete]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/q8;->d(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t8;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/q8;->a(Ljava/lang/String;)Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/i9;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/t8;

    if-eqz v2, :cond_1

    .line 4
    iget-boolean v2, v2, Lcom/netease/mpay/oversea/t8;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/q8;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ba;->getAll()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-super {p0}, Lcom/netease/mpay/oversea/ba;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/netease/mpay/oversea/t8;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/netease/mpay/oversea/t8;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->b(I)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q8;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t8;
    .locals 1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/t8;

    return-object p1
.end method

.method public declared-synchronized e()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/t8;

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v2, v2, Lcom/netease/mpay/oversea/t8;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/q8;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/q8;->f:Z

    return-void
.end method
