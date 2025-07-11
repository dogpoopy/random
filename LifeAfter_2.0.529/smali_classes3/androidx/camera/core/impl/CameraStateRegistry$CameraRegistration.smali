.class Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;
.super Ljava/lang/Object;
.source "CameraStateRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraStateRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraRegistration"
.end annotation


# instance fields
.field private final mNotifyExecutor:Ljava/util/concurrent/Executor;

.field private final mOnConfigureAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

.field private final mOnOpenAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

.field private mState:Landroidx/camera/core/impl/CameraInternal$State;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/CameraInternal$State;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 457
    iput-object p2, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    .line 458
    iput-object p3, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mOnConfigureAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

    .line 459
    iput-object p4, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mOnOpenAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    return-void
.end method


# virtual methods
.method getState()Landroidx/camera/core/impl/CameraInternal$State;
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object v0
.end method

.method notifyOnConfigureAvailableListener()V
    .locals 3

    .line 474
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mOnConfigureAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/impl/-$$Lambda$-28SVhrY5k3kr5BcB6nW1gb8KJk;

    invoke-direct {v2, v1}, Landroidx/camera/core/impl/-$$Lambda$-28SVhrY5k3kr5BcB6nW1gb8KJk;-><init>(Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraStateRegistry"

    const-string v2, "Unable to notify camera to configure."

    .line 476
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method notifyOnOpenAvailableListener()V
    .locals 3

    .line 482
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mNotifyExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mOnOpenAvailableListener:Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/camera/core/impl/-$$Lambda$ZogeR1amTWwer7mjUasA-Kd9cfo;

    invoke-direct {v2, v1}, Landroidx/camera/core/impl/-$$Lambda$ZogeR1amTWwer7mjUasA-Kd9cfo;-><init>(Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CameraStateRegistry"

    const-string v2, "Unable to notify camera to open."

    .line 484
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method setState(Landroidx/camera/core/impl/CameraInternal$State;)Landroidx/camera/core/impl/CameraInternal$State;
    .locals 1

    .line 463
    iget-object v0, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 464
    iput-object p1, p0, Landroidx/camera/core/impl/CameraStateRegistry$CameraRegistration;->mState:Landroidx/camera/core/impl/CameraInternal$State;

    return-object v0
.end method
