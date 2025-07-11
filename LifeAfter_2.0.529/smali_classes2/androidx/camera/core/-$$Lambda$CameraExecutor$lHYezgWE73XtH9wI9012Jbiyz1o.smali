.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;

    invoke-direct {v0}, Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;-><init>()V

    sput-object v0, Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;->INSTANCE:Landroidx/camera/core/-$$Lambda$CameraExecutor$lHYezgWE73XtH9wI9012Jbiyz1o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/camera/core/CameraExecutor;->lambda$createExecutor$0(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
