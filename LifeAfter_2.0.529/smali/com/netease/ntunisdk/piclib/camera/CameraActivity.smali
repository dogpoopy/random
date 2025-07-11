.class public Lcom/netease/ntunisdk/piclib/camera/CameraActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;
.implements Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissOperationTips;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissFocusRunnableImpl;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$PressImageView;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;,
        Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;
    }
.end annotation


# static fields
.field public static final CATCH_RESULT:Ljava/lang/String; = "catch_result"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final REQUEST_CODE:I = 0x3e9

.field public static final RESULT_CODE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "CameraActivity"

.field public static final VIDEO_SIZE_LIMIT:Ljava/lang/String; = "video_size_limit"

.field public static final VIDEO_TIME_LIMIT:Ljava/lang/String; = "video_time_limit"

.field private static hasAskedAudioPermission:Z

.field public static language:Ljava/lang/String;


# instance fields
.field private final animatorSet:Landroid/animation/AnimatorSet;

.field private cacheDir:Ljava/io/File;

.field private cameraControl:Landroidx/camera/core/CameraControl;

.field private cameraInfo:Landroidx/camera/core/CameraInfo;

.field private cameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation
.end field

.field private catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

.field private dismissFocusRunnable:Ljava/lang/Runnable;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private facingBackUseDefaultQuality:Z

.field private facingDirection:I

.field private facingFrontUseDefaultQuality:Z

.field private flashMode:I

.field private focusClickX:F

.field private focusClickY:F

.field private frontCameraAvailable:Z

.field private ignoreFacingBackSize:Z

.field private ignoreFacingFrontSize:Z

.field private imageCapture:Landroidx/camera/core/ImageCapture;

.field private ivFinish:Landroid/widget/ImageView;

.field private ivFlashMode:Landroid/widget/ImageView;

.field private ivFocus:Landroid/widget/ImageView;

.field private ivFocusSideHalfLength:I

.field private ivSwitchFrontBack:Landroid/widget/ImageView;

.field private volatile lastTotalSize:J

.field private mainExecutor:Ljava/util/concurrent/Executor;

.field private mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private pvViewFinder:Landroidx/camera/view/PreviewView;

.field private quality:I

.field private volatile recordVideoBeginTime:J

.field private recording:Landroidx/camera/video/Recording;

.field private rotation:I

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private volatile stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

.field private timer:Landroid/os/Handler;

.field private tvOperationTips:Landroid/widget/TextView;

.field private videoCapture:Landroidx/camera/video/VideoCapture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/VideoCapture<",
            "Landroidx/camera/video/Recorder;",
            ">;"
        }
    .end annotation
.end field

.field private videoSizeLimit:I

.field private videoTimeLimit:I

