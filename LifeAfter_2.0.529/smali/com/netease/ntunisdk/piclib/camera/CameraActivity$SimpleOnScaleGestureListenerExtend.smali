.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleOnScaleGestureListenerExtend"
.end annotation


# instance fields
.field private currentZoomRatio:F

.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 541
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->currentZoomRatio:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 546
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$800(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$800(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraControl;

    move-result-object v1

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->currentZoomRatio:F

    mul-float v0, v0, v2

    invoke-interface {v1, v0}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 551
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 558
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 560
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$900(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$900(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ZoomState;

    if-eqz p1, :cond_0

    .line 563
    invoke-interface {p1}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;->currentZoomRatio:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    invoke-static {}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
