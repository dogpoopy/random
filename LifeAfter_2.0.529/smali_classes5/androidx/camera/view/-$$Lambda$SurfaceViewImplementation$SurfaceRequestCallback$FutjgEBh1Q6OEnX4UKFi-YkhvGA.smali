.class public final synthetic Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$SurfaceRequestCallback$FutjgEBh1Q6OEnX4UKFi-YkhvGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$SurfaceRequestCallback$FutjgEBh1Q6OEnX4UKFi-YkhvGA;->f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$SurfaceRequestCallback$FutjgEBh1Q6OEnX4UKFi-YkhvGA;->f$0:Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-static {v0, p1}, Landroidx/camera/view/SurfaceViewImplementation$SurfaceRequestCallback;->lambda$tryToComplete$0(Landroidx/camera/view/PreviewViewImplementation$OnSurfaceNotInUseListener;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
