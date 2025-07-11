.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TD6U9OcFfph7fi-MjNhqJUgllyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TD6U9OcFfph7fi-MjNhqJUgllyA;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TD6U9OcFfph7fi-MjNhqJUgllyA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TD6U9OcFfph7fi-MjNhqJUgllyA;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$TD6U9OcFfph7fi-MjNhqJUgllyA;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$onUseCaseInactive$6$Camera2CameraImpl(Ljava/lang/String;)V

    return-void
.end method
