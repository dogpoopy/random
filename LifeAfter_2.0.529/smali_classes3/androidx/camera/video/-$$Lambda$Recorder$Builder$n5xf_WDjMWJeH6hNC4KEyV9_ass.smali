.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$Builder$n5xf_WDjMWJeH6hNC4KEyV9_ass;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$Builder$n5xf_WDjMWJeH6hNC4KEyV9_ass;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$Builder$n5xf_WDjMWJeH6hNC4KEyV9_ass;->f$0:I

    check-cast p1, Landroidx/camera/video/VideoSpec$Builder;

    invoke-static {v0, p1}, Landroidx/camera/video/Recorder$Builder;->lambda$setTargetVideoEncodingBitRate$1(ILandroidx/camera/video/VideoSpec$Builder;)V

    return-void
.end method
