.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9qU2LU6xFx4thh-3b8O9FegxP6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9qU2LU6xFx4thh-3b8O9FegxP6Y;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iput-object p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9qU2LU6xFx4thh-3b8O9FegxP6Y;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9qU2LU6xFx4thh-3b8O9FegxP6Y;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9qU2LU6xFx4thh-3b8O9FegxP6Y;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$release$4$AudioSource(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
