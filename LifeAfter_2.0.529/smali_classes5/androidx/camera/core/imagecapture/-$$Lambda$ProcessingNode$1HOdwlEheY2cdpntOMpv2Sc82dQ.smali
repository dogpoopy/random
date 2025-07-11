.class public final synthetic Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$1HOdwlEheY2cdpntOMpv2Sc82dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/ProcessingNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$1HOdwlEheY2cdpntOMpv2Sc82dQ;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/-$$Lambda$ProcessingNode$1HOdwlEheY2cdpntOMpv2Sc82dQ;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->lambda$transform$1$ProcessingNode(Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method
