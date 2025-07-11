.class public interface abstract Landroidx/camera/core/internal/IoConfig;
.super Ljava/lang/Object;
.source "IoConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/IoConfig$Builder;
    }
.end annotation


# static fields
.field public static final OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Config$Option<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Ljava/util/concurrent/Executor;

    const-string v1, "camerax.core.io.ioExecutor"

    .line 39
    invoke-static {v1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/IoConfig;->OPTION_IO_EXECUTOR:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getIoExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getIoExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
.end method
