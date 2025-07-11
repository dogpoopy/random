.class final Lcom/appsflyer/internal/AFi1hSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFi1hSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1hSDK;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->registerClient(Lcom/appsflyer/internal/AFi1hSDK;)I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1hSDK;I)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFi1hSDK;->e(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    iget-object v5, p0, Lcom/appsflyer/internal/AFi1hSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v5}, Lcom/appsflyer/internal/AFi1hSDK;->registerClient(Lcom/appsflyer/internal/AFi1hSDK;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
