.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$BR_rn1votrw7F6lGoC_uJBUaLEY;
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

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$BR_rn1votrw7F6lGoC_uJBUaLEY;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iput-boolean p2, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$BR_rn1votrw7F6lGoC_uJBUaLEY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$BR_rn1votrw7F6lGoC_uJBUaLEY;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean v1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$BR_rn1votrw7F6lGoC_uJBUaLEY;->f$1:Z

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$start$2$AudioSource(Z)V

    return-void
.end method
