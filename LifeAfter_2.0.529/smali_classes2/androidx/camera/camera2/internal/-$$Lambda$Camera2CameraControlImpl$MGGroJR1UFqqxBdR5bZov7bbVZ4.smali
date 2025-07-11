.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$MGGroJR1UFqqxBdR5bZov7bbVZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$MGGroJR1UFqqxBdR5bZov7bbVZ4;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-wide p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$MGGroJR1UFqqxBdR5bZov7bbVZ4;->f$1:J

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$MGGroJR1UFqqxBdR5bZov7bbVZ4;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-wide v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$MGGroJR1UFqqxBdR5bZov7bbVZ4;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->lambda$waitForSessionUpdateId$4$Camera2CameraControlImpl(JLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
