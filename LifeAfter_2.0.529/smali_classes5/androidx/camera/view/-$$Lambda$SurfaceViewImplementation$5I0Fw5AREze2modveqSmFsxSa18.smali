.class public final synthetic Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/SurfaceViewImplementation;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/SurfaceViewImplementation;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$0:Landroidx/camera/view/SurfaceViewImplementation;

    iput-object p2, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$2:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$0:Landroidx/camera/view/SurfaceViewImplementation;

    iget-object v1, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$5I0Fw5AREze2modveqSmFsxSa18;->f$2:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/SurfaceViewImplementation;->lambda$onSurfaceRequested$0$SurfaceViewImplementation(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V

    return-void
.end method
