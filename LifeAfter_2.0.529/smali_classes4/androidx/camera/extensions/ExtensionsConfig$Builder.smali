.class final Landroidx/camera/extensions/ExtensionsConfig$Builder;
.super Ljava/lang/Object;
.source "ExtensionsConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/ExtensionsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/CameraConfig$Builder<",
        "Landroidx/camera/extensions/ExtensionsConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-void
.end method


# virtual methods
.method build()Landroidx/camera/extensions/ExtensionsConfig;
    .locals 2

    .line 66
    new-instance v0, Landroidx/camera/extensions/ExtensionsConfig;

    iget-object v1, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-direct {v0, v1}, Landroidx/camera/extensions/ExtensionsConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    return-object v0
.end method

.method public setCompatibilityId(Landroidx/camera/core/impl/Identifier;)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/core/impl/CameraConfig;->OPTION_COMPATIBILITY_ID:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setCompatibilityId(Landroidx/camera/core/impl/Identifier;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setCompatibilityId(Landroidx/camera/core/impl/Identifier;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExtensionMode(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 70
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/extensions/ExtensionsConfig;->OPTION_EXTENSION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/core/impl/CameraConfig;->OPTION_SESSION_PROCESSOR:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUseCaseCombinationRequiredRule(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 91
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/core/impl/CameraConfig;->OPTION_USE_CASE_COMBINATION_REQUIRED_RULE:Landroidx/camera/core/impl/Config$Option;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 91
    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setUseCaseCombinationRequiredRule(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseCombinationRequiredRule(I)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUseCaseConfigFactory(Landroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 77
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/core/impl/CameraConfig;->OPTION_USECASE_CONFIG_FACTORY:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setUseCaseConfigFactory(Landroidx/camera/core/impl/UseCaseConfigFactory;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setUseCaseConfigFactory(Landroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setZslDisabled(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;
    .locals 2

    .line 106
    iget-object v0, p0, Landroidx/camera/extensions/ExtensionsConfig$Builder;->mConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    sget-object v1, Landroidx/camera/core/impl/CameraConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setZslDisabled(Z)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/camera/extensions/ExtensionsConfig$Builder;->setZslDisabled(Z)Landroidx/camera/extensions/ExtensionsConfig$Builder;

    move-result-object p1

    return-object p1
.end method
