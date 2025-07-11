.class public Lcom/netease/mrzhna/CameraPreviewCapture;
.super Ljava/lang/Object;
.source "CameraPreviewCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "NeoX_CameraPreviewCapture"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFrameBuffer:[B

.field private mPreviewCallback:Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewCallback:Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 147
    iget-object p2, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mFrameBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 148
    iget-object p2, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewCallback:Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;

    iget v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    iget v1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    invoke-interface {p2, p1, v0, v1}, Lcom/netease/mrzhna/CameraPreviewCapture$PreviewCallback;->onPreviewFrame([BII)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mFrameBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 140
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 141
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_0
    return-void
.end method

.method public start(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 42
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 43
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :goto_0
    :try_start_1
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :try_start_2
    iget-object v4, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    iget-object v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    int-to-double v6, v1

    int-to-double v8, v2

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 74
    iput v5, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    .line 75
    iput v5, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    .line 76
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v12, "] "

    const-string v13, " x "

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 78
    iget v14, v5, Landroid/hardware/Camera$Size;->width:I

    .line 79
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v14

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    int-to-double v3, v5

    .line 80
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v3

    .line 81
    sget-object v3, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v14, v1, :cond_3

    if-le v5, v2, :cond_1

    goto :goto_2

    :cond_1
    sub-double/2addr v8, v6

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v12, v10, v8

    if-eqz v12, :cond_2

    cmpg-double v12, v3, v10

    if-gtz v12, :cond_4

    .line 86
    iget v12, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    if-le v12, v14, :cond_2

    iget v12, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    if-gt v12, v5, :cond_4

    .line 90
    :cond_2
    iput v14, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    .line 91
    iput v5, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    move-wide v10, v3

    goto :goto_3

    :cond_3
    :goto_2
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    :cond_4
    :goto_3
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1

    :cond_5
    move-object/from16 v16, v3

    .line 94
    sget-object v3, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefer ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v1, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    int-to-double v3, v3

    iget v5, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1e

    move-object/from16 v2, v16

    .line 97
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 98
    iget v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    iget v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    invoke-virtual {v2, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 99
    iget-object v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 101
    iget v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewWidth:I

    iget v3, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mPreviewHeight:I

    mul-int v1, v1, v3

    .line 102
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 103
    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    .line 104
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mFrameBuffer:[B

    .line 106
    iget-object v2, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 107
    iget-object v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 108
    iget-object v1, v0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    return-void

    .line 64
    :catch_0
    sget-object v1, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v2, "Cant set preview texture!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/CameraPreviewCapture;->stop()V

    return-void

    .line 56
    :catch_1
    sget-object v1, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v2, "Cant create surface texture!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/CameraPreviewCapture;->stop()V

    return-void

    .line 48
    :catch_2
    sget-object v1, Lcom/netease/mrzhna/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v2, "Cant open camera!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/netease/mrzhna/CameraPreviewCapture;->stop()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mFrameBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    iput-object v1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mFrameBuffer:[B

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 121
    iput-object v1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 126
    iget-object v0, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 127
    iput-object v1, p0, Lcom/netease/mrzhna/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    :cond_2
    return-void
.end method
