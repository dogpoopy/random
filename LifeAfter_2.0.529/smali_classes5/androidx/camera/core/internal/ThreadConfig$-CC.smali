.class public final synthetic Landroidx/camera/core/internal/ThreadConfig$-CC;
.super Ljava/lang/Object;
.source "ThreadConfig.java"


# direct methods
.method public static $default$getBackgroundExecutor(Landroidx/camera/core/internal/ThreadConfig;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/ThreadConfig;

    .line 64
    sget-object v0, Landroidx/camera/core/internal/ThreadConfig;->OPTION_BACKGROUND_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/ThreadConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static $default$getBackgroundExecutor(Landroidx/camera/core/internal/ThreadConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/ThreadConfig;

    .line 52
    sget-object v0, Landroidx/camera/core/internal/ThreadConfig;->OPTION_BACKGROUND_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/ThreadConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method
