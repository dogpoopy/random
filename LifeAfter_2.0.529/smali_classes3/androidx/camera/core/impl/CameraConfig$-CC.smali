.class public final synthetic Landroidx/camera/core/impl/CameraConfig$-CC;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# direct methods
.method public static $default$getSessionProcessor(Landroidx/camera/core/impl/CameraConfig;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraConfig;

    .line 121
    sget-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_SESSION_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SessionProcessor;

    return-object v0
.end method

.method public static $default$getSessionProcessor(Landroidx/camera/core/impl/CameraConfig;Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraConfig;

    .line 109
    sget-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_SESSION_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0, p1}, Landroidx/camera/core/impl/CameraConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/SessionProcessor;

    return-object p1
.end method

.method public static $default$getUseCaseCombinationRequiredRule(Landroidx/camera/core/impl/CameraConfig;)I
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraConfig;

    .line 96
    sget-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_USE_CASE_COMBINATION_REQUIRED_RULE:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/CameraConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static $default$getUseCaseConfigFactory(Landroidx/camera/core/impl/CameraConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/CameraConfig;

    .line 78
    sget-object v0, Landroidx/camera/core/impl/CameraConfig;->OPTION_USECASE_CONFIG_FACTORY:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfigFactory;->EMPTY_INSTANCE:Landroidx/camera/core/impl/UseCaseConfigFactory;

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/CameraConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseConfigFactory;

    return-object v0
.end method
