.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$rXHDnQ9N0Pwp4VdJ-DlyCpep4R0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$rXHDnQ9N0Pwp4VdJ-DlyCpep4R0;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iput-boolean p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$rXHDnQ9N0Pwp4VdJ-DlyCpep4R0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$rXHDnQ9N0Pwp4VdJ-DlyCpep4R0;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$rXHDnQ9N0Pwp4VdJ-DlyCpep4R0;->f$1:Z

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$mute$7$AudioSource(Z)V

    return-void
.end method
