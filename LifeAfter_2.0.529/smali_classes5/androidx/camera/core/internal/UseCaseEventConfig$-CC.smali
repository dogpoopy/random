.class public final synthetic Landroidx/camera/core/internal/UseCaseEventConfig$-CC;
.super Ljava/lang/Object;
.source "UseCaseEventConfig.java"


# direct methods
.method public static $default$getUseCaseEventCallback(Landroidx/camera/core/internal/UseCaseEventConfig;)Landroidx/camera/core/UseCase$EventCallback;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/UseCaseEventConfig;

    .line 58
    sget-object v0, Landroidx/camera/core/internal/UseCaseEventConfig;->OPTION_USE_CASE_EVENT_CALLBACK:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/internal/UseCaseEventConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase$EventCallback;

    return-object v0
.end method

.method public static $default$getUseCaseEventCallback(Landroidx/camera/core/internal/UseCaseEventConfig;Landroidx/camera/core/UseCase$EventCallback;)Landroidx/camera/core/UseCase$EventCallback;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/internal/UseCaseEventConfig;

    .line 48
    sget-object v0, Landroidx/camera/core/internal/UseCaseEventConfig;->OPTION_USE_CASE_EVENT_CALLBACK:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/internal/UseCaseEventConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/UseCase$EventCallback;

    return-object p1
.end method
