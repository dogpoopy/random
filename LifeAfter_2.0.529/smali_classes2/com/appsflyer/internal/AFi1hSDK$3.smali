.class final Lcom/appsflyer/internal/AFi1hSDK$3;
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
.field private synthetic valueOf:Lcom/appsflyer/internal/AFi1hSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFi1hSDK;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFi1hSDK;->values()V

    .line 63
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFi1hSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFi1hSDK;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    invoke-static {v2}, Lcom/appsflyer/internal/AFi1hSDK;->values(Lcom/appsflyer/internal/AFi1hSDK;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1hSDK$3;->valueOf:Lcom/appsflyer/internal/AFi1hSDK;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFi1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFi1hSDK;Z)Z

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
