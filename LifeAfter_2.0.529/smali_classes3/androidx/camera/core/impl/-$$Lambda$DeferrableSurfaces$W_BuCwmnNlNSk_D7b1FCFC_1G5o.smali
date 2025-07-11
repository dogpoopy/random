.class public final synthetic Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p3, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v2, p0, Landroidx/camera/core/impl/-$$Lambda$DeferrableSurfaces$W_BuCwmnNlNSk_D7b1FCFC_1G5o;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/DeferrableSurfaces;->lambda$surfaceListWithTimeout$0(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    return-void
.end method
