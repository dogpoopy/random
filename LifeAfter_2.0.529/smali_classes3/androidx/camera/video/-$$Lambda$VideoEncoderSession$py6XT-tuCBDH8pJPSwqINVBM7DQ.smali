.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoEncoderSession$py6XT-tuCBDH8pJPSwqINVBM7DQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$py6XT-tuCBDH8pJPSwqINVBM7DQ;->f$0:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$py6XT-tuCBDH8pJPSwqINVBM7DQ;->f$0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->lambda$terminateNow$3$VideoEncoderSession()V

    return-void
.end method
