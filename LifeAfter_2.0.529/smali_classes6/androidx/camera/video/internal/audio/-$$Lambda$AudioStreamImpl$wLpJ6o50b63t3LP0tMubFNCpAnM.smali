.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioStreamImpl$wLpJ6o50b63t3LP0tMubFNCpAnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioStreamImpl$wLpJ6o50b63t3LP0tMubFNCpAnM;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iput-boolean p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioStreamImpl$wLpJ6o50b63t3LP0tMubFNCpAnM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioStreamImpl$wLpJ6o50b63t3LP0tMubFNCpAnM;->f$0:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iget-boolean v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioStreamImpl$wLpJ6o50b63t3LP0tMubFNCpAnM;->f$1:Z

    invoke-static {v0, v1}, Landroidx/camera/video/internal/audio/AudioStreamImpl;->lambda$notifySilenced$0(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Z)V

    return-void
.end method
