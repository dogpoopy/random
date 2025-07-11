.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StopTakingVideoDelayedImpl"
.end annotation


# instance fields
.field private final cameraActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/ntunisdk/piclib/camera/CameraActivity;",
            ">;"
        }
    .end annotation
.end field

.field private enable:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraActivity"
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->enable:Z

    .line 930
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->cameraActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public declared-synchronized isEnable()Z
    .locals 1

    monitor-enter p0

    .line 926
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->isEnable()Z

    move-result v0

    .line 937
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTakingVideoDelayedImpl -> run -> runnableEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->cameraActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    if-eqz v0, :cond_2

    .line 943
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTakingVideoDelayedImpl -> recording is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 945
    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/Recording;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 949
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTakingVideoDelayedImpl -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    monitor-enter p0

    .line 922
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->enable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
