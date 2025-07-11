.class public final synthetic Landroidx/camera/video/-$$Lambda$BOD0vmRz-2nS4gpIgfy3kjA3IAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$BOD0vmRz-2nS4gpIgfy3kjA3IAA;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$BOD0vmRz-2nS4gpIgfy3kjA3IAA;->f$0:Landroidx/camera/video/Recorder;

    invoke-virtual {v0}, Landroidx/camera/video/Recorder;->tryServicePendingRecording()V

    return-void
.end method
