.class public final synthetic Landroidx/camera/core/SurfaceOutput$-CC;
.super Ljava/lang/Object;
.source "SurfaceOutput.java"


# direct methods
.method public static $default$getFormat(Landroidx/camera/core/SurfaceOutput;)I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public static $default$getSensorToBufferTransform(Landroidx/camera/core/SurfaceOutput;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/SurfaceOutput;

    .line 180
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-object v0
.end method
