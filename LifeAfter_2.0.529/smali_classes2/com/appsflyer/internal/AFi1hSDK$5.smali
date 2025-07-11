.class final Lcom/appsflyer/internal/AFi1hSDK$5;
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
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1hSDK;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFi1hSDK;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFi1hSDK;->valueOf(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFi1hSDK;->e(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    .line 1209
    iget-object v2, v1, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper:Landroid/os/Handler;

    new-instance v3, Lcom/appsflyer/internal/AFi1hSDK$2;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/AFi1hSDK$2;-><init>(Lcom/appsflyer/internal/AFi1hSDK;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFi1hSDK;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;Z)Z

    .line 87
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
