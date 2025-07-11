.class public Lcom/netease/mpay/oversea/j8;
.super Ljava/lang/Object;
.source "ProgressImpl.java"


# static fields
.field private static b:Lcom/netease/mpay/oversea/j8;


# instance fields
.field private a:Lcom/netease/mpay/oversea/xa;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/mpay/oversea/j8;
    .locals 2

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/j8;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/j8;->b:Lcom/netease/mpay/oversea/j8;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/j8;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/j8;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/j8;->b:Lcom/netease/mpay/oversea/j8;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/j8;->b:Lcom/netease/mpay/oversea/j8;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/e7;)Lcom/netease/mpay/oversea/i8;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/e7;)Lcom/netease/mpay/oversea/i8;
    .locals 1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0, p2}, Lcom/netease/mpay/oversea/xa;->a(Landroid/content/Context;ZLcom/netease/mpay/oversea/e7;)Lcom/netease/mpay/oversea/xa;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/xa;->a(Lcom/netease/mpay/oversea/e7;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/xa;->a()V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/xa;->b()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/netease/mpay/oversea/j8;->a:Lcom/netease/mpay/oversea/xa;

    :cond_0
    return-void
.end method
