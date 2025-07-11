.class public final synthetic Landroidx/camera/core/impl/ImageInputConfig$-CC;
.super Ljava/lang/Object;
.source "ImageInputConfig.java"


# direct methods
.method public static $default$getDynamicRange(Landroidx/camera/core/impl/ImageInputConfig;)Landroidx/camera/core/DynamicRange;
    .locals 2
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageInputConfig;

    .line 63
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    sget-object v1, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    invoke-interface {p0, v0, v1}, Landroidx/camera/core/impl/ImageInputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    return-object v0
.end method

.method public static $default$getInputFormat(Landroidx/camera/core/impl/ImageInputConfig;)I
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageInputConfig;

    .line 49
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageInputConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static $default$hasDynamicRange(Landroidx/camera/core/impl/ImageInputConfig;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/ImageInputConfig;

    .line 74
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageInputConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    return v0
.end method
