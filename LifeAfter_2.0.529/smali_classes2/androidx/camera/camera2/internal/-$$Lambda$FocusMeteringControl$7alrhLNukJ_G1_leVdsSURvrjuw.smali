.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$7alrhLNukJ_G1_leVdsSURvrjuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$7alrhLNukJ_G1_leVdsSURvrjuw;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$7alrhLNukJ_G1_leVdsSURvrjuw;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMetering$8$FocusMeteringControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
