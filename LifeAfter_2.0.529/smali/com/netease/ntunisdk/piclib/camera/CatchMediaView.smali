.class public Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;
.super Landroid/widget/FrameLayout;
.source "CatchMediaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;,
        Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CatchMediaView"


# instance fields
.field private animationDuration:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private backDestChangedScale:F

.field private catchingVideo:Z

.field private circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

.field private currentBackChangedScale:F

.field private currentFrontChangedScale:F

.field private volatile enableCatch:Z

.field private frontDestChangedScale:F

.field private ivBackCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

.field private ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

.field private longPressEnable:Z

.field private longPressFuncEnable:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private onClickEventListener:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

.field private readyCatchVideo:Z

.field private singleClickFuncEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12c

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animationDuration:I

    .line 56
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    .line 62
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    .line 65
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    .line 71
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    .line 29
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12c

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animationDuration:I

    .line 56
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    .line 62
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    .line 65
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    .line 71
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    .line 34
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x12c

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animationDuration:I

    .line 56
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    .line 62
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    .line 65
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    .line 71
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    .line 39
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x12c

    .line 47
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animationDuration:I

    .line 56
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 61
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    .line 62
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    .line 65
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    .line 71
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    .line 44
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    return p1
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    return p1
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->onClickEventListener:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressFuncEnable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    return p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->startCatchVideoAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->singleClickFuncEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->playCatchPictureAnimation()V

    return-void
.end method

.method static synthetic access$902(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    return p1
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x1

    .line 75
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->setClickable(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_back_big_diameter_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_back_small_diameter_dp:I

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->backDestChangedScale:F

    .line 82
    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_front_small_diameter_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_front_big_diameter_dp:I

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->frontDestChangedScale:F

    .line 85
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$layout;->view_catch_media:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_catch_media_back_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivBackCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    .line 88
    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$id;->iv_uni_piclib_catch_media_front_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    .line 89
    sget v1, Lcom/netease/ntunisdk/piclib/camera/R$id;->cpv_uni_piclib_catch_media_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    .line 91
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivBackCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    const-string v2, "#f2f4f3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;->setColor(I)V

    .line 92
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;->setColor(I)V

    .line 94
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnGestureListenerImpl;-><init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 96
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$1;-><init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private playCatchPictureAnimation()V
    .locals 8

    .line 274
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    const/4 v1, 0x3

    new-array v2, v1, [F

    iget v3, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->frontDestChangedScale:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v3

    const-string v7, "scaleX"

    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    new-array v1, v1, [F

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    aput v7, v1, v4

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->frontDestChangedScale:F

    aput v7, v1, v5

    aput v6, v1, v3

    const-string v6, "scaleY"

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 280
    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$4;-><init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playScaleAnimation(Landroid/view/View;FFLandroid/view/View;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view1",
            "startScale1",
            "endScale1",
            "view2",
            "startScale2",
            "endScale2"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    const-string v4, "scaleX"

    .line 247
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v5, v0, [F

    aput p2, v5, v2

    aput p3, v5, v3

    const-string p2, "scaleY"

    .line 248
    invoke-static {p1, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v0, [F

    aput p5, p3, v2

    aput p6, p3, v3

    .line 249
    invoke-static {p4, v4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v4, v0, [F

    aput p5, v4, v2

    aput p6, v4, v3

    .line 250
    invoke-static {p4, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 251
    iget-object p4, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 p5, 0x4

    new-array p5, p5, [Landroid/animation/Animator;

    aput-object v1, p5, v2

    aput-object p1, p5, v3

    aput-object p3, p5, v0

    const/4 p1, 0x3

    aput-object p2, p5, p1

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 252
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$2;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$2;-><init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    new-instance p1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$3;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$3;-><init>(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;)V

    invoke-virtual {p3, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private resetCatchView()V
    .locals 8

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivBackCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iget v6, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->playScaleAnimation(Landroid/view/View;FFLandroid/view/View;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetCatchView -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startCatchVideoAnimation()V
    .locals 8

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->readyCatchVideo:Z

    .line 229
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivBackCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentBackChangedScale:F

    iget v4, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->backDestChangedScale:F

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->ivFrontCircle:Lcom/netease/ntunisdk/piclib/camera/CatchMediaCircleView;

    iget v6, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->currentFrontChangedScale:F

    iget v7, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->frontDestChangedScale:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->playScaleAnimation(Landroid/view/View;FFLandroid/view/View;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCatchVideoAnimation -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnyAnimation()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->cancelAnimation()V

    :cond_1
    return-void
.end method

.method public cancelProgressAnimation()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->cancelAnimation()V

    return-void
.end method

.method public disableCatchMedia()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    return-void
.end method

.method public disableLongPress()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    return-void
.end method

.method public disableSingleClick()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->singleClickFuncEnable:Z

    return-void
.end method

.method public enableCatchMedia()V
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    return-void
.end method

.method public enableLongPress()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressEnable:Z

    return-void
.end method

.method public enableLongPressFunc()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressFuncEnable:Z

    return-void
.end method

.method public enableSingleClick()V
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->singleClickFuncEnable:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->enableCatch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->longPressFuncEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->cancelProgressAnimation()V

    .line 181
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->resetCatchView()V

    .line 182
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->catchingVideo:Z

    .line 184
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->onClickEventListener:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;->onLongPressEnd()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return v1
.end method

.method public resetAnyAnimation()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->resetCatchView()V

    return-void
.end method

.method public setOnClickEventListener(Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickEventListener"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->onClickEventListener:Lcom/netease/ntunisdk/piclib/camera/CatchMediaView$OnClickEventListener;

    return-void
.end method

.method public setProgressDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressDuration -> duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public startProgressAnimation()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CatchMediaView;->circleProgressView:Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->startAnimation()V

    return-void
.end method
