.class public final synthetic Landroidx/camera/core/impl/SessionProcessor$-CC;
.super Ljava/lang/Object;
.source "SessionProcessor.java"


# direct methods
.method public static $default$getRealtimeCaptureLatency(Landroidx/camera/core/impl/SessionProcessor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$getSupportedCameraOperations(Landroidx/camera/core/impl/SessionProcessor;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/impl/SessionProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static $default$startTrigger(Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/SessionProcessor$CaptureCallback;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
