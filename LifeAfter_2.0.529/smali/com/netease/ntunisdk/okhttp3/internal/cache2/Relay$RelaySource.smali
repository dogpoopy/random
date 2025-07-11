.class Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

.field private final timeout:Lcom/netease/ntunisdk/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ntunisdk/okio/Timeout;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okio/Timeout;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget v3, v2, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->sourceCount:I

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget v2, v2, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v2, v2, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_7

    iget-object v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    :goto_0
    :try_start_0
    iget-wide v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamPos:J

    const/4 v0, 0x2

    const-wide/16 v9, -0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_2

    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-boolean v5, v5, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v5, :cond_0

    monitor-exit v4

    return-wide v9

    :cond_0
    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v5}, Lcom/netease/ntunisdk/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v5, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v5, 0x1

    monitor-exit v4

    goto :goto_1

    :cond_2
    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v7, v5

    iget-wide v11, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v13, v11, v5

    if-gez v13, :cond_6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v5, 0x2

    :goto_1
    const-wide/16 v11, 0x20

    if-ne v5, v0, :cond_3

    iget-wide v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v7, v4

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v13, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    iget-wide v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v14, v4, v11

    move-object/from16 v16, p1

    move-wide/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;->read(JLcom/netease/ntunisdk/okio/Buffer;J)V

    iget-wide v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v2

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstream:Lcom/netease/ntunisdk/okio/Source;

    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v6, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-wide v13, v6, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v5, v13, v14}, Lcom/netease/ntunisdk/okio/Source;->read(Lcom/netease/ntunisdk/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v0, v5, v9

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v2, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-wide v9

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :try_start_3
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v13, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/netease/ntunisdk/okio/Buffer;

    const-wide/16 v15, 0x0

    move-object/from16 v14, p1

    move-wide/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Lcom/netease/ntunisdk/okio/Buffer;->copyTo(Lcom/netease/ntunisdk/okio/Buffer;JJ)Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v9, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v15, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;

    add-long v16, v7, v11

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->clone()Lcom/netease/ntunisdk/okio/Buffer;

    move-result-object v18

    move-wide/from16 v19, v5

    invoke-virtual/range {v15 .. v20}, Lcom/netease/ntunisdk/okhttp3/internal/cache2/FileOperator;->write(JLcom/netease/ntunisdk/okio/Buffer;J)V

    iget-object v7, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v8, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v0, v8, v5, v6}, Lcom/netease/ntunisdk/okio/Buffer;->write(Lcom/netease/ntunisdk/okio/Buffer;J)V

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v8

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-wide v10, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-object v8, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v8, v8, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/okio/Buffer;->size()J

    move-result-wide v8

    iget-object v10, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-wide v10, v10, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/netease/ntunisdk/okio/Buffer;->skip(J)V

    :cond_5
    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-wide v8, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v8, v5

    iput-wide v8, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamPos:J

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v5

    :try_start_5
    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    return-wide v2

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    :try_start_8
    iget-object v3, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iput-object v4, v3, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    iget-object v3, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_6
    sub-long/2addr v7, v11

    :try_start_a
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;

    iget-object v9, v0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay;->buffer:Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v7, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v11, v7, v5

    move-object/from16 v10, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lcom/netease/ntunisdk/okio/Buffer;->copyTo(Lcom/netease/ntunisdk/okio/Buffer;JJ)Lcom/netease/ntunisdk/okio/Buffer;

    iget-wide v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    monitor-exit v4

    return-wide v2

    :catchall_5
    move-exception v0

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/netease/ntunisdk/okio/Timeout;

    return-object v0
.end method
