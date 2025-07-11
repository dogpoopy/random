.class Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 241
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$002(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;F)F

    .line 246
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$102(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;F)F

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;->this$0:Lcom/netease/ntunisdk/piclib/camera/CameraActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->access$200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
