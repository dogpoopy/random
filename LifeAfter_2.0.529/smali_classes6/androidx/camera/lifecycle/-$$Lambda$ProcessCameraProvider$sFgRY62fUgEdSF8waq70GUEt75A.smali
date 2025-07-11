.class public final synthetic Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$sFgRY62fUgEdSF8waq70GUEt75A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/lifecycle/ProcessCameraProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$sFgRY62fUgEdSF8waq70GUEt75A;->f$0:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$sFgRY62fUgEdSF8waq70GUEt75A;->f$0:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->lambda$shutdown$4$ProcessCameraProvider()V

    return-void
.end method
