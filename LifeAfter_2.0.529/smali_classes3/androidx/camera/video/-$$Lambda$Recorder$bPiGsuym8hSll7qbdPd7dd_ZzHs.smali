.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$bPiGsuym8hSll7qbdPd7dd_ZzHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/Encoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$bPiGsuym8hSll7qbdPd7dd_ZzHs;->f$0:Landroidx/camera/video/internal/encoder/Encoder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$bPiGsuym8hSll7qbdPd7dd_ZzHs;->f$0:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-static {v0}, Landroidx/camera/video/Recorder;->lambda$stopInternal$14(Landroidx/camera/video/internal/encoder/Encoder;)V

    return-void
.end method
