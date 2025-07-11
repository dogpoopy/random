.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureManager$a425oWNmQ6bvw1qmq8yIVuY_sTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/TakePictureManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureManager$a425oWNmQ6bvw1qmq8yIVuY_sTA;->f$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$TakePictureManager$a425oWNmQ6bvw1qmq8yIVuY_sTA;->f$0:Landroidx/camera/core/imagecapture/TakePictureManager;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureManager;->lambda$trackCurrentRequests$0$TakePictureManager()V

    return-void
.end method
