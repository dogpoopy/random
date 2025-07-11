.class Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;Landroid/content/Context;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 670
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-le p1, v0, :cond_2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    const/16 p1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, 0xaa

    if-le p1, v0, :cond_3

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_3

    const/16 p1, 0xb4

    goto :goto_1

    :cond_3
    const/16 v0, 0x104

    if-le p1, v0, :cond_4

    const/16 v0, 0x118

    if-ge p1, v0, :cond_4

    const/16 p1, 0x10e

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 690
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$400(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$500(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 691
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity$OrientationDetector;->this$0:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->access$400(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->setCameraDisplayOrientation(I)V

    :cond_6
    return-void
.end method
