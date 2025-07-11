.class public Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;
.super Ljava/lang/Object;
.source "EGLRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodeDecodeSurface"


# instance fields
.field private coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

.field private coverObj:Lorg/json/JSONObject;

.field private decodeSurface:Landroid/view/Surface;

.field private mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

.field private mFrameAvailable:Z

.field private mHasExternalWaterMark:Z

.field private mHasWaterMark:Z

.field private mInputHeight:I

.field private mInputWidth:I

.field private mIsLut:Ljava/lang/Boolean;

.field private mLutBitmap:Landroid/graphics/Bitmap;

.field private mLutLevel:F

.field private mLutTextureId:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

.field private mScreenTexture:Landroid/graphics/SurfaceTexture;

.field private mScreenTextureId:I

.field private mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

.field private mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

.field private maxRetryCover:I

.field private mbCaptureScreen:Z

.field private mbModeChange:Z

.field private mbRender2FBO:Z

.field private nextCaptureFrame:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    .line 33
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputWidth:I

    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputHeight:I

    .line 37
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    const/4 v3, 0x1

    .line 38
    iput-boolean v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mFrameAvailable:Z

    .line 39
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbModeChange:Z

    .line 40
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 41
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 42
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    .line 43
    iput-boolean v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbCaptureScreen:Z

    .line 44
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    .line 45
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasWaterMark:Z

    .line 46
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasExternalWaterMark:Z

    .line 48
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    .line 49
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    const/16 v3, 0xa

    .line 50
    iput v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    .line 51
    iput v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->nextCaptureFrame:I

    .line 53
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutTextureId:I

    .line 54
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mIsLut:Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutLevel:F

    .line 60
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    .line 61
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    .line 62
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    .line 63
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;

    invoke-direct {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenFBO;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    .line 64
    new-instance p1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-direct {p1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 65
    new-instance p1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-direct {p1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    .line 33
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputHeight:I

    .line 37
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    const/4 v2, 0x1

    .line 38
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mFrameAvailable:Z

    .line 39
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbModeChange:Z

    .line 40
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 41
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 42
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    .line 43
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbCaptureScreen:Z

    .line 44
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    .line 45
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasWaterMark:Z

    .line 46
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasExternalWaterMark:Z

    .line 48
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    .line 49
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    const/16 v2, 0xa

    .line 50
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    .line 51
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->nextCaptureFrame:I

    .line 53
    iput p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutTextureId:I

    .line 54
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mIsLut:Ljava/lang/Boolean;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 56
    iput p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutLevel:F

    .line 70
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    .line 71
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    .line 72
    new-instance p3, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    invoke-direct {p3}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;-><init>()V

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    .line 73
    new-instance p3, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;

    invoke-direct {p3, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureFBO;-><init>(II)V

    iput-object p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    .line 74
    new-instance p1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-direct {p1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 75
    new-instance p1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-direct {p1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;-><init>()V

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    return-void
.end method

.method private checkCapture()V
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    const-string v1, "[CCR]"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    if-lez v5, :cond_6

    const-string v5, "path"

    .line 228
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, v3}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;->onCoverResult(Ljava/lang/String;)V

    .line 231
    :cond_0
    iput-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->nextCaptureFrame:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->nextCaptureFrame:I

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xa

    .line 238
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->nextCaptureFrame:I

    .line 240
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    .line 241
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-string v8, "scale"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->captureFrame(F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 242
    invoke-static {v0}, Lcom/netease/cc/screen_record/codec/screencapture/InnerUtils;->blackBmpCheck(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 243
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->notifySucCover(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 245
    :cond_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "[CCR] invalid bmp(null?%b)"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    .line 247
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->notifySucCover(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    :cond_6
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->maxRetryCover:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 255
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "[CCR] capture fail and timeout(%s)"

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    .line 257
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    if-eqz v0, :cond_7

    .line 258
    invoke-interface {v0, v3}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;->onCoverResult(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private notifySucCover(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 211
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/InnerUtils;->saveBmpToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 214
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    if-eqz p1, :cond_1

    .line 215
    invoke-interface {p1, v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;->onCoverResult(Ljava/lang/String;)V

    .line 216
    :cond_1
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    goto :goto_1

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    if-eqz p1, :cond_3

    .line 219
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[CCR] fail to save file"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    invoke-interface {p1, v1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;->onCoverResult(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public awaitNewImage()Z
    .locals 2

    const/4 v0, 0x0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 146
    iget-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    .line 147
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mFrameAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public drawImage()V
    .locals 5

    .line 178
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbCaptureScreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mIsLut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    iget-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->renderToTexture(IZ)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->updateLutTexture()V

    .line 183
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutTextureId:I

    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutLevel:F

    iget-boolean v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->renderToTexture(IIFZ)V

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->checkCapture()V

    .line 186
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateTexture()I

    .line 187
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasExternalWaterMark:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateTexture()I

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasWaterMark:Z

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getRBVertex()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getFBTexture()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->renderToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasExternalWaterMark:Z

    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getTextureId()I

    move-result v1

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v2}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getRBVertex()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->getFBTexture()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->renderToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    :cond_3
    return-void
.end method

.method public getDecodeSurface()Landroid/view/Surface;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->getTextureId()I

    move-result v0

    return v0
.end method

.method public init(ZIIIIZZI)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p8

    .line 81
    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    if-ne v2, v4, :cond_0

    .line 82
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/GlUtil;->getExternalOESTextureID()I

    move-result v2

    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    goto :goto_0

    .line 84
    :cond_0
    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    .line 86
    :goto_0
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    .line 89
    :cond_1
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 90
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 92
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    if-nez v2, :cond_2

    .line 93
    new-instance v2, Landroid/view/Surface;

    iget-object v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    .line 95
    :cond_2
    iput-boolean v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    move v2, p1

    .line 96
    iput-boolean v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbCaptureScreen:Z

    .line 97
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mIsLut:Ljava/lang/Boolean;

    .line 98
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    move/from16 v3, p7

    invoke-virtual {v2, v1, v3}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->init(ZZ)V

    .line 99
    iget-object v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    invoke-virtual {v1}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->init()V

    .line 100
    iget-object v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    iget v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iget v4, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    const/4 v7, 0x1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->init(IIIIZ)V

    .line 101
    iget-object v8, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    iget v9, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iget v10, v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    const/4 v13, 0x1

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->init(IIIIZ)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mFrameAvailable:Z

    return-void
.end method

.method public onInputSizeChange(II)V
    .locals 1

    .line 163
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputWidth:I

    .line 164
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputHeight:I

    .line 165
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputWidth:I

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mInputHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->setInputSize(II)V

    return-void
.end method

.method public onOutputSizeChange(IIII)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    .line 170
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    .line 171
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iget p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->setOutputSize(II)V

    .line 172
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputWidth:I

    iget p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mOutputHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->setOutputSize(II)V

    return-void
.end method

.method public release()V
    .locals 5

    .line 272
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 273
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 274
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 279
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 280
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->release()V

    .line 285
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->release()V

    .line 290
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 294
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    :cond_4
    return-void
.end method

.method public resetOpenGLData()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->resetOpenGLData()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mTextureRender:Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRender;->resetOpenGlData()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 114
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->decodeSurface:Landroid/view/Surface;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 118
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTexture:Landroid/graphics/SurfaceTexture;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->release()V

    .line 124
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->release()V

    .line 129
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    .line 132
    :cond_5
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 133
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 134
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenTextureId:I

    :cond_6
    return-void
.end method

.method public setCoverCallback(Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverCb:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;

    return-void
.end method

.method public setCoverObj(Lorg/json/JSONObject;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->coverObj:Lorg/json/JSONObject;

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->setBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasExternalWaterMark:Z

    .line 313
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mExternalWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    invoke-virtual {p2, p1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->setExternalWaterMark(Z)V

    :cond_0
    return-void
.end method

.method public setLutBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutBitmap:Landroid/graphics/Bitmap;

    int-to-float p1, p2

    .line 322
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutLevel:F

    :cond_0
    return-void
.end method

.method public setRecordRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mScreenFBO:Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/BaseFBO;->setRecordRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setWaterMarkBitmap(Landroid/graphics/Bitmap;I)V
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mWaterMarkTexture:Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 302
    sget-object v5, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->setBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mHasWaterMark:Z

    :cond_0
    return-void
.end method

.method public updateImage()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->awaitNewImage()Z

    move-result v0

    .line 199
    iget-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbRender2FBO:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 200
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbModeChange:Z

    if-eqz v0, :cond_2

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->drawImage()V

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mbModeChange:Z

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->drawImage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateLutTexture()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 331
    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutTextureId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/GlUtil;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutTextureId:I

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->mLutBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
