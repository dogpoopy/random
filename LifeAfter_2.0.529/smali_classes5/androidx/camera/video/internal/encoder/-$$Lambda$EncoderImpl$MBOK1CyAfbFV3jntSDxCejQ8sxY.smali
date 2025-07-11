.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$MBOK1CyAfbFV3jntSDxCejQ8sxY;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->lambda$stopMediaCodec$11$EncoderImpl(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
