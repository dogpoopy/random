.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/TrackStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;,
        Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;
    }
.end annotation


# static fields
.field public static final BITRATE_UNKNOWN:J = -0x8000000000000000L

.field public static final CHANNELS_AS_INPUT:I = -0x1

.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field public static final SAMPLE_RATE_AS_INPUT:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    return-void
.end method

.method public static builder()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
    .locals 1

    .line 50
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;-><init>()V

    return-object v0
.end method

.method private getInputChannelCount(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    .line 156
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getInputSampleRate(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    .line 164
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->getInputChannelCount(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 122
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->getInputSampleRate(Ljava/util/List;)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 125
    invoke-static {v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v2

    .line 127
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const-wide/high16 v5, -0x8000000000000000L

    const-string v7, "bitrate"

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 128
    invoke-static {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 129
    invoke-static {v3}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 130
    invoke-static {v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFormat;

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    goto :goto_2

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    .line 139
    invoke-static {v0, v2}, Lcom/netease/cc/videoedit/transcoder/internal/BitRates;->estimateAudioBitRate(II)J

    move-result-wide v3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 140
    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    .line 142
    :goto_2
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mime"

    invoke-virtual {p2, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sample-rate"

    .line 143
    invoke-virtual {p2, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "channel-count"

    .line 144
    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    long-to-int p1, v3

    .line 145
    invoke-virtual {p2, v7, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 146
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    const-string v0, "aac-profile"

    .line 147
    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 150
    :cond_4
    sget-object p1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    return-object p1
.end method
