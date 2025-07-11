.class public Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;
.super Ljava/lang/Object;
.source "TranscoderOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$Builder;
    }
.end annotation


# instance fields
.field private audioDataSources:Ljava/util/List;
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

.field listener:Lcom/netease/cc/videoedit/transcoder/TranscoderListener;

.field listenerHandler:Landroid/os/Handler;

.field private rotation:I

.field private timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

.field private validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

.field private videoDataSources:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;)Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioDataSources:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->videoDataSources:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/sink/DataSink;)Lcom/netease/cc/videoedit/transcoder/sink/DataSink;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    return-object p1
.end method

.method static synthetic access$402(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;)Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object p1
.end method

.method static synthetic access$602(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/validator/Validator;)Lcom/netease/cc/videoedit/transcoder/validator/Validator;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    return-object p1
.end method

.method static synthetic access$702(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->rotation:I

    return p1
.end method

.method static synthetic access$802(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;)Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    return-object p1
.end method


# virtual methods
.method public getAudioDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioDataSources:Ljava/util/List;

    return-object v0
.end method

.method public getAudioResampler()Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioResampler:Lcom/netease/cc/videoedit/transcoder/resample/AudioResampler;

    return-object v0
.end method

.method public getAudioStretcher()Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioStretcher:Lcom/netease/cc/videoedit/transcoder/stretch/AudioStretcher;

    return-object v0
.end method

.method public getAudioTrackStrategy()Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->audioTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object v0
.end method

.method public getDataSink()Lcom/netease/cc/videoedit/transcoder/sink/DataSink;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->dataSink:Lcom/netease/cc/videoedit/transcoder/sink/DataSink;

    return-object v0
.end method

.method public getTimeInterpolator()Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->timeInterpolator:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    return-object v0
.end method

.method public getValidator()Lcom/netease/cc/videoedit/transcoder/validator/Validator;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->validator:Lcom/netease/cc/videoedit/transcoder/validator/Validator;

    return-object v0
.end method

.method public getVideoDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/cc/videoedit/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->videoDataSources:Ljava/util/List;

    return-object v0
.end method

.method public getVideoRotation()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->rotation:I

    return v0
.end method

.method public getVideoTrackStrategy()Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/TranscoderOptions;->videoTrackStrategy:Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;

    return-object v0
.end method
