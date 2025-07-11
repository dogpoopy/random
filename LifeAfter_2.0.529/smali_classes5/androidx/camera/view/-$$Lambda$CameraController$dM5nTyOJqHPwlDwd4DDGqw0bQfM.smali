.class public final synthetic Landroidx/camera/view/-$$Lambda$CameraController$dM5nTyOJqHPwlDwd4DDGqw0bQfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/CameraController;

.field public final synthetic f$1:Landroidx/camera/core/CameraSelector;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$CameraController$dM5nTyOJqHPwlDwd4DDGqw0bQfM;->f$0:Landroidx/camera/view/CameraController;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$CameraController$dM5nTyOJqHPwlDwd4DDGqw0bQfM;->f$1:Landroidx/camera/core/CameraSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$CameraController$dM5nTyOJqHPwlDwd4DDGqw0bQfM;->f$0:Landroidx/camera/view/CameraController;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$CameraController$dM5nTyOJqHPwlDwd4DDGqw0bQfM;->f$1:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v0, v1}, Landroidx/camera/view/CameraController;->lambda$setCameraSelector$3$CameraController(Landroidx/camera/core/CameraSelector;)V

    return-void
.end method
