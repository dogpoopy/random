.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$8L__iOopggqMfngT853NXtTVkls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

.field public final synthetic f$1:Landroidx/camera/video/internal/encoder/InputBufferImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;Landroidx/camera/video/internal/encoder/InputBufferImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$8L__iOopggqMfngT853NXtTVkls;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$8L__iOopggqMfngT853NXtTVkls;->f$1:Landroidx/camera/video/internal/encoder/InputBufferImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$8L__iOopggqMfngT853NXtTVkls;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$8L__iOopggqMfngT853NXtTVkls;->f$1:Landroidx/camera/video/internal/encoder/InputBufferImpl;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->lambda$matchAcquisitionsAndFreeBufferIndexes$14$EncoderImpl(Landroidx/camera/video/internal/encoder/InputBufferImpl;)V

    return-void
.end method
