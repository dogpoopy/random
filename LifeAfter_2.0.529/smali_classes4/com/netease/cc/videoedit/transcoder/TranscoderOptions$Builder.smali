.class public Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
.super Ljava/lang/Object;
.source "TranscoderOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final audioDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

.field private audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

.field private audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

.field private dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

.field private listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

.field private listenerHandler:Landroid/os/Handler;

.field private rotation:I

.field private timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

.field private validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

.field private final videoDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    .line 136
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;

    invoke-direct {v0, p1}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    return-void
.end method

.method private buildAudioDataSources()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 343
    sget-object v6, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {v4, v6}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 354
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    return-object v0

    .line 357
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    .line 359
    sget-object v3, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    invoke-interface {v2, v3}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 362
    :cond_4
    new-instance v3, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;

    invoke-interface {v2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/netease/cc/videoedit/transcoder/source/BlankAudioDataSource;-><init>(J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method


# virtual methods
.method public addDataSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 185
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;

    invoke-direct {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/content/Context;Landroid/net/Uri;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 191
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;

    invoke-direct {v0, p2, p3}, Lcom/netease/cc/videoedit/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 150
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->AUDIO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackType;->VIDEO:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/io/FileDescriptor;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 167
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    invoke-direct {v0, p2}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 179
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;

    invoke-direct {v0, p2}, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDataSource(Ljava/io/FileDescriptor;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 161
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;

    invoke-direct {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 173
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;

    invoke-direct {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/FilePathDataSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    if-eqz v0, :cond_c

    .line 373
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "we need at least one data source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    :goto_0
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->rotation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 377
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Accepted values for rotation are 0, 90, 180, 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 380
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4

    .line 381
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 382
    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    if-nez v0, :cond_6

    .line 385
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->builder()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    if-nez v0, :cond_7

    .line 388
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategies;->for720x1280()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    if-nez v0, :cond_8

    .line 391
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/validator/DefaultValidator;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/validator/DefaultValidator;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    .line 393
    :cond_8
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    if-nez v0, :cond_9

    .line 394
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/time/DefaultTimeInterpolator;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/time/DefaultTimeInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    if-nez v0, :cond_a

    .line 397
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/stretch/DefaultAudioStretcher;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 399
    :cond_a
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    if-nez v0, :cond_b

    .line 400
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/resample/DefaultAudioResampler;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/resample/DefaultAudioResampler;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    .line 402
    :cond_b
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;-><init>(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$1;)V

    .line 403
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    iput-object v1, v0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    .line 404
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->buildAudioDataSources()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$102(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;

    .line 405
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$202(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;

    .line 406
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$302(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    .line 407
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->listenerHandler:Landroid/os/Handler;

    .line 408
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$402(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    .line 409
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$502(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    .line 410
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$602(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/validator/Validator;)Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    .line 411
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->rotation:I

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$702(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;I)I

    .line 412
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$802(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    .line 413
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$902(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;)Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    .line 414
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->access$1002(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-object v0

    .line 371
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioResampler(Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-object p0
.end method

.method public setAudioStretcher(Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    return-object p0
.end method

.method public setAudioTrackStrategy(Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object p0
.end method

.method public setListener(Lcom/netease/cc/videoedit/transcoder/TranscoderListener;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

    return-object p0
.end method

.method public setListenerHandler(Landroid/os/Handler;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setSpeed(F)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 1

    .line 298
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;

    invoke-direct {v0, p1}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->setTimeInterpolator(Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeInterpolator(Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    return-object p0
.end method

.method public setValidator(Lcom/netease/cc/videoedit/transcoder/validator/Validator;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    return-object p0
.end method

.method public setVideoRotation(I)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 268
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->rotation:I

    return-object p0
.end method

.method public setVideoTrackStrategy(Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object p0
.end method

.method public transcode()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-static {}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->getInstance()Lcom/netease/cc/videoedit/transcoder/Transcoder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;->build()Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cc/videoedit/transcoder/Transcoder;->transcode(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
