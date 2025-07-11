.class final Lcom/netease/ntunisdk/okio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okio/Pipe;

.field final timeout:Lcom/netease/ntunisdk/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/Pipe;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Lcom/netease/ntunisdk/okio/Timeout;

    invoke-direct {p1}, Lcom/netease/ntunisdk/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netease/ntunisdk/okio/Pipe;->sourceClosed:Z

    .line 125
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v1, v1, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v0, v0, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_2

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v1, v1, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 116
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v1, v1, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/ntunisdk/okio/Buffer;->read(Lcom/netease/ntunisdk/okio/Buffer;J)J

    move-result-wide p1

    .line 117
    iget-object p3, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object p3, p3, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-wide p1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-boolean v1, v1, Lcom/netease/ntunisdk/okio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->this$0:Lcom/netease/ntunisdk/okio/Pipe;

    iget-object v2, v2, Lcom/netease/ntunisdk/okio/Pipe;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Pipe$PipeSource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    return-object v0
.end method
