.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ProcessingCaptureSession$3$gJhha3C0q-r8S5gYTWlcP3IuivM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/impl/CaptureConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CaptureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ProcessingCaptureSession$3$gJhha3C0q-r8S5gYTWlcP3IuivM;->f$0:Landroidx/camera/core/impl/CaptureConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$ProcessingCaptureSession$3$gJhha3C0q-r8S5gYTWlcP3IuivM;->f$0:Landroidx/camera/core/impl/CaptureConfig;

    invoke-static {v0}, Landroidx/camera/camera2/internal/ProcessingCaptureSession$3;->lambda$onCaptureFailed$0(Landroidx/camera/core/impl/CaptureConfig;)V

    return-void
.end method
