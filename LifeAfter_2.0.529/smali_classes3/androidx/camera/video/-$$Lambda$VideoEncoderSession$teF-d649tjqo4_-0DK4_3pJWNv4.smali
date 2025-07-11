.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoEncoderSession$teF-d649tjqo4_-0DK4_3pJWNv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$teF-d649tjqo4_-0DK4_3pJWNv4;->f$0:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$teF-d649tjqo4_-0DK4_3pJWNv4;->f$0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0, p1}, Landroidx/camera/video/VideoEncoderSession;->lambda$configure$0$VideoEncoderSession(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
