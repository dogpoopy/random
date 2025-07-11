.class public Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/sink/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastFormat:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mMuxerChecks:Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;

.field private mMuxerIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerStarted:Z

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueBuffer:Ljava/nio/ByteBuffer;

.field private mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 62
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 63
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 64
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerChecks:Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;

    .line 73
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private drainQueue()V
    .locals 10

    .line 183
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output format determined, writing pending data into the muxer. samples:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;

    .line 192
    invoke-static {v9}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v4

    invoke-static {v9}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->access$200(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)J

    move-result-wide v5

    invoke-static {v9}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->access$300(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v7

    move-object v2, v0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 193
    invoke-static {v9}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->access$400(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3, v0}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 194
    invoke-static {v9}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private enqueue(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 170
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 172
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 173
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 175
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    new-instance v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;-><init>(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaCodec$BufferInfo;Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$1;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startIfNeeded()V
    .locals 12

    .line 122
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v1, v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v3, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v2, v3}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    .line 126
    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v3, v4}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-nez v3, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    if-eqz v6, :cond_8

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, " to muxer"

    const-string v6, "mime"

    const-string v7, " with "

    const-string v8, "Added track #"

    if-eqz v0, :cond_6

    .line 135
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 136
    iget-object v9, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v10, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 137
    sget-object v9, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 140
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 142
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 145
    iput-boolean v5, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 146
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->drainQueue()V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "Failed to release the muxer."

    invoke-virtual {v1, v2, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setLocation(DD)V
    .locals 2

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public setTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerChecks:Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSinkChecks;->checkOutputFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->startIfNeeded()V

    return-void
.end method

.method public setTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mStatus:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    return-void
.end method

.method public writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;->enqueue(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_0
    return-void
.end method
