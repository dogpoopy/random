.class public Lcom/netease/mrzhna/VideoPlayer;
.super Landroid/app/Activity;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505


# instance fields
.field private mInAsset:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoControlMode:I

.field private mVideoHeight:I

.field private mVideoPath:Ljava/lang/String;

.field private mVideoScaleMode:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 38
    iput-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mInAsset:Z

    return-void
.end method

.method private Play(Ljava/lang/String;)Z
    .locals 8

    .line 241
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 243
    iget-boolean v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mInAsset:Z

    const-string v1, "NeoX:MediaPlayer "

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 248
    iget-object v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 249
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 250
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "play video in asset error"

    .line 256
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 264
    iget-object v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 265
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 266
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 267
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "play video error"

    .line 271
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setFitToFillAspectRatio(Landroid/media/MediaPlayer;II)V
    .locals 4

    if-eqz p1, :cond_6

    .line 283
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    .line 284
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    .line 286
    iget p2, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 292
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 294
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_1

    .line 296
    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 300
    :cond_1
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 301
    invoke-virtual {p2, p3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    iget p2, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 303
    iget p2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 306
    :goto_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 307
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 310
    iget-object p3, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 312
    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 313
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 315
    iget v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoScaleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 318
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 323
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 342
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " height : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeoX:MediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video play width : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 288
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->stopVideo()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 194
    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoControlMode:I

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->stopVideo()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoview"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/VideoPlayer;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "videoPath"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoPath:Ljava/lang/String;

    const-string v0, "videoScaleMode"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoScaleMode:I

    const-string v0, "videoControlMode"

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoControlMode:I

    const-string v0, "inAsset"

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mInAsset:Z

    .line 72
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "surfaceView1"

    const-string v3, "id"

    invoke-virtual {p1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 78
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 79
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 81
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 p1, 0x6

    .line 84
    invoke-virtual {p0, p1}, Lcom/netease/mrzhna/VideoPlayer;->setRequestedOrientation(I)V

    .line 86
    iget p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoControlMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Lcom/netease/mrzhna/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/VideoPlayer$1;-><init>(Lcom/netease/mrzhna/VideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_2

    .line 107
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 109
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 222
    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    const-string v1, " height : "

    const-string v2, "NeoX:MediaPlayer"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video width : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 226
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video is invaild , width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->stopVideo()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mrzhna/VideoPlayer;->setFitToFillAspectRatio(Landroid/media/MediaPlayer;II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    .line 126
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v0, 0x505

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopVideo()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 205
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video stop"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnStopVideoCallBack()V

    .line 214
    invoke-virtual {p0}, Lcom/netease/mrzhna/VideoPlayer;->finish()V

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0, v0}, Lcom/netease/mrzhna/VideoPlayer;->overridePendingTransition(II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "NeoX:MediaPlayer"

    const-string p2, "surface changed"

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "NeoX:MediaPlayer"

    const-string v0, "surface creaed start!"

    .line 161
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 164
    iget-object v1, p0, Lcom/netease/mrzhna/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 165
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 166
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 167
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 168
    iget-object v0, p0, Lcom/netease/mrzhna/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "surface create error"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "surface creaed end!"

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/netease/mrzhna/VideoPlayer;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/mrzhna/VideoPlayer;->Play(Ljava/lang/String;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "NeoX:MediaPlayer"

    const-string v0, "surface destroyed"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
