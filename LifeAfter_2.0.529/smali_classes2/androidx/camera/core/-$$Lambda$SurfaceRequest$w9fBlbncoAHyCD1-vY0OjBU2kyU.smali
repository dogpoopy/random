.class public final synthetic Landroidx/camera/core/-$$Lambda$SurfaceRequest$w9fBlbncoAHyCD1-vY0OjBU2kyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$w9fBlbncoAHyCD1-vY0OjBU2kyU;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$w9fBlbncoAHyCD1-vY0OjBU2kyU;->f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$w9fBlbncoAHyCD1-vY0OjBU2kyU;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$w9fBlbncoAHyCD1-vY0OjBU2kyU;->f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v0, v1}, Landroidx/camera/core/SurfaceRequest;->lambda$updateTransformationInfo$7(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
