.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$wB3rf6s6pZBTxBoL6mgCzLkBSxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SurfaceOutput;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$wB3rf6s6pZBTxBoL6mgCzLkBSxc;->f$0:Landroidx/camera/core/SurfaceOutput;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$wB3rf6s6pZBTxBoL6mgCzLkBSxc;->f$0:Landroidx/camera/core/SurfaceOutput;

    invoke-interface {v0}, Landroidx/camera/core/SurfaceOutput;->close()V

    return-void
.end method
