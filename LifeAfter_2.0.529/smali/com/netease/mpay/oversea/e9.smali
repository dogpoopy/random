.class public Lcom/netease/mpay/oversea/e9;
.super Lcom/netease/mpay/oversea/a6;
.source "SDKConfig.java"


# static fields
.field private static f:Lcom/netease/mpay/oversea/e9;


# instance fields
.field private d:Lcom/netease/mpay/oversea/f9;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/a6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/e9;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/e9;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/e9;->f:Lcom/netease/mpay/oversea/e9;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/e9;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/e9;->f:Lcom/netease/mpay/oversea/e9;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/e9;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/e9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/e9;->f:Lcom/netease/mpay/oversea/e9;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, v1, Lcom/netease/mpay/oversea/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/e9;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/e9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/e9;->f:Lcom/netease/mpay/oversea/e9;

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_2
    :goto_1
    sget-object p0, Lcom/netease/mpay/oversea/e9;->f:Lcom/netease/mpay/oversea/e9;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/oversea/f9;
    .locals 1

    .line 16
    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->b(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/netease/mpay/oversea/f9;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/f9;-><init>()V

    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/y;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-static {p1}, Lcom/netease/mpay/oversea/f9;->a([B)Lcom/netease/mpay/oversea/f9;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/f9;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/f9;-><init>()V

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/netease/mpay/oversea/e9;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h9;->f()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 23
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/e9;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/e9;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e9;->b()Lcom/netease/mpay/oversea/f9;

    .line 25
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/e9;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/mpay/oversea/f9;)V
    .locals 3

    monitor-enter p0

    .line 13
    :try_start_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/f9;->b()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/y;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    const/4 v2, 0x1

    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-static {p1}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk_config"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/netease/mpay/oversea/f9;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/e9;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    const-string v2, "sdk_config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/e9;->e:Z

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/f9;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/f9;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/e9;->e:Z

    .line 10
    invoke-direct {p0, v1}, Lcom/netease/mpay/oversea/e9;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/f9;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/e9;->d:Lcom/netease/mpay/oversea/f9;

    return-object v0
.end method
