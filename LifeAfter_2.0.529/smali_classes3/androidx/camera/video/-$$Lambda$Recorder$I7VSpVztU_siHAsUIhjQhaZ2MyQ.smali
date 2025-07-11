.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$I7VSpVztU_siHAsUIhjQhaZ2MyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$I7VSpVztU_siHAsUIhjQhaZ2MyQ;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$I7VSpVztU_siHAsUIhjQhaZ2MyQ;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$I7VSpVztU_siHAsUIhjQhaZ2MyQ;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$I7VSpVztU_siHAsUIhjQhaZ2MyQ;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->lambda$updateEncoderCallbacks$12$Recorder(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/lang/Throwable;)V

    return-void
.end method
