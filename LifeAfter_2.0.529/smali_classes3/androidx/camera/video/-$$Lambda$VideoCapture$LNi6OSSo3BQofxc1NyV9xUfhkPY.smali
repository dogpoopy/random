.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoCapture$LNi6OSSo3BQofxc1NyV9xUfhkPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoCapture;

.field public final synthetic f$1:Landroidx/camera/core/impl/SessionConfig$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$LNi6OSSo3BQofxc1NyV9xUfhkPY;->f$0:Landroidx/camera/video/VideoCapture;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$LNi6OSSo3BQofxc1NyV9xUfhkPY;->f$1:Landroidx/camera/core/impl/SessionConfig$Builder;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$LNi6OSSo3BQofxc1NyV9xUfhkPY;->f$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$LNi6OSSo3BQofxc1NyV9xUfhkPY;->f$1:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/VideoCapture;->lambda$setupSurfaceUpdateNotifier$6$VideoCapture(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
