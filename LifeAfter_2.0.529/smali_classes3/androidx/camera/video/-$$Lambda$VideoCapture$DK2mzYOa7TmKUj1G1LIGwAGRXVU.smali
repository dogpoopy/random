.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoCapture;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/camera/video/impl/VideoCaptureConfig;

.field public final synthetic f$3:Landroidx/camera/core/impl/StreamSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;Ljava/lang/String;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$0:Landroidx/camera/video/VideoCapture;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$2:Landroidx/camera/video/impl/VideoCaptureConfig;

    iput-object p4, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$3:Landroidx/camera/core/impl/StreamSpec;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$2:Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object v3, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$DK2mzYOa7TmKUj1G1LIGwAGRXVU;->f$3:Landroidx/camera/core/impl/StreamSpec;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/video/VideoCapture;->lambda$createPipeline$3$VideoCapture(Ljava/lang/String;Landroidx/camera/video/impl/VideoCaptureConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
