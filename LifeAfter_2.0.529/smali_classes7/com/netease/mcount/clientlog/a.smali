.class public Lcom/netease/mcount/clientlog/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/netease/mcount/clientlog/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mcount/clientlog/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/netease/mcount/clientlog/a;
    .locals 2

    sget-object v0, Lcom/netease/mcount/clientlog/a;->a:Lcom/netease/mcount/clientlog/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mcount/clientlog/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mcount/clientlog/a;->a:Lcom/netease/mcount/clientlog/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mcount/clientlog/a;

    invoke-direct {v1}, Lcom/netease/mcount/clientlog/a;-><init>()V

    sput-object v1, Lcom/netease/mcount/clientlog/a;->a:Lcom/netease/mcount/clientlog/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mcount/clientlog/a;->a:Lcom/netease/mcount/clientlog/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/mcount/clientlog/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/clientlog/a;->b:Ljava/lang/String;

    return-object v0
.end method
