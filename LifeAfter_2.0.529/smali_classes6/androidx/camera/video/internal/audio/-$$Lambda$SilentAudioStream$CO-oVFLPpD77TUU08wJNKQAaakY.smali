.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$SilentAudioStream$CO-oVFLPpD77TUU08wJNKQAaakY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$SilentAudioStream$CO-oVFLPpD77TUU08wJNKQAaakY;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$SilentAudioStream$CO-oVFLPpD77TUU08wJNKQAaakY;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    invoke-static {v0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->lambda$notifySilenced$0(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;)V

    return-void
.end method
