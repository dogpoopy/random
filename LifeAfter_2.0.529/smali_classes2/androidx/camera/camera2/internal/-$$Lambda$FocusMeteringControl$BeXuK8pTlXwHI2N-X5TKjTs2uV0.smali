.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$BeXuK8pTlXwHI2N-X5TKjTs2uV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$BeXuK8pTlXwHI2N-X5TKjTs2uV0;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput-wide p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$BeXuK8pTlXwHI2N-X5TKjTs2uV0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$BeXuK8pTlXwHI2N-X5TKjTs2uV0;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget-wide v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$BeXuK8pTlXwHI2N-X5TKjTs2uV0;->f$1:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$executeMeteringAction$4$FocusMeteringControl(J)V

    return-void
.end method
