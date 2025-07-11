.class final Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 41
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 46
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v1, :cond_0

    .line 48
    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    iget v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 36
    iput p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
