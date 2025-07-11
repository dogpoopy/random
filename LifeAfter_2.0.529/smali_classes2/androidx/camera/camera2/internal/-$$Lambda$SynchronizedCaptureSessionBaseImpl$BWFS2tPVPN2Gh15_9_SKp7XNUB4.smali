.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

.field public final synthetic f$3:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$2:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    iput-object p4, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$3:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$2:Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;

    iget-object v3, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$BWFS2tPVPN2Gh15_9_SKp7XNUB4;->f$3:Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->lambda$openCaptureSession$0$SynchronizedCaptureSessionBaseImpl(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
