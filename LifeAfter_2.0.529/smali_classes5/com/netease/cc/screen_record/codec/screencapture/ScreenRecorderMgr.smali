.class public Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;
.super Ljava/lang/Object;
.source "ScreenRecorderMgr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_INIT:I = 0x1f4

.field private static final MSG_INPUT_SIZE_CHANGE:I = 0x1fb

.field private static final MSG_OUT_PUT_SIZE_CHANGE:I = 0x1fa

.field private static final MSG_PAUSE_LIVE:I = 0x209

.field private static final MSG_RELEASE:I = 0x208

.field private static final MSG_RESUME_LIVE:I = 0x20a

.field private static final MSG_SET_EXTERNAL_WATERMARK_BITMAP:I = 0x1f9

.field private static final MSG_SET_LUT:I = 0x1fd

.field private static final MSG_SET_RECODE_RECT:I = 0x1fc

.field private static final MSG_SET_WATERMARK_BITMAP:I = 0x1f8

.field private static final MSG_START_LIVE:I = 0x1f5

.field private static final MSG_STOP_LIVE:I = 0x1f6

.field private static final MSG_UPDATE_RGBA_BUFFER:I = 0x20b

.field private static final MSG_UPDATE_SURFACE:I = 0x1f7

.field private static final TAG:Ljava/lang/String; = "ScreenRecorderMgr"


# instance fields
.field private final CENTER_DISPLAY:I

.field private final DEFAULT_DISPLAY:I

.field private eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

.field private iFrameInterval:F

.field private init_fps:I

.field private isExtTexId:Z

.field private isLive:Z

.field private isLut:Z

.field private jConfig:Lorg/json/JSONObject;

.field private mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

.field private mExtTexId:I

.field private mFps:I

.field private mFpsInterval:I

.field private mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

.field private mHandler:Landroid/os/Handler;

.field private mInputDpi:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mRenderOption:I

.field private mScreenRect:Landroid/graphics/RectF;

.field private mSharedContext:Landroid/opengl/EGLContext;

.field private mThread:Landroid/os/HandlerThread;

.field private mVbr:I

.field private mbEnableCaptureScreen:Z

.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private releaseSig:Ljava/lang/Object;

.field private renderHeight:I

.field private renderWidth:I

.field private screenDpi:I

.field private screenHeight:I

.field private screenWidth:I

.field private target_screen_height:I

.field private target_screen_width:I

.field private videoHeight:I

.field private videoWidth:I

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->init_fps:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    .line 53
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    .line 55
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    .line 56
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/16 v2, 0x42

    .line 57
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFpsInterval:I

    .line 58
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputWidth:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputHeight:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputDpi:I

    const/16 v2, 0x14

    .line 59
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFps:I

    const/16 v2, 0x7d0

    .line 60
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mVbr:I

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mbEnableCaptureScreen:Z

    .line 70
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->jConfig:Lorg/json/JSONObject;

    .line 71
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLut:Z

    .line 72
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 80
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    const/4 v3, -0x1

    .line 81
    iput v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mExtTexId:I

    .line 82
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->releaseSig:Ljava/lang/Object;

    .line 89
    iput v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->CENTER_DISPLAY:I

    .line 90
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->DEFAULT_DISPLAY:I

    return-void
.end method

.method public constructor <init>(IIIIIIFIILandroid/graphics/RectF;Landroid/media/projection/MediaProjection;Lorg/json/JSONObject;ZZ)V
    .locals 10

    move-object v7, p0

    move/from16 v8, p8

    move-object/from16 v9, p10

    .line 93
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;-><init>()V

    move v0, p5

    .line 94
    iput v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFps:I

    move/from16 v0, p6

    .line 95
    iput v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mVbr:I

    move v1, p1

    .line 96
    iput v1, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenWidth:I

    move v2, p2

    .line 97
    iput v2, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenHeight:I

    move/from16 v0, p7

    .line 98
    iput v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->iFrameInterval:F

    .line 99
    iput v8, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenDpi:I

    move-object/from16 v0, p12

    .line 100
    iput-object v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->jConfig:Lorg/json/JSONObject;

    .line 101
    iput-object v9, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mScreenRect:Landroid/graphics/RectF;

    move/from16 v5, p9

    .line 102
    iput v5, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mRenderOption:I

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object/from16 v6, p10

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->determineVideoSize(IIIIILandroid/graphics/RectF;)V

    move-object/from16 v0, p11

    .line 104
    iput-object v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 105
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->initThread()V

    move/from16 v0, p13

    .line 106
    iput-boolean v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLut:Z

    move/from16 v0, p14

    .line 107
    iput-boolean v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    .line 108
    invoke-virtual {p0, v9}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setRecordRect(Landroid/graphics/RectF;)V

    .line 109
    iget v0, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    iget v1, v7, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    invoke-virtual {p0, v0, v1, v8}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->setInputSize(III)V

    return-void
.end method

