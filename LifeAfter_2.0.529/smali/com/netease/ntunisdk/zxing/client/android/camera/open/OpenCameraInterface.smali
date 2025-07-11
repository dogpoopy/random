.class public final Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCameraInterface;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static final NO_REQUESTED_CAMERA:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UniQR camera"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(I)Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;
    .locals 9

    .line 46
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UniQR camera"

    if-nez v0, :cond_0

    const-string p0, "No cameras!"

    .line 48
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v3, 0x0

    if-ltz p0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 58
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 59
    invoke-static {p0, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    move-object v6, v5

    move v5, p0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    .line 63
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 64
    invoke-static {v5, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 65
    invoke-static {}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->values()[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    move-result-object v7

    iget v8, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v7, v7, v8

    .line 66
    sget-object v8, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_2
    if-ge v5, v0, :cond_5

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Opening camera #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested camera does not exist: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_3

    .line 83
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No camera facing "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->BACK:Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; returning camera #0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    .line 85
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 86
    invoke-static {v3, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    :goto_3
    if-nez p0, :cond_7

    return-object v1

    .line 93
    :cond_7
    new-instance v0, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-static {}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;->values()[Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;

    move-result-object v1

    iget v2, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    aget-object v1, v1, v2

    iget v2, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {v0, v5, p0, v1, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;-><init>(ILandroid/hardware/Camera;Lcom/netease/ntunisdk/zxing/client/android/camera/open/CameraFacing;I)V

    return-object v0
.end method
