.class public interface abstract Landroidx/camera/core/internal/UseCaseEventConfig;
.super Ljava/lang/Object;
.source "UseCaseEventConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/UseCaseEventConfig$Builder;
    }
.end annotation


# static fields
.field public static final OPTION_USE_CASE_EVENT_CALLBACK:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Landroidx/camera/core/UseCase$EventCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Landroidx/camera/core/UseCase$EventCallback;

    const-string v1, "camerax.core.useCaseEventCallback"

    .line 36
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/UseCaseEventConfig;->OPTION_USE_CASE_EVENT_CALLBACK:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getUseCaseEventCallback()Landroidx/camera/core/UseCase$EventCallback;
.end method

.method public abstract getUseCaseEventCallback(Landroidx/camera/core/UseCase$EventCallback;)Landroidx/camera/core/UseCase$EventCallback;
.end method
