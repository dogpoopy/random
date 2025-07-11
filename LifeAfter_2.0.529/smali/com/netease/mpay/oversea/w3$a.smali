.class Lcom/netease/mpay/oversea/w3$a;
.super Lcom/netease/mpay/oversea/w3$b;
.source "GrowthyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/w3;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/app/Application;

.field final synthetic f:Lcom/netease/mpay/oversea/w3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/w3;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    iput-object p2, p0, Lcom/netease/mpay/oversea/w3$a;->e:Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/w3$b;-><init>(Lcom/netease/mpay/oversea/w3;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl onEnterBackground"

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w3;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LINEGAME GrowthyImpl onEnterFront :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    invoke-static {v1}, Lcom/netease/mpay/oversea/w3;->a(Lcom/netease/mpay/oversea/w3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w3;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w3;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w3;->b(Lcom/netease/mpay/oversea/w3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/w3$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/w3$a$a;-><init>(Lcom/netease/mpay/oversea/w3$a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl onExit"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/w3$a;->f:Lcom/netease/mpay/oversea/w3;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w3;->c(Lcom/netease/mpay/oversea/w3;)Lcom/netease/mpay/oversea/w3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/w3$a;->e:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w3$b;->b(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
