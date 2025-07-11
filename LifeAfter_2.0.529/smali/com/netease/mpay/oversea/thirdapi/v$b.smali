.class Lcom/netease/mpay/oversea/thirdapi/v$b;
.super Ljava/lang/Object;
.source "WeChatApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/v;->c(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/v$b;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$b;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/v;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_1
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/v;->d:Z

    .line 6
    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/v$b;->a:Lcom/netease/mpay/oversea/thirdapi/v;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/v;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_1
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/v;->d:Z

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
