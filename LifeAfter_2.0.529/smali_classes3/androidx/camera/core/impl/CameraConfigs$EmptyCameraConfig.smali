.class final Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;
.super Ljava/lang/Object;
.source "CameraConfigs.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyCameraConfig"
.end annotation


# instance fields
.field private final mIdentifier:Landroidx/camera/core/impl/Identifier;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Landroidx/camera/core/impl/Identifier;->create(Ljava/lang/Object;)Landroidx/camera/core/impl/Identifier;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;->mIdentifier:Landroidx/camera/core/impl/Identifier;

    return-void
.end method


# virtual methods
.method public synthetic containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$containsOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Z

    move-result p1

    return p1
.end method

.method public synthetic findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$findOptions(Landroidx/camera/core/impl/ReadableConfig;Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V

    return-void
.end method

.method public getCompatibilityId()Landroidx/camera/core/impl/Identifier;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;->mIdentifier:Landroidx/camera/core/impl/Identifier;

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 48
    invoke-static {}, Landroidx/camera/core/impl/OptionsBundle;->emptyBundle()Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$getOptionPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$getPriorities(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/CameraConfig$-CC;->$default$getSessionProcessor(Landroidx/camera/core/impl/CameraConfig;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraConfig$-CC;->$default$getSessionProcessor(Landroidx/camera/core/impl/CameraConfig;Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getUseCaseCombinationRequiredRule()I
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/CameraConfig$-CC;->$default$getUseCaseCombinationRequiredRule(Landroidx/camera/core/impl/CameraConfig;)I

    move-result v0

    return v0
.end method

.method public synthetic getUseCaseConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/CameraConfig$-CC;->$default$getUseCaseConfigFactory(Landroidx/camera/core/impl/CameraConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listOptions()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$listOptions(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/ReadableConfig$-CC;->$default$retrieveOptionWithPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
