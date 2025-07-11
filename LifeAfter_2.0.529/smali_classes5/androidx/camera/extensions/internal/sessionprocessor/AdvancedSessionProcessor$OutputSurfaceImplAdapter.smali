.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;
.super Ljava/lang/Object;
.source "AdvancedSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputSurfaceImplAdapter"
.end annotation


# instance fields
.field private final mOutputSurface:Landroidx/camera/core/impl/OutputSurface;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/OutputSurface;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;->mOutputSurface:Landroidx/camera/core/impl/OutputSurface;

    return-void
.end method


# virtual methods
.method public getImageFormat()I
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;->mOutputSurface:Landroidx/camera/core/impl/OutputSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/OutputSurface;->getImageFormat()I

    move-result v0

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;->mOutputSurface:Landroidx/camera/core/impl/OutputSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/OutputSurface;->getSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$OutputSurfaceImplAdapter;->mOutputSurface:Landroidx/camera/core/impl/OutputSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
