.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$EGqAWGETFT7PhtXUvUxtyOw5gdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$EGqAWGETFT7PhtXUvUxtyOw5gdQ;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$EGqAWGETFT7PhtXUvUxtyOw5gdQ;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/DeferrableSurfaces;->lambda$surfaceListWithTimeout$2(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
