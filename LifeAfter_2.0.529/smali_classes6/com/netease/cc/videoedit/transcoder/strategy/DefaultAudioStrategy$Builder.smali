.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private targetBitRate:J

.field private targetChannels:I

.field private targetMimeType:Ljava/lang/String;

.field private targetSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    .line 55
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 56
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    const-string v0, "audio/mp4a-latm"

    .line 57
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bitRate(J)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    return-object p0
.end method

.method public build()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;
    .locals 2

    .line 105
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->options()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)V

    return-object v0
.end method

.method public channels(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
    .locals 0

    .line 64
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public options()Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;
    .locals 3

    .line 95
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;-><init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$1;)V

    .line 96
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$102(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;I)I

    .line 97
    iget v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$202(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;I)I

    .line 98
    iget-object v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$302(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    invoke-static {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->access$402(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;J)J

    return-object v0
.end method

.method public sampleRate(I)Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;
    .locals 0

    .line 70
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    return-object p0
.end method
