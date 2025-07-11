.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$Bap7LAulTyAwgXpy9naIYQyN6aE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/MeteringRepeatingSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/MeteringRepeatingSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$Bap7LAulTyAwgXpy9naIYQyN6aE;->f$0:Landroidx/camera/camera2/internal/MeteringRepeatingSession;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$MeteringRepeatingSession$Bap7LAulTyAwgXpy9naIYQyN6aE;->f$0:Landroidx/camera/camera2/internal/MeteringRepeatingSession;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/internal/MeteringRepeatingSession;->lambda$createSessionConfig$0$MeteringRepeatingSession(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