.method private doRelease()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->release()V

    .line 278
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->release()V

    .line 282
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->release()V

    .line 286
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    :cond_2
    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mExtTexId:I

    .line 289
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    const-string v0, "ScreenRecorderMgr"

    const-string v1, "==========release test================"

    .line 291
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doStartLive()V
    .locals 9

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    .line 306
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isRender2FBO()Z

    move-result v0

    const/16 v1, 0x1f7

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->prepare()V

    .line 308
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->startScreenRecorder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->startEncode()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-interface {v0, v2}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->setSharedContext(Landroid/opengl/EGLContext;)V

    .line 316
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    iget v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFps:I

    iget v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mVbr:I

    iget v8, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->iFrameInterval:F

    invoke-interface/range {v3 .. v8}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->startEncode(IIIIF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->prepare()V

    .line 319
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->startScreenRecorder()Z

    .line 320
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz v0, :cond_3

    .line 323
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "CreateVEncoder"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->onError(Ljava/lang/Exception;)V

    .line 324
    :cond_3
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->doStopLive()V

    :cond_4
    :goto_0
    return-void
.end method

.method private doStopLive()V
    .locals 3

    .line 330
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    .line 332
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->stopEncode()V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 337
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 339
    :cond_1
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->init_fps:I

    .line 340
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isRender2FBO()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->resetOpenGLData()V

    .line 342
    :cond_2
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    :cond_3
    return-void
.end method

.method private eglSetup()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    .line 298
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->eglSetup(Landroid/opengl/EGLContext;I)V

    .line 299
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    .line 300
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->makeCurrent()V

    :cond_0
    return-void
.end method

.method private initEglRender()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-nez v0, :cond_1

    .line 224
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;-><init>(IIZ)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    :cond_1
    :goto_0
    return-void
.end method

.method private initThread()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GLThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private isReadyToEncode()Z
    .locals 3

    .line 352
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->init_fps:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    add-int/2addr v0, v1

    .line 355
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->init_fps:I

    const/4 v0, 0x0

    return v0
.end method

.method private isRender2FBO()Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/netease/cc/screen_record/codec/VideoEncoder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private prepare()V
    .locals 11

    .line 233
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFps:I

    const/16 v1, 0x3e8

    div-int/2addr v1, v0

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFpsInterval:I

    .line 234
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isRender2FBO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglSetup()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_2

    .line 238
    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->jConfig:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v2, "cover_image"

    .line 239
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setCoverObj(Lorg/json/JSONObject;)V

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget-boolean v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mbEnableCaptureScreen:Z

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenWidth:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenHeight:I

    iget v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    iget v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isRender2FBO()Z

    move-result v8

    iget-boolean v9, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLut:Z

    iget v10, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mExtTexId:I

    invoke-virtual/range {v2 .. v10}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->init(ZIIIIZZI)V

    .line 241
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->onInputSizeChange(II)V

    .line 242
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->onOutputSizeChange(IIII)V

    :cond_2
    return-void
.end method

.method private startScreenRecorder()Z
    .locals 11

    .line 205
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    if-nez v0, :cond_0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v3, "screen"

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenWidth:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenHeight:I

    iget v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenDpi:I

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    .line 210
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 208
    invoke-virtual/range {v2 .. v10}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public determineVideoSize(IIIIILandroid/graphics/RectF;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    .line 114
    iput v3, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    move/from16 v4, p2

    .line 115
    iput v4, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x6

    const-string v10, "[CCR]"

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-eqz p6, :cond_0

    .line 117
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v13

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 118
    iget v13, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    int-to-float v13, v13

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float v13, v13, v14

    float-to-int v13, v13

    iput v13, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    .line 119
    iget v13, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    int-to-float v13, v13

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float v13, v13, v14

    float-to-int v13, v13

    iput v13, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    new-array v13, v9, [Ljava/lang/Object;

    .line 121
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v11

    iget v14, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v7

    iget v14, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "[rect] resize input for rect(%f-%f) -> (%d-%d) scr(%d-%d)"

    .line 120
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move/from16 v13, p5

    if-ne v13, v11, :cond_2

    .line 124
    iget v13, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    mul-int v14, v13, v1

    iget v15, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    mul-int v5, v2, v15

    if-ge v14, v5, :cond_1

    .line 125
    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    .line 126
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    mul-int v5, v5, v13

    div-int/2addr v5, v15

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    goto :goto_0

    .line 128
    :cond_1
    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    .line 129
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    mul-int v5, v5, v15

    div-int/2addr v5, v13

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    .line 131
    :goto_0
    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    .line 132
    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    goto :goto_2

    .line 135
    :cond_2
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_width:I

    mul-int v13, v5, v2

    int-to-long v13, v13

    .line 136
    iget v15, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->target_screen_height:I

    mul-int v6, v15, v1

    int-to-long v7, v6

    cmp-long v6, v13, v7

    if-eqz v6, :cond_4

    if-le v15, v5, :cond_3

    .line 140
    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    .line 141
    iget v6, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    mul-int v6, v6, v5

    div-int/2addr v6, v15

    iput v6, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    goto :goto_1

    .line 143
    :cond_3
    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    .line 144
    iget v6, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    mul-int v6, v6, v15

    div-int/2addr v6, v5

    iput v6, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    goto :goto_1

    .line 147
    :cond_4
    iput v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    .line 148
    iput v2, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    .line 150
    :goto_1
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    .line 151
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    .line 154
    :goto_2
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    rem-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_5

    .line 155
    div-int/2addr v5, v12

    mul-int/lit8 v5, v5, 0x4

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    .line 156
    :cond_5
    iget v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    rem-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_6

    .line 157
    div-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x8

    iput v5, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    :cond_6
    new-array v5, v9, [Ljava/lang/Object;

    .line 159
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v5, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    iget v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v12

    iget v1, v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->videoHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v5, v2

    const-string v1, "[rect] s(%d * %d) v-i(%d * %d) v-o(%d * %d)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 396
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 469
    :pswitch_0
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    if-eqz p1, :cond_1

    const-string p1, "ScreenRecorderMgr"

    const-string v0, "[GameTex] update rgba buffer."

    .line 470
    invoke-static {p1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->updateImage()V

    .line 472
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz p1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->getTextureId()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->frameAvailable(ILandroid/graphics/SurfaceTexture;)V

    goto/16 :goto_0

    .line 414
    :pswitch_1
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz p1, :cond_1

    .line 415
    invoke-interface {p1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->resumeEncode()V

    goto/16 :goto_0

    .line 409
    :pswitch_2
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz p1, :cond_1

    .line 410
    invoke-interface {p1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->pauseEncode()V

    goto/16 :goto_0

    .line 464
    :pswitch_3
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    if-eqz p1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->doStopLive()V

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->doRelease()V

    goto/16 :goto_0

    .line 443
    :pswitch_4
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 444
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setLutBitmap(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 460
    :pswitch_5
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 461
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setRecordRect(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 447
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputWidth:I

    .line 448
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputHeight:I

    .line 449
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputDpi:I

    .line 450
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz p1, :cond_1

    .line 451
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputWidth:I

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mInputHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->onInputSizeChange(II)V

    .line 452
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_1

    .line 453
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 454
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenWidth:I

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenHeight:I

    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenDpi:I

    invoke-virtual {p1, v0, v1, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    goto/16 :goto_0

    .line 427
    :pswitch_7
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 428
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->onOutputSizeChange(IIII)V

    goto :goto_0

    .line 437
    :pswitch_8
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 438
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;

    .line 439
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    iget-object v4, p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->bitmap:Landroid/graphics/Bitmap;

    iget v5, p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->waterMarkWidth:I

    iget v6, p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->offsetLeftTopCornerX:I

    iget v7, p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->offsetLeftTopCornerY:I

    iget-object v8, p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;->lb:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-virtual/range {v3 .. v8}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V

    goto :goto_0

    .line 433
    :pswitch_9
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    if-eqz v0, :cond_1

    .line 434
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setWaterMarkBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 419
    :pswitch_a
    iget-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isLive:Z

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f7

    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFpsInterval:I

    int-to-long v3, v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->updateImage()V

    .line 422
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isReadyToEncode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->getTextureId()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/netease/cc/screen_record/codec/encoder/FrameListener;->frameAvailable(ILandroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 406
    :pswitch_b
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->doStopLive()V

    goto :goto_0

    .line 401
    :pswitch_c
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->initEglRender()V

    .line 402
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->doStartLive()V

    goto :goto_0

    .line 398
    :pswitch_d
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->initEglRender()V

    :cond_1
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x208
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOutputSizeChange(II)V
    .locals 7

    .line 178
    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->screenHeight:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mRenderOption:I

    iget-object v6, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mScreenRect:Landroid/graphics/RectF;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->determineVideoSize(IIIIILandroid/graphics/RectF;)V

    .line 179
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->renderHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/16 p1, 0x1fa

    .line 179
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public pauseLive()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x209

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1f6

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 260
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x208

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0xc8

    .line 264
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread join exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenRecorderMgr"

    invoke-static {v2, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mThread:Landroid/os/HandlerThread;

    .line 271
    :cond_1
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public resumeLive()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x20a

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setContextAndTexId(Landroid/opengl/EGLContext;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    .line 383
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mExtTexId:I

    .line 384
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    .line 386
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GameTex ScreenRecorderMgr. isExtTexture? ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->isExtTexId:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "] TexId ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mExtTexId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Ctx ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenRecorderMgr"

    invoke-static {p2, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCoverCallback(Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->eglRender:Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;

    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/screencapture/EGLRender;->setCoverCallback(Lcom/netease/cc/screen_record/codec/screencapture/EGLRender$CoverCallback;)V

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    .locals 7

    .line 367
    new-instance v6, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;

    move-object v0, v6

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo;-><init>(Landroid/graphics/Bitmap;IILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;I)V

    .line 368
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x1f9

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFrameListener(Lcom/netease/cc/screen_record/codec/encoder/FrameListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mFrameListener:Lcom/netease/cc/screen_record/codec/encoder/FrameListener;

    return-void
.end method

.method public setInputSize(III)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x1fb

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setLut(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRecordRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x1fc

    invoke-virtual {v0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setWaterMarkBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startLive()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopLive()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateRGBABuffer()V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenRecorderMgr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x20b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
