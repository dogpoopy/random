.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$CaptureSessionRepository$1$q1pEnwJM8hjC7sbsXJ4Ng6E12Wg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$CaptureSessionRepository$1$q1pEnwJM8hjC7sbsXJ4Ng6E12Wg;->f$0:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$CaptureSessionRepository$1$q1pEnwJM8hjC7sbsXJ4Ng6E12Wg;->f$0:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Landroidx/camera/camera2/internal/CaptureSessionRepository$1;->lambda$forceOnClosedCaptureSessions$0(Ljava/util/LinkedHashSet;)V

    return-void
.end method
