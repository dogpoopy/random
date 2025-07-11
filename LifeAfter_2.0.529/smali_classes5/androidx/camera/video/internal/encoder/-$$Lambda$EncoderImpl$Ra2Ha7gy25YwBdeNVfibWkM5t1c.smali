.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$Ra2Ha7gy25YwBdeNVfibWkM5t1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$Ra2Ha7gy25YwBdeNVfibWkM5t1c;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-wide p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$Ra2Ha7gy25YwBdeNVfibWkM5t1c;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$Ra2Ha7gy25YwBdeNVfibWkM5t1c;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$Ra2Ha7gy25YwBdeNVfibWkM5t1c;->f$1:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->lambda$pause$5$EncoderImpl(J)V

    return-void
.end method
