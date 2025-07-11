.class public final synthetic Landroidx/camera/view/-$$Lambda$WdRzJ6UT2JvewhxEEEp7m1LRg9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/CameraController;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/-$$Lambda$WdRzJ6UT2JvewhxEEEp7m1LRg9U;->f$0:Landroidx/camera/view/CameraController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/-$$Lambda$WdRzJ6UT2JvewhxEEEp7m1LRg9U;->f$0:Landroidx/camera/view/CameraController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/camera/view/CameraController;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
