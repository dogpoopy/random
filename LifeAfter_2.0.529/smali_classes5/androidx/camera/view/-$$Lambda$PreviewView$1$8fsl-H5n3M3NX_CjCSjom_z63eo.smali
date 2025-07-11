.class public final synthetic Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewView$1;

.field public final synthetic f$1:Landroidx/camera/view/PreviewStreamStateObserver;

.field public final synthetic f$2:Landroidx/camera/core/impl/CameraInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$0:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$1:Landroidx/camera/view/PreviewStreamStateObserver;

    iput-object p3, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$2:Landroidx/camera/core/impl/CameraInternal;

    return-void
.end method


# virtual methods
.method public final onSurfaceNotInUse()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$0:Landroidx/camera/view/PreviewView$1;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$1:Landroidx/camera/view/PreviewStreamStateObserver;

    iget-object v2, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$8fsl-H5n3M3NX_CjCSjom_z63eo;->f$2:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$2$PreviewView$1(Landroidx/camera/view/PreviewStreamStateObserver;Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method
