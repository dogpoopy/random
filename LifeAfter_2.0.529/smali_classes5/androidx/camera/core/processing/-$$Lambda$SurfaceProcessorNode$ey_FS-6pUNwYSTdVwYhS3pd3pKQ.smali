.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$ey_FS-6pUNwYSTdVwYhS3pd3pKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$ey_FS-6pUNwYSTdVwYhS3pd3pKQ;->f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$ey_FS-6pUNwYSTdVwYhS3pd3pKQ;->f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->lambda$release$2$SurfaceProcessorNode()V

    return-void
.end method
