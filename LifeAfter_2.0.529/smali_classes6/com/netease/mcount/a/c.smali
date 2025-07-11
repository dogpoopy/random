.class public Lcom/netease/mcount/a/c;
.super Ljava/lang/Object;


# static fields
.field public static l:J

.field public static m:J

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/mcount/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile j:Ljava/lang/String;

.field public volatile k:Ljava/lang/String;

.field private volatile o:Lcom/netease/mcount/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/mcount/a/c;->l:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/netease/mcount/a/c;->m:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mcount/a/c;->a:Z

    iput-boolean v0, p0, Lcom/netease/mcount/a/c;->b:Z

    iput v0, p0, Lcom/netease/mcount/a/c;->c:I

    sget-object v0, Lcom/netease/mcount/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mcount/a/c;->f:Ljava/lang/String;

    sget-object v0, Lcom/netease/mcount/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mcount/a/c;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;

    iput-object p1, p0, Lcom/netease/mcount/a/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a/c;
    .locals 3

    invoke-static {p0, p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/netease/mcount/a/c;

    invoke-direct {v2, p0, p1}, Lcom/netease/mcount/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mcount/a/c;->n:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/mcount/a/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/netease/mcount/a/b;
    .locals 5

    iget-object v0, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mcount/a/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/netease/mcount/e/a;

    iget-object v2, p0, Lcom/netease/mcount/a/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/a/c;->e:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/netease/mcount/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/netease/mcount/a/b;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/netease/mcount/e/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/netease/mcount/a/b;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/netease/mcount/a/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/a/c;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load config from storage.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/netease/mcount/a/b;

    invoke-direct {p1}, Lcom/netease/mcount/a/b;-><init>()V

    iput-object p1, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/netease/mcount/a/c;->c:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mcount/a/c;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/a/c;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/netease/mcount/a/b;)V
    .locals 3

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/netease/mcount/a/c;->o:Lcom/netease/mcount/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/netease/mcount/e/a;

    iget-object v1, p0, Lcom/netease/mcount/a/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/a/c;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mcount/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mcount/a/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mcount/e/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/netease/mcount/f/h;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/mcount/a/c;->a(Landroid/content/Context;)Lcom/netease/mcount/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mcount/a/b;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
