.class public Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private targetBitRate:J

.field private targetChannels:I

.field private targetMimeType:Ljava/lang/String;

.field private targetSampleRate:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetChannels:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetChannels:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetSampleRate:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetSampleRate:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetBitRate:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/DefaultAudioStrategy$Options;->targetBitRate:J

    return-wide p1
.end method
