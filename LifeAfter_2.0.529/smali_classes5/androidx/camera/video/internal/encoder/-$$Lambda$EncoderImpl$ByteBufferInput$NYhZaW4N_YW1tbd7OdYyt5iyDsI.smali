.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$ByteBufferInput$NYhZaW4N_YW1tbd7OdYyt5iyDsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$ByteBufferInput$NYhZaW4N_YW1tbd7OdYyt5iyDsI;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$ByteBufferInput$NYhZaW4N_YW1tbd7OdYyt5iyDsI;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->lambda$acquireBuffer$5$EncoderImpl$ByteBufferInput(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
