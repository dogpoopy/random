.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$0:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$1:Landroid/content/Context;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p5, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$0:Landroidx/camera/core/CameraX;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$1:Landroid/content/Context;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$2:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v4, p0, Landroidx/camera/core/-$$Lambda$CameraX$dnuYhxGsACX_lH-9SVlUVTdtTJg;->f$4:J

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/CameraX;->lambda$initAndRetryRecursively$2$CameraX(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    return-void
.end method
