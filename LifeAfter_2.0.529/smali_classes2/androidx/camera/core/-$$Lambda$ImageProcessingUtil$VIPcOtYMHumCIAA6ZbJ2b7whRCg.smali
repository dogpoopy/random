.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageProcessingUtil$VIPcOtYMHumCIAA6ZbJ2b7whRCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageProxy;

.field public final synthetic f$1:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageProcessingUtil$VIPcOtYMHumCIAA6ZbJ2b7whRCg;->f$0:Landroidx/camera/core/ImageProxy;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageProcessingUtil$VIPcOtYMHumCIAA6ZbJ2b7whRCg;->f$1:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageProcessingUtil$VIPcOtYMHumCIAA6ZbJ2b7whRCg;->f$0:Landroidx/camera/core/ImageProxy;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageProcessingUtil$VIPcOtYMHumCIAA6ZbJ2b7whRCg;->f$1:Landroidx/camera/core/ImageProxy;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/ImageProcessingUtil;->lambda$rotateYUV$1(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
