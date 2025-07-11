.class public final synthetic Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$0pDqmVlhNQ9jMmpIjfNsafP4K0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$0pDqmVlhNQ9jMmpIjfNsafP4K0U;->f$0:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$SurfaceViewImplementation$0pDqmVlhNQ9jMmpIjfNsafP4K0U;->f$0:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, p1}, Landroidx/camera/view/SurfaceViewImplementation;->lambda$getPreviewBitmap$1(Ljava/util/concurrent/Semaphore;I)V

    return-void
.end method
