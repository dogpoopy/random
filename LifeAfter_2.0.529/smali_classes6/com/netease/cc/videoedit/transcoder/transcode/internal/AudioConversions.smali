.class Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioConversions;
.super Ljava/lang/Object;
.source "AudioConversions.java"


# static fields
.field private static final BYTES_PER_SAMPLE_PER_CHANNEL:I = 0x2

.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final MICROSECONDS_PER_SECOND:J = 0xf4240L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bytesToUs(III)J
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    mul-int p1, p1, p2

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    int-to-long p0, p1

    .line 17
    div-long/2addr v0, p0

    return-wide v0
.end method

.method static shortsToUs(III)J
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    .line 28
    invoke-static {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioConversions;->bytesToUs(III)J

    move-result-wide p0

    return-wide p0
.end method

.method static usToBytes(JII)I
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    mul-int p2, p2, p3

    long-to-double p0, p0

    int-to-double p2, p2

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    const-wide p2, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method static usToShorts(JII)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioConversions;->usToBytes(JII)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method
