.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$D7IkFjWtL17PRTmbBpJ_4pzF-EI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$D7IkFjWtL17PRTmbBpJ_4pzF-EI;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$D7IkFjWtL17PRTmbBpJ_4pzF-EI;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    return-void
.end method
