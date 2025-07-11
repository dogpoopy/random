.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$LuOJQ0sg1wvLyxomp0-YWy0I_2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$LuOJQ0sg1wvLyxomp0-YWy0I_2g;->f$0:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$LuOJQ0sg1wvLyxomp0-YWy0I_2g;->f$0:Landroidx/camera/camera2/internal/Camera2CameraInfoImpl$RedirectableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
