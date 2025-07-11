.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$BufferedAudioStream$wV_Px96JWmFReu6V1FKL3IrFGAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/BufferedAudioStream;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$BufferedAudioStream$wV_Px96JWmFReu6V1FKL3IrFGAw;->f$0:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$BufferedAudioStream$wV_Px96JWmFReu6V1FKL3IrFGAw;->f$0:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->lambda$release$2$BufferedAudioStream()V

    return-void
.end method
