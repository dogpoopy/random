.class public Lcom/netease/mcount/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-class v0, Lcom/netease/mcount/a/d;

    monitor-enter v0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/netease/mcount/f/h;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, "logs can only be uploaded in wifi."

    invoke-static {p1, p2, p0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p3

    invoke-static {}, Lcom/netease/mcount/f/h;->b()J

    move-result-wide v1

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v3

    iget-wide v3, v3, Lcom/netease/mcount/a/b;->g:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lcom/netease/mcount/e/a/b;->c(J)V

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v1

    iget v1, v1, Lcom/netease/mcount/a/b;->f:I

    int-to-long v1, v1

    invoke-virtual {p3, v1, v2}, Lcom/netease/mcount/e/a/b;->a(J)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v2

    iget v2, v2, Lcom/netease/mcount/a/b;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    add-int v4, v3, v2

    :try_start_2
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p3, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lcom/netease/mcount/d/b;

    invoke-direct {v5, p0, p1, p2}, Lcom/netease/mcount/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/netease/mcount/d/b;->a(Ljava/util/List;)V

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/netease/mcount/e/a/b;->a(Ljava/util/List;)V
    :try_end_2
    .catch Lcom/netease/mcount/d/a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadLogs: ApiCallException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/netease/mcount/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_2
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mcount/e/a/b;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static declared-synchronized a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-class v0, Lcom/netease/mcount/a/d;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/netease/mcount/a/d$1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/netease/mcount/a/d$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mcount/e/a/b;->b()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gtz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mcount/b/a;)Z
    .locals 5

    const-class v0, Lcom/netease/mcount/a/d;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/netease/mcount/e/a/b;->a(Lcom/netease/mcount/b/a;)V

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mcount/e/a/b;->b()J

    move-result-wide v1

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object p3

    iget p3, p3, Lcom/netease/mcount/a/b;->e:I

    int-to-long v3, p3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-lez p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/netease/mcount/e/a/b;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1, p2}, Lcom/netease/mcount/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mcount/a/b;->a:Z

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mcount/e/a/b;->a()V

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object v1

    invoke-static {}, Lcom/netease/mcount/f/h;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/netease/mcount/a/b;->g:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/mcount/e/a/b;->c(J)V

    iget-object v0, v0, Lcom/netease/mcount/a/b;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

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

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, p2}, Lcom/netease/mcount/e/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/e/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mcount/e/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
