.class public Lcom/netease/mpay/httpdns/HttpDns;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/httpdns/HttpDns$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/httpdns/ResolveDnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/httpdns/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public volatile g:Z

.field public h:Lcom/netease/mpay/httpdns/j;

.field public volatile i:Z

.field public j:Lcom/netease/mpay/httpdns/h;

.field public k:Z

.field public l:Landroid/content/Context;

.field public m:I

.field public n:Z

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netease/mpay/httpdns/HttpDns$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->n:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/netease/mpay/httpdns/HttpDns;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/netease/mpay/httpdns/HttpDns;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->i:Z

    return p1
.end method

.method public static getInstance()Lcom/netease/mpay/httpdns/HttpDns;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/httpdns/HttpDns$d;->a:Lcom/netease/mpay/httpdns/HttpDns;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;
    .locals 0

    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    const-string v3, "mpay"

    const-string v4, "N8dui4CX"

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/netease/mpay/httpdns/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/httpdns/i;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/netease/mpay/httpdns/i;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/mpay/httpdns/j;->b(Landroid/content/Context;)Lcom/netease/mpay/httpdns/j;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    :cond_2
    iget-object v5, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v5, v5, Lcom/netease/mpay/httpdns/j;->a:Ljava/util/Map;

    new-instance v6, Lcom/netease/mpay/httpdns/g;

    invoke-direct {v6, v4}, Lcom/netease/mpay/httpdns/g;-><init>(Ljava/util/List;)V

    iget v0, v0, Lcom/netease/mpay/httpdns/i;->a:I

    .line 1
    iput-boolean v3, v6, Lcom/netease/mpay/httpdns/g;->f:Z

    int-to-long v7, v0

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    iput-wide v7, v6, Lcom/netease/mpay/httpdns/g;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/netease/mpay/httpdns/g;->c:J

    .line 2
    iput-boolean p2, v6, Lcom/netease/mpay/httpdns/g;->e:Z

    if-nez p2, :cond_3

    iput v1, v6, Lcom/netease/mpay/httpdns/g;->b:I

    .line 3
    :cond_3
    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/httpdns/j;->a(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "======>>> new ip : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", domain : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method public final b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v0, v0, Lcom/netease/mpay/httpdns/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/httpdns/g;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mpay/httpdns/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/mpay/httpdns/HttpDns$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/httpdns/HttpDns$a;-><init>(Lcom/netease/mpay/httpdns/HttpDns;)V

    .line 1
    sget-object v1, Lcom/netease/mpay/httpdns/b;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "start updateAnyCastIp"

    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/httpdns/HttpDns$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/httpdns/HttpDns$b;-><init>(Lcom/netease/mpay/httpdns/HttpDns;)V

    .line 1
    sget-object v1, Lcom/netease/mpay/httpdns/b;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJfGameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishArea()I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->m:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.1.9"

    return-object v0
.end method

.method public getWebResourceResponse(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/httpdns/h;->a(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/netease/mpay/httpdns/HttpDns;->o:Ljava/lang/String;

    invoke-static {p4}, Lcom/netease/mpay/httpdns/p;->a(Z)V

    iget-boolean p2, p0, Lcom/netease/mpay/httpdns/HttpDns;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p2, 0x1

    :try_start_1
    iput-boolean p2, p0, Lcom/netease/mpay/httpdns/HttpDns;->d:Z

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    iput p3, p0, Lcom/netease/mpay/httpdns/HttpDns;->m:I

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->n:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changeDefaultIp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    if-nez p3, :cond_4

    const-string p1, "httpdns.nie.netease.com"

    sput-object p1, Lcom/netease/mpay/httpdns/d;->c:Ljava/lang/String;

    const-string p1, "103.71.201.4"

    sput-object p1, Lcom/netease/mpay/httpdns/d;->b:Ljava/lang/String;

    const-string p1, "https://dns.update.netease.com/hdserver2"

    :goto_0
    sput-object p1, Lcom/netease/mpay/httpdns/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "httpdns.nie.easebar.com"

    sput-object p1, Lcom/netease/mpay/httpdns/d;->c:Ljava/lang/String;

    const-string p1, "34.49.54.14"

    sput-object p1, Lcom/netease/mpay/httpdns/d;->b:Ljava/lang/String;

    const-string p1, "https://dns.update.easebar.com/hdserver2"

    goto :goto_0

    .line 2
    :goto_1
    new-instance p1, Lcom/netease/mpay/httpdns/h;

    invoke-direct {p1}, Lcom/netease/mpay/httpdns/h;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    sget-object p1, Lcom/netease/mpay/httpdns/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    return v0
.end method

.method public declared-synchronized isHttpDnsMode()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerUrl:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/httpdns/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v1, v0, Lcom/netease/mpay/httpdns/g;->e:Z

    iput v1, v0, Lcom/netease/mpay/httpdns/g;->b:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======>>> remain ip : "

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v1, v1, Lcom/netease/mpay/httpdns/j;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/httpdns/j;->a(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======>>> delete ip : "

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public replaceOriginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->resolve(Ljava/lang/String;)Lcom/netease/mpay/httpdns/ResolveDnsResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->url:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public declared-synchronized resolve(Ljava/lang/String;)Lcom/netease/mpay/httpdns/ResolveDnsResult;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "start resolve url"

    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/httpdns/ResolveDnsResult;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    iget-boolean v3, v2, Lcom/netease/mpay/httpdns/g;->e:Z

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/netease/mpay/httpdns/g;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/netease/mpay/httpdns/g;->b:I

    if-ltz v3, :cond_0

    iget-object v4, v2, Lcom/netease/mpay/httpdns/g;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    new-instance v0, Lcom/netease/mpay/httpdns/ResolveDnsResult;

    .line 5
    iget-object v3, v2, Lcom/netease/mpay/httpdns/g;->a:Ljava/util/List;

    iget v4, v2, Lcom/netease/mpay/httpdns/g;->b:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lcom/netease/mpay/httpdns/g;->a:Ljava/util/List;

    iget v2, v2, Lcom/netease/mpay/httpdns/g;->b:I

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/netease/mpay/httpdns/ResolveDnsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolve url:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCustomHttpDns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/netease/mpay/httpdns/d;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sput-object p2, Lcom/netease/mpay/httpdns/d;->b:Ljava/lang/String;

    sput-object p3, Lcom/netease/mpay/httpdns/d;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->n:Z

    :cond_1
    iput p4, p0, Lcom/netease/mpay/httpdns/HttpDns;->m:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    return-void
.end method

.method public setJfGameId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->o:Ljava/lang/String;

    return-void
.end method

.method public setSniInConnection(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->resolve(Ljava/lang/String;)Lcom/netease/mpay/httpdns/ResolveDnsResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/httpdns/ResolveDnsResult;->setSNI(Ljava/net/HttpURLConnection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized switchHttpDnsMode(Ljava/lang/String;Lcom/netease/mpay/httpdns/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/httpdns/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/netease/mpay/httpdns/c;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/netease/mpay/httpdns/HttpDns$c;

    invoke-direct {p2, p0, p1, v0}, Lcom/netease/mpay/httpdns/HttpDns$c;-><init>(Lcom/netease/mpay/httpdns/HttpDns;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/netease/mpay/httpdns/b;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public switchHttpDnsMode(Ljava/lang/String;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->j:Lcom/netease/mpay/httpdns/h;

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"

    :try_start_1
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    :try_start_2
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v2, "Start switchDnsMode: %s"

    :try_start_3
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 3
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/mpay/httpdns/j;->b(Landroid/content/Context;)Lcom/netease/mpay/httpdns/j;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    :cond_5
    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->a()Z

    move-result v2

    if-nez v2, :cond_6

    const-string p1, "has not ready for httpdns"

    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    return v1

    :cond_6
    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netease/mpay/httpdns/HttpDns;->a(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-boolean v4, v2, Lcom/netease/mpay/httpdns/g;->e:Z

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/netease/mpay/httpdns/g;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "switchDnsMode: -> use next ip"

    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 5
    iget-boolean v0, p1, Lcom/netease/mpay/httpdns/g;->e:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/netease/mpay/httpdns/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/netease/mpay/httpdns/g;->d()Z

    move-result p1

    goto :goto_4

    :cond_7
    const-string v0, "switchDnsMode: -> switch to url"

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/httpdns/HttpDns;->getInstance()Lcom/netease/mpay/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->remove(Ljava/lang/String;)Z

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_b

    .line 7
    iget-object v2, v2, Lcom/netease/mpay/httpdns/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "switchDnsMode: -> local to ip"

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    invoke-static {p1}, Lcom/netease/mpay/httpdns/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/httpdns/HttpDns;->b(Ljava/lang/String;)Lcom/netease/mpay/httpdns/g;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11
    iget-boolean v0, p1, Lcom/netease/mpay/httpdns/g;->e:Z

    if-nez v0, :cond_a

    .line 12
    iget-object v0, p1, Lcom/netease/mpay/httpdns/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 13
    iput-boolean v3, p1, Lcom/netease/mpay/httpdns/g;->e:Z

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    :goto_2
    const/4 p1, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const-string p1, "switchDnsMode: -> fetch & use ip"

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/httpdns/p;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/netease/mpay/httpdns/HttpDns;->a(Ljava/lang/String;Z)Z

    move-result p1

    :goto_4
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->h:Lcom/netease/mpay/httpdns/j;

    iget-object v0, v0, Lcom/netease/mpay/httpdns/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    goto :goto_5

    :cond_c
    iput-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/netease/mpay/httpdns/HttpDns;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return p1

    :cond_e
    :goto_6
    return v1

    :catchall_0
    iput-boolean v1, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    iget-boolean p1, p0, Lcom/netease/mpay/httpdns/HttpDns;->e:Z

    return p1
.end method
