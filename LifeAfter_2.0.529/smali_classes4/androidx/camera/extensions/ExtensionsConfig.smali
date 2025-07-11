.class Landroidx/camera/extensions/ExtensionsConfig;
.super Ljava/lang/Object;
.source "ExtensionsConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/ExtensionsConfig$Builder;
    }
.end annotation


# static fields
.field public static final OPTION_EXTENSION_MODE:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "camerax.extensions.extensionMode"

    .line 36
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/extensions/ExtensionsConfig;->OPTION_EXTENSION_MODE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/Config;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsConfig;->mConfig:Landroidx/camera/core/impl/Config;

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

    .line 59
    sget-object v0, Landroidx/camera/extensions/ExtensionsConfig;->OPTION_COMPATIBILITY_ID:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p0, v0}, Landroidx/camera/extensions/ExtensionsConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/Identifier;

    return-object v0
.end method

.method public getConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig;->mConfig:Landroidx/camera/core/impl/Config;

    return-object v0
.end method

.method public getExtensionMode()I
    .locals 1

    .line 53
    sget-object v0, Landroidx/camera/extensions/ExtensionsConfig;->OPTION_EXTENSION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p0, v0}, Landroidx/camera/extensions/ExtensionsConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
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
