.class public Lcom/netease/cc/videoedit/transcoder/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final PROGRESS_INTERVAL_STEPS:J = 0xaL

.field private static final SLEEP_TO_WAIT_TRACK_TRANSCODERS:J = 0xaL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

.field private final mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInterpolators:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/util/ArrayList<",
            "Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOutputFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProgress:D

.field private final mProgressCallback:Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;

.field private final mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Ljava/util/ArrayList<",
            "Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 66
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 67
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mInterpolators:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 68
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 69
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 70
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mOutputFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 75
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mProgressCallback:Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;

    return-void
.end method

.method private closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    .line 201
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 202
    invoke-interface {v1}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->release()V

    .line 203
    invoke-interface {v2, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 204
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method private computeTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackType;",
            "Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;",
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->ABSENT:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 114
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 115
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    new-instance v2, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;

    invoke-direct {v2}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;-><init>()V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 119
    invoke-interface {v5, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v2, v5, p1, v6}, Lcom/netease/cc/videoedit/transcoder/engine/MediaFormatProvider;->provideMediaFormat(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 126
    invoke-interface {p2, v3, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;->createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrackFormat returned null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " sources off "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mOutputFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {p2, p1, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 134
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-interface {p2, p1, v0}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->setTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;)V

    .line 135
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {p2, p1, v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method private createStepTimeInterpolator(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;ILcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;
    .locals 2

    if-lez p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mInterpolators:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    const-wide v0, 0x7fffffffffffffffL

    .line 236
    invoke-interface {p2, p1, v0, v1}, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;->interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 240
    :goto_0
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;-><init>(Lcom/netease/cc/videoedit/transcoder/engine/Engine;JLcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)V

    return-object v0
.end method

.method private getCurrentTrackTranscoder(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_1

    .line 214
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    .line 215
    invoke-interface {v1}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getCurrentTrackTranscoder(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {p2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    return-object p1

    :cond_1
    if-ge v1, v0, :cond_2

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->openCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V

    .line 224
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {p2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    return-object p1

    .line 226
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This should never happen. last:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTotalDurationUs()J
    .locals 6

    .line 272
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->hasVideoSources()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->hasAudioSources()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v3}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide v2, 0x7fffffffffffffffL

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackDurationUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 275
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackDurationUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J

    move-result-wide v2

    .line 276
    :cond_3
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTrackDurationUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    .line 260
    :goto_0
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v4, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v4, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    if-ge v3, v0, :cond_1

    .line 263
    invoke-interface {v4}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getReadUs()J

    move-result-wide v4

    goto :goto_1

    .line 265
    :cond_1
    invoke-interface {v4}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v4

    :goto_1
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private getTrackProgress(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)D
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackReadUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J

    move-result-wide v0

    .line 295
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTotalDurationUs()J

    move-result-wide v2

    .line 296
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTrackProgress - readUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", totalUs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const-wide/16 v2, 0x1

    :cond_1
    long-to-double v0, v0

    long-to-double v2, v2

    .line 298
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getTrackReadUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    .line 283
    :goto_0
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v4, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v4, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    if-gt v3, v0, :cond_1

    .line 286
    invoke-interface {v4}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getReadUs()J

    move-result-wide v4

    add-long/2addr v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private getUniqueSources()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private hasAudioSources()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasVideoSources()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isCompleted(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 142
    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    .line 143
    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    invoke-interface {p1}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mCurrentStep:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 151
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 152
    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {v4, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 158
    :cond_0
    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getTimeInterpolator()Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    move-result-object v2

    .line 157
    invoke-direct {p0, p1, v0, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->createStepTimeInterpolator(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;ILcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    move-result-object v6

    .line 159
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mInterpolators:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$2;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackStatus:[I

    invoke-virtual {v1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 190
    new-instance p2, Lcom/netease/cc/videoedit/transcoder/transcode/NoOpTrackTranscoder;

    invoke-direct {p2}, Lcom/netease/cc/videoedit/transcoder/transcode/NoOpTrackTranscoder;-><init>()V

    goto :goto_1

    .line 170
    :cond_1
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$2;->$SwitchMap$com$netease$cc$videoedit$transcoder$engine$TrackType:[I

    invoke-virtual {p1}, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_2

    .line 177
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;

    iget-object v5, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 179
    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getAudioStretcher()Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    move-result-object v7

    .line 180
    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getAudioResampler()Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/netease/cc/videoedit/transcoder/transcode/AudioTrackTranscoder;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)V

    goto :goto_0

    .line 183
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 172
    :cond_3
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 174
    invoke-virtual {p2}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getVideoRotation()I

    move-result p2

    invoke-direct {v0, v4, v1, v6, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/VideoTrackTranscoder;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;I)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 165
    :cond_4
    new-instance p2, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-direct {p2, v4, v0, p1, v6}, Lcom/netease/cc/videoedit/transcoder/transcode/PassThroughTrackTranscoder;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mOutputFormats:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    invoke-interface {p2, v0}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->setUp(Landroid/media/MediaFormat;)V

    .line 195
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mTranscoders:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->require(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setProgress(D)V
    .locals 1

    .line 89
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mProgress:D

    .line 90
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mProgressCallback:Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine$ProgressCallback;->onProgress(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mProgress:D

    return-wide v0
.end method

.method public transcode(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getDataSink()Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 310
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getVideoDataSources()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->setVideo(Ljava/lang/Object;)V

    .line 311
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSources:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getAudioDataSources()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->setAudio(Ljava/lang/Object;)V

    .line 314
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->setOrientation(I)V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getUniqueSources()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 316
    invoke-interface {v4}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getLocation()[D

    move-result-object v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    aget-wide v6, v4, v3

    aget-wide v8, v4, v5

    invoke-interface {v2, v6, v7, v8, v9}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->setLocation(DD)V

    .line 325
    :cond_1
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getAudioTrackStrategy()Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getAudioDataSources()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v2, v4, v6}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->computeTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;Ljava/util/List;)V

    .line 326
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getVideoTrackStrategy()Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getVideoDataSources()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v2, v4, v6}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->computeTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;Ljava/util/List;)V

    .line 327
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v2}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireVideo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 328
    iget-object v4, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mStatuses:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v4}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->requireAudio()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    .line 329
    invoke-virtual {v2}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 330
    :goto_0
    invoke-virtual {v4}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 331
    :cond_3
    sget-object v7, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duration (us): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTotalDurationUs()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->isTranscoding()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getVideoRotation()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 340
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->getValidator()Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    move-result-object v8

    invoke-interface {v8, v2, v4}, Lcom/netease/cc/videoedit/transcoder/validator/Validator;->validate(Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v7, :cond_5

    goto :goto_2

    .line 341
    :cond_5
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/ValidatorException;

    const-string v2, "Validator returned false."

    invoke-direct {v0, v2}, Lcom/netease/cc/videoedit/transcoder/internal/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    const-wide/16 v7, 0x0

    move-wide v9, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    .line 388
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 392
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    :catch_0
    iget-object v0, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->release()V

    return-void

    .line 353
    :cond_8
    :goto_4
    :try_start_2
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new step: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_11

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTotalDurationUs()J

    move-result-wide v11

    const-wide/16 v13, 0x64

    add-long/2addr v11, v13

    .line 364
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackReadUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J

    move-result-wide v13

    cmp-long v2, v13, v11

    if-lez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 365
    :goto_5
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v4}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackReadUs(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)J

    move-result-wide v13

    cmp-long v4, v13, v11

    if-lez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 368
    :goto_6
    sget-object v11, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v11}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->isCompleted(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v11

    .line 369
    sget-object v12, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v12}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->isCompleted(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    move-object v14, v13

    goto :goto_7

    .line 370
    :cond_b
    sget-object v14, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v14, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getCurrentTrackTranscoder(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    move-result-object v14

    :goto_7
    if-eqz v12, :cond_c

    goto :goto_8

    .line 371
    :cond_c
    sget-object v13, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v13, v0}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getCurrentTrackTranscoder(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;

    move-result-object v13

    :goto_8
    if-nez v11, :cond_d

    .line 373
    invoke-interface {v14, v2}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->transcode(Z)Z

    move-result v2

    or-int/2addr v2, v3

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    if-nez v12, :cond_e

    .line 376
    invoke-interface {v13, v4}, Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;->transcode(Z)Z

    move-result v4

    or-int/2addr v2, v4

    :cond_e
    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    const-wide/16 v13, 0xa

    .line 378
    rem-long v15, v9, v13

    cmp-long v4, v15, v7

    if-nez v4, :cond_f

    .line 379
    sget-object v4, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v4}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackProgress(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)D

    move-result-wide v3

    .line 380
    sget-object v5, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v5}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->getTrackProgress(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)D

    move-result-wide v7

    .line 381
    sget-object v5, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "progress - video:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " audio:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-double/2addr v7, v3

    int-to-double v3, v6

    .line 382
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v3

    :try_start_3
    invoke-direct {v1, v7, v8}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->setProgress(D)V

    :cond_f
    if-nez v2, :cond_10

    const-wide/16 v2, 0xa

    .line 385
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :cond_10
    move v2, v11

    move v4, v12

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_3

    .line 356
    :cond_11
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 391
    :try_start_4
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    .line 392
    sget-object v2, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-direct {v1, v2}, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->closeCurrentStep(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 394
    :catch_1
    iget-object v2, v1, Lcom/netease/cc/videoedit/transcoder/engine/Engine;->mDataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-interface {v2}, Lcom/netease/cc/videoedit/transcoder/sink/DataSink;->release()V

    .line 395
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method
