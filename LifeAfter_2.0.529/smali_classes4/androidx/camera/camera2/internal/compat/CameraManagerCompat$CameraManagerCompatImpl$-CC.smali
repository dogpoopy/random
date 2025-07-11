.class public final synthetic Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl$-CC;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"


# direct methods
.method public static from(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;
    .locals 2

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 294
    new-instance p1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi30Impl;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi30Impl;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 295
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 296
    new-instance p1, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 297
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 299
    invoke-static {p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;->create(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi28Impl;

    move-result-object p0

    return-object p0

    .line 302
    :cond_2
    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;->create(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompatBaseImpl;

    move-result-object p0

    return-object p0
.end method
