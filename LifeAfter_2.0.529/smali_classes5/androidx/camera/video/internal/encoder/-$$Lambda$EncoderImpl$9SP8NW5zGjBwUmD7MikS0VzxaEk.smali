.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$9SP8NW5zGjBwUmD7MikS0VzxaEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$9SP8NW5zGjBwUmD7MikS0VzxaEk;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$9SP8NW5zGjBwUmD7MikS0VzxaEk;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$9SP8NW5zGjBwUmD7MikS0VzxaEk;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$9SP8NW5zGjBwUmD7MikS0VzxaEk;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->lambda$acquireInputBuffer$13$EncoderImpl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
