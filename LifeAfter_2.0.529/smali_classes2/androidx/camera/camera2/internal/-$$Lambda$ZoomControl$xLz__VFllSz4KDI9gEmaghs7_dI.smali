.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/ZoomControl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:Landroidx/camera/core/ZoomState;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$0:Landroidx/camera/camera2/internal/ZoomControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$2:Landroidx/camera/core/ZoomState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$0:Landroidx/camera/camera2/internal/ZoomControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ZoomControl$xLz__VFllSz4KDI9gEmaghs7_dI;->f$2:Landroidx/camera/core/ZoomState;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/ZoomControl;->lambda$setLinearZoom$2$ZoomControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method
