.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;
.super Ljava/lang/Object;
.source "AdvancedSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageReferenceImplAdapter"
.end annotation


# instance fields
.field private final mImageReference:Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;->mImageReference:Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    return-void
.end method


# virtual methods
.method public decrement()Z
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;->mImageReference:Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->decrement()Z

    move-result v0

    return v0
.end method

.method public get()Landroid/media/Image;
    .locals 1

    .line 382
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;->mImageReference:Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->get()Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method public increment()Z
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;->mImageReference:Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;

    invoke-interface {v0}, Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;->increment()Z

    move-result v0

    return v0
.end method
