.class public final synthetic Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/video/VideoOutput;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;

    invoke-direct {v0}, Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;-><init>()V

    sput-object v0, Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;->INSTANCE:Landroidx/camera/video/-$$Lambda$bJwwcVR95dEuqyeYuLarFZPWMjo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getMediaCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/video/VideoOutput$-CC;->$default$getMediaCapabilities(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getMediaSpec()Landroidx/camera/core/impl/Observable;
    .locals 1

    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$getMediaSpec(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStreamInfo()Landroidx/camera/core/impl/Observable;
    .locals 1

    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$getStreamInfo(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/video/VideoOutput$-CC;->$default$onSourceStateChanged(Landroidx/camera/video/VideoOutput;Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method

.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void
.end method

.method public synthetic onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoOutput$-CC;->$default$onSurfaceRequested(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method
