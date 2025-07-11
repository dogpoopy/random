.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;
.super Ljava/lang/Object;
.source "AdvancedSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageProcessorAdapter"
.end annotation


# instance fields
.field private final mImpl:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;


# direct methods
.method constructor <init>(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;->mImpl:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;

    return-void
.end method


# virtual methods
.method public onNextImageAvailable(IJLandroidx/camera/extensions/internal/sessionprocessor/ImageReference;Ljava/lang/String;)V
    .locals 6

    .line 353
    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;->mImpl:Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;

    new-instance v4, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;

    invoke-direct {v4, p4}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageReferenceImplAdapter;-><init>(Landroidx/camera/extensions/internal/sessionprocessor/ImageReference;)V

    move v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;->onNextImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V

    return-void
.end method
