.class Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;
.super Ljava/lang/Object;
.source "SpeedTimeInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackData"
.end annotation


# instance fields
.field private lastCorrectedTime:J

.field private lastRealTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 65
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastRealTime:J

    .line 66
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastCorrectedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$1;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastRealTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastRealTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastCorrectedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->lastCorrectedTime:J

    return-wide p1
.end method
