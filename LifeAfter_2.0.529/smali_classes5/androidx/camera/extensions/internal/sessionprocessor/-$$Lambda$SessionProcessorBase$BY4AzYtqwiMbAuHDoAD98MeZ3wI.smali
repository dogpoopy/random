.class public final synthetic Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

    iput p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$1:I

    iput-object p3, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$0:Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$1:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/-$$Lambda$SessionProcessorBase$BY4AzYtqwiMbAuHDoAD98MeZ3wI;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->lambda$setImageProcessor$1(Landroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;ILjava/lang/String;Landroid/media/ImageReader;)V

    return-void
.end method
