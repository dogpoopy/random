.class Lcom/netease/mpay/oversea/thirdapi/a$c;
.super Lcom/amazon/identity/auth/device/api/authorization/AuthorizeListener;
.source "AmazonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/a;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/thirdapi/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->b:Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeListener;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/thirdapi/a;Lcom/netease/mpay/oversea/thirdapi/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/a$c;-><init>(Lcom/netease/mpay/oversea/thirdapi/a;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "amazon service: authorize cancel"

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->b:Lcom/netease/mpay/oversea/thirdapi/a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/p;->onCancel()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z
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

.method public bridge synthetic onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/a$c;->onCancel(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;)V

    return-void
.end method

.method public declared-synchronized onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amazon service: authorize error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->value()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x2

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 9
    :goto_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->b:Lcom/netease/mpay/oversea/thirdapi/a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    invoke-interface {v1, v0, p1}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/a$c;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public declared-synchronized onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "amazon service: authorize succeed"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->b:Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/thirdapi/a;->a(Lcom/netease/mpay/oversea/thirdapi/a;Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/a$c;->a:Z
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

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/a$c;->onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V

    return-void
.end method
