.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$anVZ0We_b3LclSIz6VcraYcc6Ig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

.field public final synthetic f$1:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$anVZ0We_b3LclSIz6VcraYcc6Ig;->f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$anVZ0We_b3LclSIz6VcraYcc6Ig;->f$1:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$anVZ0We_b3LclSIz6VcraYcc6Ig;->f$0:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$anVZ0We_b3LclSIz6VcraYcc6Ig;->f$1:Landroidx/camera/core/ImageProxy;

    invoke-static {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$processInputPacket$2(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
