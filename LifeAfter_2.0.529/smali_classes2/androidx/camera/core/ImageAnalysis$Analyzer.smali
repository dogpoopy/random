.class public interface abstract Landroidx/camera/core/ImageAnalysis$Analyzer;
.super Ljava/lang/Object;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Analyzer"
.end annotation


# virtual methods
.method public abstract analyze(Landroidx/camera/core/ImageProxy;)V
.end method

.method public abstract getDefaultTargetResolution()Landroid/util/Size;
.end method

.method public abstract getTargetCoordinateSystem()I
.end method

.method public abstract updateTransform(Landroid/graphics/Matrix;)V
.end method
