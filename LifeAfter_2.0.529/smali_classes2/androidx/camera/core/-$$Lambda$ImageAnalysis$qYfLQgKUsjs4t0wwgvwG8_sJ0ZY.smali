.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageAnalysis$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

.field public final synthetic f$1:Landroidx/camera/core/SafeCloseImageReaderProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY;->f$1:Landroidx/camera/core/SafeCloseImageReaderProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY;->f$1:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {v0, v1}, Landroidx/camera/core/ImageAnalysis;->lambda$createPipeline$0(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method
