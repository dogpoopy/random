.class public final synthetic Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewView$1;

.field public final synthetic f$1:Landroidx/camera/core/impl/CameraInternal;

.field public final synthetic f$2:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$1;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$0:Landroidx/camera/view/PreviewView$1;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$1:Landroidx/camera/core/impl/CameraInternal;

    iput-object p3, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$2:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final onTransformationInfoUpdate(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$0:Landroidx/camera/view/PreviewView$1;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$1:Landroidx/camera/core/impl/CameraInternal;

    iget-object v2, p0, Landroidx/camera/view/-$$Lambda$PreviewView$1$FoS72QlvxkQsBmSXKEMS4a3z768;->f$2:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/view/PreviewView$1;->lambda$onSurfaceRequested$1$PreviewView$1(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
