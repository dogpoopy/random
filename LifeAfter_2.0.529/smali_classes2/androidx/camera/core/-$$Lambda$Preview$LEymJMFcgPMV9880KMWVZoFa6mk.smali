.class public final synthetic Landroidx/camera/core/-$$Lambda$Preview$LEymJMFcgPMV9880KMWVZoFa6mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/Preview$SurfaceProvider;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$Preview$LEymJMFcgPMV9880KMWVZoFa6mk;->f$0:Landroidx/camera/core/Preview$SurfaceProvider;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$Preview$LEymJMFcgPMV9880KMWVZoFa6mk;->f$1:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$Preview$LEymJMFcgPMV9880KMWVZoFa6mk;->f$0:Landroidx/camera/core/Preview$SurfaceProvider;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$Preview$LEymJMFcgPMV9880KMWVZoFa6mk;->f$1:Landroidx/camera/core/SurfaceRequest;

    invoke-static {v0, v1}, Landroidx/camera/core/Preview;->lambda$sendSurfaceRequest$2(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
