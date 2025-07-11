.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$xcfCYA3d95wXFI_KBhHplN5nI6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/TorchControl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/TorchControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$xcfCYA3d95wXFI_KBhHplN5nI6Q;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$xcfCYA3d95wXFI_KBhHplN5nI6Q;->f$1:Z

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$xcfCYA3d95wXFI_KBhHplN5nI6Q;->f$0:Landroidx/camera/camera2/internal/TorchControl;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$TorchControl$xcfCYA3d95wXFI_KBhHplN5nI6Q;->f$1:Z

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/TorchControl;->lambda$enableTorch$2$TorchControl(ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
