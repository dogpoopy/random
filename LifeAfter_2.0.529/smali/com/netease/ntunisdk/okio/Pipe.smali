.class public final Lcom/netease/ntunisdk/okio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okio/Pipe$PipeSink;,
        Lcom/netease/ntunisdk/okio/Pipe$PipeSource;
    }
.end annotation


# instance fields
.field final buffer:Lcom/netease/ntunisdk/okio/Buffer;

.field final maxBufferSize:J

.field private final sink:Lcom/netease/ntunisdk/okio/Sink;

.field sinkClosed:Z

.field private final source:Lcom/netease/ntunisdk/okio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/netease/ntunisdk/okio/Buffer;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/okio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/Pipe$PipeSink;-><init>(Lcom/netease/ntunisdk/okio/Pipe;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe;->sink:Lcom/netease/ntunisdk/okio/Sink;

    .line 42
    new-instance v0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;-><init>(Lcom/netease/ntunisdk/okio/Pipe;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe;->source:Lcom/netease/ntunisdk/okio/Source;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 48
    iput-wide p1, p0, Lcom/netease/ntunisdk/okio/Pipe;->maxBufferSize:J

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxBufferSize < 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final sink()Lcom/netease/ntunisdk/okio/Sink;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe;->sink:Lcom/netease/ntunisdk/okio/Sink;

    return-object v0
.end method

.method public final source()Lcom/netease/ntunisdk/okio/Source;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe;->source:Lcom/netease/ntunisdk/okio/Source;

    return-object v0
.end method
