.class public final synthetic Landroidx/camera/core/ImageProxy$-CC;
.super Ljava/lang/Object;
.source "ImageProxy.java"


# direct methods
.method public static $default$toBitmap(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "_this"    # Landroidx/camera/core/ImageProxy;

    .line 154
    invoke-static {p0}, Landroidx/camera/core/internal/utils/ImageUtil;->createBitmapFromImageProxy(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
