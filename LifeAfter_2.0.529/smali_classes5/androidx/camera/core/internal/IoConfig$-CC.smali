.class public final synthetic Landroidx/camera/core/internal/IoConfig$-CC;
.super Ljava/lang/Object;
.source "IoConfig.java"


# direct methods
.method public static $default$getIoExecutor(Landroidx/camera/core/internal/IoConfig;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/IoConfig;

    .line 64
    sget-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/IoConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static $default$getIoExecutor(Landroidx/camera/core/internal/IoConfig;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/IoConfig;

    .line 52
    sget-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/IoConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method
