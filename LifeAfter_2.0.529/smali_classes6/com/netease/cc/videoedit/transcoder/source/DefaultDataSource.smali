.class public abstract Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/source/DataSource;


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtractor:Landroid/media/MediaExtractor;

.field private mExtractorApplied:Z

.field private mFirstTimestampUs:J

.field private final mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Landroid/media/MediaMetadataRetriever;

.field private mMetadataApplied:Z

.field private final mSelectedTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 28
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 31
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 32
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    .line 34
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    const-wide/16 v1, 0x0

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    const-wide/high16 v0, -0x8000000000000000L

    .line 36
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    return-void
.end method

.method private ensureExtractor()V
    .locals 3

    .line 46
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractorApplied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractorApplied:Z

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->applyExtractor(Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "Got IOException while trying to open MediaExtractor."

    invoke-virtual {v1, v2, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private ensureMetadata()V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadataApplied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadataApplied:Z

    .line 41
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->applyRetriever(Landroid/media/MediaMetadataRetriever;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract applyExtractor(Landroid/media/MediaExtractor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract applyRetriever(Landroid/media/MediaMetadataRetriever;)V
.end method

.method public canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureExtractor()V

    .line 99
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDurationUs()J
    .locals 4

    .line 165
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureMetadata()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    .line 168
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLocation()[D
    .locals 5

    .line 138
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureMetadata()V

    .line 139
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Lcom/netease/cc/videoedit/transcoder/internal/ISO6709LocationParser;

    invoke-direct {v1}, Lcom/netease/cc/videoedit/transcoder/internal/ISO6709LocationParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/ISO6709LocationParser;->parse(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 144
    aget v3, v0, v2

    float-to-double v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    .line 145
    aget v0, v0, v2

    float-to-double v3, v0

    aput-wide v3, v1, v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureMetadata()V

    .line 155
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReadUs()J
    .locals 5

    .line 124
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 132
    iget-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->has(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    return-object p1

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureExtractor()V

    .line 179
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 182
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 183
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v4, :cond_1

    const-string v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p1, v0, v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-object v2

    .line 189
    :cond_1
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v4, :cond_2

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {p1, v0, v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public isDrained()Z
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureExtractor()V

    .line 93
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V
    .locals 6

    .line 104
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureExtractor()V

    .line 105
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v2, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->bytes:I

    .line 107
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->isKeyFrame:Z

    .line 108
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    .line 109
    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 110
    iget-wide v1, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    iput-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 113
    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 118
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    iget-wide v2, p1, Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;->timestampUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    return-void

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected release()V
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "Could not release extractor:"

    invoke-virtual {v1, v2, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 215
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    const-string v2, "Could not release metadata:"

    invoke-virtual {v1, v2, v0}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->release()V

    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 222
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    .line 223
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->setAudio(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->setVideo(Ljava/lang/Object;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :catch_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractorApplied:Z

    .line 236
    :try_start_1
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :catch_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 239
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mMetadataApplied:Z

    return-void
.end method

.method public seekTo(J)J
    .locals 10

    .line 69
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->ensureExtractor()V

    .line 70
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mFirstTimestampUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    sget-object v3, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 73
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Seeking to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p1, v0

    const-wide/16 v6, 0x3e8

    div-long v8, p1, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " first: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v8, v0, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " hasVideo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasAudio: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, p2, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result p1

    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 82
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 84
    :cond_1
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Second seek to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/source/DefaultDataSource;->mIndex:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method
