.class public final Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x384

.field private static final MAX_FRAME_WIDTH:I = 0x4b0

.field private static final MIN_FRAME_HEIGHT:I = 0x15e

.field private static final MIN_FRAME_WIDTH:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "UniQR manager"


# instance fields
.field private final activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

.field private autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

.field private camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

.field private cameraDisplayOrientation:I

.field private final configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private forceInitFromCameraParameters:Z

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->forceInitFromCameraParameters:Z

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    .line 79
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    .line 80
    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 81
    new-instance p1, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    .line 82
    new-instance p1, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

    return-void
.end method

.method private static findDesiredDimensionInRange(III)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    .line 284
    div-int/lit8 p0, p0, 0x8

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method


# virtual methods
.method public declared-synchronized autoFocus()V
    .locals 1

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 12

    .line 379
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    if-eqz v2, :cond_1

    .line 388
    :try_start_0
    new-instance v2, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v11, 0x0

    move-object v3, v2

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new PlanarYUVLuminanceSource exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UniQR manager"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->release()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    .line 164
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 165
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 166
    invoke-static {}, Lcom/netease/ntunisdk/zxing/client/android/ZoomHandler;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 6

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->forceInitFromCameraParameters:Z

    if-eqz v0, :cond_4

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 249
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 251
    :try_start_1
    iput-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->forceInitFromCameraParameters:Z

    .line 253
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->activity:Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/CaptureActivity;->getHeadHeight()I

    move-result v0

    .line 254
    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 257
    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    const-string v1, "UniQR manager"

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenResolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/16 v4, 0x15e

    if-ge v1, v3, :cond_3

    .line 263
    iget v1, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0x4b0

    invoke-static {v1, v4, v3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v1

    goto :goto_0

    .line 267
    :cond_3
    iget v1, v2, Landroid/graphics/Point;->y:I

    const/16 v3, 0x384

    invoke-static {v1, v4, v3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->findDesiredDimensionInRange(III)I

    move-result v1

    :goto_0
    const-string v3, "UniQR manager"

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width,height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 272
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    add-int v4, v3, v1

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    const-string v0, "UniQR manager"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    monitor-exit p0

    return-object v1

    .line 307
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 308
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 309
    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-ge v1, v4, :cond_2

    .line 316
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 317
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 318
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 319
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 322
    :cond_2
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 323
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 324
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 325
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 327
    :goto_0
    iput-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 312
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    .line 329
    :cond_4
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;Landroid/graphics/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;Landroid/graphics/Point;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;Landroid/graphics/Point;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iput-boolean p3, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->forceInitFromCameraParameters:Z

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-nez v0, :cond_1

    .line 96
    iget v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iput-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Camera.open() failed to return object from driver"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 105
    iget-boolean p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->initialized:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_3

    .line 106
    :cond_2
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 107
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0, p2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;Landroid/graphics/Point;)V

    .line 108
    iget p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez p1, :cond_3

    iget p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez p1, :cond_3

    .line 109
    iget p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    iget p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 110
    iput v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 111
    iput v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    .line 115
    :cond_3
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_1
    :try_start_1
    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p2, v0, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p2, "UniQR manager"

    const-string p3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    .line 121
    invoke-static {p2, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UniQR manager"

    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting to saved camera params: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 125
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_4
    const-string p1, "UniQR manager"

    const-string p2, "Camera rejected even safe-mode parameters! No configuration"

    .line 132
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/zxing/client/android/ZoomHandler;->init(Landroid/hardware/Camera;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 233
    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 235
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 403
    iget p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->cameraDisplayOrientation:I

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_3

    .line 404
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 405
    iput v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->cameraDisplayOrientation:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 408
    iget p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->cameraDisplayOrientation:I

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 409
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 410
    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->cameraDisplayOrientation:I

    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 0

    monitor-enter p0

    .line 339
    :try_start_0
    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 3

    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->initialized:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 352
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 353
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 355
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 356
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 358
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 359
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 360
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    const-string p1, "UniQR manager"

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated manual framing rect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 364
    :cond_2
    iput p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 365
    iput p2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->getTorchState(Landroid/hardware/Camera;)Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->configManager:Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 208
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    if-eqz p1, :cond_2

    .line 209
    new-instance p1, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    .line 210
    iget-object p1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startPreview()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_0

    .line 175
    iget-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 178
    new-instance v1, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 188
    iput-object v1, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/netease/ntunisdk/zxing/client/android/camera/AutoFocusManager;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->camera:Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/zxing/client/android/camera/open/OpenCamera;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 192
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 193
    iput-boolean v2, p0, Lcom/netease/ntunisdk/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
