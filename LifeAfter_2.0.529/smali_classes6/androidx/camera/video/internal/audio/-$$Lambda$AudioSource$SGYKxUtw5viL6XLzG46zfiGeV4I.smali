.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$SGYKxUtw5viL6XLzG46zfiGeV4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic f$1:Landroidx/camera/video/internal/BufferProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$SGYKxUtw5viL6XLzG46zfiGeV4I;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iput-object p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$SGYKxUtw5viL6XLzG46zfiGeV4I;->f$1:Landroidx/camera/video/internal/BufferProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$SGYKxUtw5viL6XLzG46zfiGeV4I;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$SGYKxUtw5viL6XLzG46zfiGeV4I;->f$1:Landroidx/camera/video/internal/BufferProvider;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$setBufferProvider$0$AudioSource(Landroidx/camera/video/internal/BufferProvider;)V

    return-void
.end method
