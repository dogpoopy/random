.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$_EaHUmChSPHX6TxTKtcsXI4VDK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$_EaHUmChSPHX6TxTKtcsXI4VDK4;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final onTransformationInfoUpdate(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$_EaHUmChSPHX6TxTKtcsXI4VDK4;->f$0:Landroidx/camera/video/Recorder;

    invoke-virtual {v0, p1}, Landroidx/camera/video/Recorder;->lambda$configureInternal$7$Recorder(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