.field private widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x2

    .line 84
    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    const/4 v0, 0x3

    .line 87
    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->quality:I

    .line 104
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const v0, 0x2bf20

    .line 117
    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F
    .locals 0

    .line 73
    iget p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->focusClickX:F

    return p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;F)F
    .locals 0

    .line 73
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->focusClickX:F

    return p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)F
    .locals 0

    .line 73
    iget p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->focusClickY:F

    return p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;F)F
    .locals 0

    .line 73
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->focusClickY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoSizeLimit:I

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/video/Recording;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->lastTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;J)J
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->lastTotalSize:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recordVideoBegin()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Landroidx/camera/video/VideoRecordEvent$Finalize;Ljava/io/File;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recordVideoEnd(Landroidx/camera/video/VideoRecordEvent$Finalize;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroid/widget/TextView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->updateRotation(I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;FF)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->showFocus(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/view/PreviewView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->pvViewFinder:Landroidx/camera/view/PreviewView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraControl;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraControl:Landroidx/camera/core/CameraControl;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)Landroidx/camera/core/CameraInfo;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraInfo:Landroidx/camera/core/CameraInfo;

    return-object p0
.end method

.method private bindFocusAnimation()V
    .locals 5

    .line 805
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 806
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 807
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 808
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private checkCameraAbility()V
    .locals 1

    const-string v0, "1"

    .line 287
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CheckCameraAbility;->checkPictureVideoCombinationAbility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->frontCameraAvailable:Z

    return-void
.end method

.method public static createLocal(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    const-string v0, "ZH_CN"

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "zh-Hans"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ZH_HK"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ZH_TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "zh-Hant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    goto :goto_2

    .line 168
    :cond_3
    :goto_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    :goto_2
    return-object v0
.end method

.method private doTakePicture()V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->disableSingleClick()V

    .line 340
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_uni_pe_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTakePicture -> image file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v1, Landroidx/camera/core/ImageCapture$Metadata;

    invoke-direct {v1}, Landroidx/camera/core/ImageCapture$Metadata;-><init>()V

    .line 343
    new-instance v2, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    invoke-direct {v2, v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    .line 344
    invoke-virtual {v2, v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->setMetadata(Landroidx/camera/core/ImageCapture$Metadata;)Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$3;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Ljava/io/File;)V

    invoke-virtual {v2, v1, v3, v4}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method private getTakeImageSize(II)Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "quality",
            "rotation"
        }
    .end annotation

    .line 742
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTakeImageSize -> quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    new-array p1, v2, [I

    .line 745
    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    new-array p1, v2, [I

    .line 747
    fill-array-data p1, :array_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    new-array p1, v2, [I

    .line 749
    fill-array-data p1, :array_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    new-array p1, v2, [I

    .line 751
    fill-array-data p1, :array_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    new-array p1, v2, [I

    .line 753
    fill-array-data p1, :array_4

    goto :goto_0

    :cond_4
    new-array p1, v2, [I

    .line 755
    fill-array-data p1, :array_5

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_1

    .line 763
    :cond_5
    aget p2, p1, v1

    .line 764
    aget p1, p1, v3

    goto :goto_2

    .line 760
    :cond_6
    :goto_1
    aget p2, p1, v3

    .line 761
    aget p1, p1, v1

    .line 766
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTakeImageSize -> width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1e0
        0x2d0
    .end array-data

    :array_1
    .array-data 4
        0x2d0
        0x500
    .end array-data

    :array_2
    .array-data 4
        0x438
        0x780
    .end array-data

    :array_3
    .array-data 4
        0x5a0
        0xa00
    .end array-data

    :array_4
    .array-data 4
        0x870
        0xf00
    .end array-data

    :array_5
    .array-data 4
        0x438
        0x780
    .end array-data
.end method

.method private handleIntent()V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    goto :goto_0

    .line 294
    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const-string v2, "video_size_limit"

    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoSizeLimit:I

    const v1, 0x2bf20

    const-string v2, "video_time_limit"

    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 300
    iput v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    :cond_2
    const/4 v1, 0x3

    const-string v2, "quality"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->quality:I

    .line 303
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent -> quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->quality:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent -> videoSizeLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoSizeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent -> videoTimeLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasAudioPermission()Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 390
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initCamera()V
    .locals 12

    const/4 v0, 0x1

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->disableCatchMedia()V

    .line 575
    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 576
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFlashMode:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->switchFlashMode(Landroid/view/View;)V

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 580
    invoke-virtual {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 582
    new-instance v3, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v3}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 583
    invoke-virtual {v3}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v3

    .line 584
    new-instance v4, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v4}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    invoke-virtual {v4, v5}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v4

    .line 587
    iget v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->quality:I

    .line 588
    iget v6, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    if-ne v6, v0, :cond_1

    iget-boolean v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingBackUseDefaultQuality:Z

    if-nez v7, :cond_2

    :cond_1
    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingFrontUseDefaultQuality:Z

    if-eqz v6, :cond_3

    :cond_2
    const/4 v5, 0x2

    .line 592
    :cond_3
    sget-object v6, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initCamera -> theQuality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initCamera -> rotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-direct {p0, v5, v7}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getTakeImageSize(II)Landroid/util/Size;

    move-result-object v7

    .line 596
    new-instance v8, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v8}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    sget-object v9, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 597
    invoke-virtual {v8, v9}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v8

    .line 598
    iget v9, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    const/4 v10, 0x3

    if-ne v9, v0, :cond_4

    iget-boolean v11, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingBackSize:Z

    if-nez v11, :cond_5

    :cond_4
    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingFrontSize:Z

    if-eqz v9, :cond_6

    :cond_5
    const-string v9, "initCamera -> ignoreSize"

    .line 600
    invoke-static {v6, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_6
    new-instance v6, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    invoke-direct {v6, v7, v10}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;I)V

    .line 603
    invoke-virtual {v8, v6}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 605
    :goto_0
    invoke-virtual {v8}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v6

    .line 607
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    sget-object v9, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    if-ne v8, v9, :cond_7

    .line 608
    new-instance v2, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v2}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 609
    invoke-virtual {v2, v0}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v2

    iget v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    .line 610
    invoke-virtual {v2, v5}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v2

    iget v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    .line 611
    invoke-virtual {v2, v5}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v2

    .line 612
    invoke-virtual {v2, v6}, Landroidx/camera/core/ImageCapture$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v2

    .line 613
    invoke-virtual {v2}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    .line 615
    new-instance v2, Landroidx/camera/core/ViewPort$Builder;

    new-instance v5, Landroid/util/Rational;

    .line 616
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Rational;-><init>(II)V

    iget v6, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-direct {v2, v5, v6}, Landroidx/camera/core/ViewPort$Builder;-><init>(Landroid/util/Rational;I)V

    invoke-virtual {v2}, Landroidx/camera/core/ViewPort$Builder;->build()Landroidx/camera/core/ViewPort;

    move-result-object v2

    .line 617
    new-instance v5, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v5}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    .line 618
    invoke-virtual {v5, v3}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    .line 619
    invoke-virtual {v5, v6}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v5

    .line 620
    invoke-virtual {v5, v2}, Landroidx/camera/core/UseCaseGroup$Builder;->setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    .line 623
    invoke-virtual {v1, p0, v4, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    if-ne v5, v0, :cond_8

    .line 627
    sget-object v5, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    invoke-static {v5}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;

    move-result-object v5

    goto :goto_2

    :cond_8
    if-ne v5, v2, :cond_9

    .line 629
    sget-object v5, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    invoke-static {v5}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;

    move-result-object v5

    goto :goto_2

    :cond_9
    if-eq v5, v10, :cond_c

    const/4 v7, 0x4

    if-ne v5, v7, :cond_a

    goto :goto_1

    :cond_a
    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 633
    sget-object v5, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    invoke-static {v5}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;

    move-result-object v5

    goto :goto_2

    .line 635
    :cond_b
    sget-object v5, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-static {v5}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;

    move-result-object v5

    goto :goto_2

    .line 631
    :cond_c
    :goto_1
    sget-object v5, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-static {v5}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;

    move-result-object v5

    .line 638
    :goto_2
    new-instance v7, Landroidx/camera/video/Recorder$Builder;

    invoke-direct {v7}, Landroidx/camera/video/Recorder$Builder;-><init>()V

    .line 639
    invoke-virtual {v7, v5}, Landroidx/camera/video/Recorder$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/Recorder$Builder;

    move-result-object v5

    .line 640
    invoke-virtual {v5, v0}, Landroidx/camera/video/Recorder$Builder;->setAspectRatio(I)Landroidx/camera/video/Recorder$Builder;

    move-result-object v5

    .line 641
    invoke-virtual {v5}, Landroidx/camera/video/Recorder$Builder;->build()Landroidx/camera/video/Recorder;

    move-result-object v5

    .line 642
    invoke-static {v5}, Landroidx/camera/video/VideoCapture;->withOutput(Landroidx/camera/video/VideoOutput;)Landroidx/camera/video/VideoCapture;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    .line 646
    iget v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    const/16 v7, 0x10

    const/16 v8, 0x9

    if-eqz v5, :cond_d

    if-ne v5, v2, :cond_e

    :cond_d
    const/16 v7, 0x9

    const/16 v8, 0x10

    .line 654
    :cond_e
    new-instance v2, Landroidx/camera/core/ViewPort$Builder;

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, v7, v8}, Landroid/util/Rational;-><init>(II)V

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-direct {v2, v5, v7}, Landroidx/camera/core/ViewPort$Builder;-><init>(Landroid/util/Rational;I)V

    .line 655
    invoke-virtual {v2}, Landroidx/camera/core/ViewPort$Builder;->build()Landroidx/camera/core/ViewPort;

    move-result-object v2

    .line 657
    new-instance v5, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v5}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    .line 658
    invoke-virtual {v5, v3}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    .line 659
    invoke-virtual {v5, v7}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v5

    .line 660
    invoke-virtual {v5, v2}, Landroidx/camera/core/UseCaseGroup$Builder;->setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v2

    .line 662
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    if-nez v5, :cond_f

    .line 663
    new-instance v5, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v5}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    .line 664
    invoke-virtual {v5, v0}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    .line 665
    invoke-virtual {v5, v7}, Landroidx/camera/core/ImageCapture$Builder;->setTargetRotation(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    .line 666
    invoke-virtual {v5, v7}, Landroidx/camera/core/ImageCapture$Builder;->setFlashMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    .line 667
    invoke-virtual {v5, v6}, Landroidx/camera/core/ImageCapture$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v5

    .line 668
    invoke-virtual {v5}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    .line 669
    invoke-virtual {v2, v5}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 672
    :cond_f
    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    .line 674
    invoke-virtual {v1, p0, v4, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;

    move-result-object v1

    .line 677
    :goto_3
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraControl:Landroidx/camera/core/CameraControl;

    .line 678
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraInfo:Landroidx/camera/core/CameraInfo;

    .line 679
    invoke-interface {v1}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 680
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraControl:Landroidx/camera/core/CameraControl;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    if-ne v2, v0, :cond_10

    const/4 v2, 0x1

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    :goto_4
    invoke-interface {v1, v2}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 683
    :cond_11
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->pvViewFinder:Landroidx/camera/view/PreviewView;

    invoke-virtual {v1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 685
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatchMedia()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    .line 687
    sget-boolean v2, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v2, :cond_12

    .line 688
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    :cond_12
    sget-object v2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCamera -> e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    instance-of v3, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_16

    .line 692
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v3, "No available output size is found for"

    .line 694
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 695
    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    if-nez v1, :cond_13

    iget-boolean v3, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingFrontSize:Z

    if-nez v3, :cond_13

    .line 696
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingFrontSize:Z

    const-string v0, "initCamera -> try again (front output size)"

    .line 697
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void

    :cond_13
    if-ne v1, v0, :cond_16

    .line 700
    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingBackSize:Z

    if-nez v1, :cond_16

    .line 701
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ignoreFacingBackSize:Z

    const-string v0, "initCamera -> try again (back output size)"

    .line 702
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void

    :cond_14
    const-string v3, "Unable to find supported quality"

    .line 706
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 707
    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    if-nez v1, :cond_15

    iget-boolean v3, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingFrontUseDefaultQuality:Z

    if-nez v3, :cond_15

    .line 708
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingFrontUseDefaultQuality:Z

    const-string v0, "initCamera -> try again (front quality)"

    .line 709
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void

    :cond_15
    if-ne v1, v0, :cond_16

    .line 712
    iget-boolean v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingBackUseDefaultQuality:Z

    if-nez v1, :cond_16

    .line 713
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingBackUseDefaultQuality:Z

    const-string v0, "initCamera -> try again (back quality)"

    .line 714
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void

    .line 721
    :cond_16
    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$SBYc-6ox5PGr_m4kmquc4mg59-I;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$SBYc-6ox5PGr_m4kmquc4mg59-I;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_5
    return-void
.end method

.method private recordVideoBegin()V
    .locals 4

    .line 395
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recordVideoBeginTime:J

    .line 396
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordVideoBegin -> videoTimeLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 398
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordVideoBegin -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private recordVideoEnd(Landroidx/camera/video/VideoRecordEvent$Finalize;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoRecordEvent",
            "file"
        }
    .end annotation

    const-string v0, "recordVideoEnd -> "

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;->setEnable(Z)V

    .line 406
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 409
    sget-object v2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;

    invoke-virtual {v1}, Landroidx/camera/video/Recording;->close()V

    const/4 v1, 0x0

    .line 413
    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 415
    sget-object v2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recordVideoBeginTime:J

    sub-long/2addr v1, v3

    .line 419
    sget-object v3, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recordVideoEnd -> recordVideoDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v4, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$FeEwY1RXt66BppXV4udgGGXYAQ0;

    invoke-direct {v4, p0}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$FeEwY1RXt66BppXV4udgGGXYAQ0;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x3e8

    cmp-long v6, v1, v4

    if-gez v6, :cond_1

    const-string p1, "recordVideoEnd -> recordVideoDuration is less than one second"

    .line 426
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$ScS0yQK3TZb0oXqzvtt9uvCzNro;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$ScS0yQK3TZb0oXqzvtt9uvCzNro;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 429
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/VideoRecordEvent$Finalize;->hasError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordVideoEnd -> err: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/video/VideoRecordEvent$Finalize;->getError()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$cHZ9Ea9H68rYHeceVQJS9II_CwA;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$cHZ9Ea9H68rYHeceVQJS9II_CwA;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 434
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordVideoEnd -> saved video size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  ,videoFileSizeLimit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoSizeLimit:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "catch_result"

    .line 436
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3ea

    .line 437
    invoke-virtual {p0, p2, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 442
    sget-object p2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableLongPress()V

    :cond_3
    return-void
.end method

.method private showFocus(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 813
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 814
    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->widthPixels:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    :cond_0
    float-to-int p1, p1

    .line 816
    iget v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocusSideHalfLength:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    float-to-int p1, p2

    .line 817
    iget p2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocusSideHalfLength:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 818
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 822
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 825
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 827
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->dismissFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->dismissFocusRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTakeVideo()V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VID_uni_pe_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTakeVideo -> video file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Landroidx/camera/video/FileOutputOptions$Builder;

    invoke-direct {v1, v0}, Landroidx/camera/video/FileOutputOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroidx/camera/video/FileOutputOptions$Builder;->build()Landroidx/camera/video/FileOutputOptions;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 372
    iput-wide v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->lastTotalSize:J

    .line 374
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    invoke-virtual {v2}, Landroidx/camera/video/VideoCapture;->getOutput()Landroidx/camera/video/VideoOutput;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/Recorder;

    .line 375
    invoke-virtual {v2, p0, v1}, Landroidx/camera/video/Recorder;->prepareRecording(Landroid/content/Context;Landroidx/camera/video/FileOutputOptions;)Landroidx/camera/video/PendingRecording;

    move-result-object v1

    .line 376
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAudioPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {v1}, Landroidx/camera/video/PendingRecording;->withAudioEnabled()Landroidx/camera/video/PendingRecording;

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;

    invoke-direct {v3, p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$VideoRecordEventListener;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Landroidx/camera/video/PendingRecording;->start(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroidx/camera/video/Recording;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;

    .line 381
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->disableLongPress()V

    .line 383
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->startProgressAnimation()V

    .line 385
    :cond_2
    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    .line 386
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private switchLanguage(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->language:Ljava/lang/String;

    const-string v1, "AUTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->createLocal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchLanguage -> e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method private unbindCamera()V
    .locals 4

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindCamera -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateRotation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/16 v0, 0x2d

    const/16 v1, 0x87

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 320
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    if-eq p1, v0, :cond_4

    .line 321
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRotation -> rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    .line 323
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0, p1}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    if-eqz p1, :cond_4

    .line 327
    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->rotation:I

    invoke-virtual {p1, v0}, Landroidx/camera/video/VideoCapture;->setTargetRotation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 331
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRotation -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->switchLanguage(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public extendFunc(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    const-string v0, "requestCode"

    .line 998
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "result"

    .line 1002
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1"

    .line 1003
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "-2"

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1004
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1005
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/camera/RequestAudioPermission;->disableRequestAudioPermission(Landroid/app/Activity;)V

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_need_permission_of_record_audio_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UNISDK_PIC_EDIT_REJECT_AUDIO_PERMISSION_TIPS"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1009
    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$cwXK88djTL0enkABHMDGm6xDRoc;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/piclib/camera/-$$Lambda$CameraActivity$cwXK88djTL0enkABHMDGm6xDRoc;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1012
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 772
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 773
    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$anim;->uni_piclib_last_activity_in_animation:I

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$anim;->uni_piclib_camera_activity_out_animation:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public finishTheActivity(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$extendFunc$4$CameraActivity(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1009
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$initCamera$3$CameraActivity()V
    .locals 4

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$string;->piceidt_camera_exception:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 725
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCamera -> ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$recordVideoEnd$0$CameraActivity()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->cancelProgressAnimation()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$recordVideoEnd$1$CameraActivity()V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_record_video_duration_less_than_one_second:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$recordVideoEnd$2$CameraActivity()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_record_video_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 186
    :try_start_0
    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$anim;->uni_piclib_camera_activity_in_animation:I

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$anim;->uni_piclib_last_activity_out_animation:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->overridePendingTransition(II)V

    .line 187
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$layout;->activity_uni_piclib_camera:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->setContentView(I)V

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    .line 191
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "uni_sdk_pic_edit_cache"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cacheDir:Ljava/io/File;

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    .line 194
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate -> mkdirs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->register(Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;)V

    .line 199
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->checkCameraAbility()V

    .line 201
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->handleIntent()V

    .line 203
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/camera/RequestAudioPermission;->getAudioPermissionState(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 204
    sput-boolean p1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAskedAudioPermission:Z

    .line 207
    :cond_1
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissFocusRunnableImpl;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissFocusRunnableImpl;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->dismissFocusRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x2

    .line 209
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 210
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 212
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 213
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocusSideHalfLength:I

    .line 214
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->widthPixels:I

    .line 216
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->pv_uni_piclib_viewfinder:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/camera/view/PreviewView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->pvViewFinder:Landroidx/camera/view/PreviewView;

    .line 217
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->cmv_uni_piclib_catche_meida:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    .line 218
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_finish:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFinish:Landroid/widget/ImageView;

    .line 219
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_switch_front_back:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivSwitchFrontBack:Landroid/widget/ImageView;

    .line 220
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_focus:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    .line 221
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->tv_uni_piclib_operation_tips:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    .line 222
    sget p1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_flash_mode:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFlashMode:Landroid/widget/ImageView;

    .line 224
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFocus:Landroid/widget/ImageView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 226
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->bindFocusAnimation()V

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->setOnClickEventListener(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;)V

    .line 229
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivFinish:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$PressImageView;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$PressImageView;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->frontCameraAvailable:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivSwitchFrontBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$PressImageView;

    invoke-direct {v1, p1}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$PressImageView;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->ivSwitchFrontBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    :goto_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 239
    new-instance p1, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$SimpleOnScaleGestureListenerExtend;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-direct {p1, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 241
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->pvViewFinder:Landroidx/camera/view/PreviewView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$1;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p1, v1}, Landroidx/camera/view/PreviewView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->pvViewFinder:Landroidx/camera/view/PreviewView;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$FocusClickListener;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p1, v1}, Landroidx/camera/view/PreviewView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$2;

    invoke-direct {p1, p0, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$2;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 260
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 262
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraProviderFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$CameraProviderFutureRunImpl;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mainExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 264
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->IMAGE:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    if-ne p1, v1, :cond_3

    .line 265
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableSingleClick()V

    .line 266
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->mediaType:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;->VIDEO:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$MediaType;

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    .line 268
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableLongPressFunc()V

    .line 269
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->setProgressDuration(J)V

    .line 270
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_operation_video_tips:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissOperationTips;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissOperationTips;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 274
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoTimeLimit:I

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->setProgressDuration(J)V

    .line 275
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableSingleClick()V

    .line 276
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableLongPressFunc()V

    .line 277
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->tvOperationTips:Landroid/widget/TextView;

    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$string;->picedit_operation_photo_video_tips:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    new-instance v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissOperationTips;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity$DismissOperationTips;-><init>(Lcom/netease/ntunisdk/piclib/camera/CameraActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 282
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 462
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 465
    :try_start_0
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener;->unregister(Lcom/netease/ntunisdk/piclib/camera/RequestCallbackListener$OnRequestCallback;)V

    .line 466
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->dismissFocusRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->timer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->stopTakingVideoDelayed:Lcom/netease/ntunisdk/piclib/camera/CameraActivity$StopTakingVideoDelayedImpl;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0}, Landroidx/camera/video/Recording;->close()V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->cancelAnyAnimation()V

    .line 478
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->unbindCamera()V

    .line 483
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 485
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLongPressEnd()V
    .locals 4

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->recording:Landroidx/camera/video/Recording;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Landroidx/camera/video/Recording;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 867
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongPressEnd -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onLongPressStart()V
    .locals 4

    .line 843
    :try_start_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPressStart -> hasAskedAudioPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAskedAudioPermission:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    sget-boolean v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAskedAudioPermission:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAudioPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 848
    sput-boolean v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->hasAskedAudioPermission:Z

    const/16 v0, 0x3e9

    .line 849
    invoke-static {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/RequestAudioPermission;->requestAudioPermission(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->catchMediaView:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->resetAnyAnimation()V

    goto :goto_1

    .line 852
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->startTakeVideo()V

    goto :goto_1

    .line 845
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->startTakeVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 856
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongPressStart -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSingleClick()V
    .locals 4

    .line 834
    :try_start_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->doTakePicture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 836
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCatch -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public switchCamera(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 512
    iget p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 513
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 515
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->facingDirection:I

    .line 517
    :goto_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->initCamera()V

    return-void
.end method

.method public switchFlashMode(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 491
    :try_start_0
    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 492
    iput v2, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    .line 493
    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$drawable;->uni_piclib_flash_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 495
    :cond_0
    iput v1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    .line 496
    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/netease/ntunisdk/piclib/camera/R$drawable;->uni_piclib_flash_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->imageCapture:Landroidx/camera/core/ImageCapture;

    if-eqz p1, :cond_1

    .line 499
    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->videoCapture:Landroidx/camera/video/VideoCapture;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraInfo:Landroidx/camera/core/CameraInfo;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraControl:Landroidx/camera/core/CameraControl;

    if-eqz v0, :cond_3

    .line 502
    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 503
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->cameraControl:Landroidx/camera/core/CameraControl;

    iget v0, p0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->flashMode:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v2}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 507
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CameraActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchFlashMode -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
