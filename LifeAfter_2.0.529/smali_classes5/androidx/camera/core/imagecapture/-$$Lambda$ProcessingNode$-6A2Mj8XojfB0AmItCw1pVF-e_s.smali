.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$-6A2Mj8XojfB0AmItCw1pVF-e_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

.field public final synthetic f$1:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$-6A2Mj8XojfB0AmItCw1pVF-e_s;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$-6A2Mj8XojfB0AmItCw1pVF-e_s;->f$1:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$-6A2Mj8XojfB0AmItCw1pVF-e_s;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    iget-object v1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$-6A2Mj8XojfB0AmItCw1pVF-e_s;->f$1:Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    invoke-virtual {v0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$0$ProcessingNode(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method
