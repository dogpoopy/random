.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$6GcN8wP7iruwi5lDJQVZ5-z4Juo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic f$1:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$6GcN8wP7iruwi5lDJQVZ5-z4Juo;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iput-object p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$6GcN8wP7iruwi5lDJQVZ5-z4Juo;->f$1:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$6GcN8wP7iruwi5lDJQVZ5-z4Juo;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-object v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$6GcN8wP7iruwi5lDJQVZ5-z4Juo;->f$1:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$postMaxAmplitude$11$AudioSource(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    return-void
.end method
