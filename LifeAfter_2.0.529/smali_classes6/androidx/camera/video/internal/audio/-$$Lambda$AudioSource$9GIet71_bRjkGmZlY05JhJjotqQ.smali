.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9GIet71_bRjkGmZlY05JhJjotqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9GIet71_bRjkGmZlY05JhJjotqQ;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$9GIet71_bRjkGmZlY05JhJjotqQ;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$release$5$AudioSource(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
