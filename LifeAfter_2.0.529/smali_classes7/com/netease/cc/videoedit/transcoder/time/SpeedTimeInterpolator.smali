.class public Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;
.super Ljava/lang/Object;
.source "SpeedTimeInterpolator.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFactor:D

.field private final mTrackData:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap<",
            "Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-direct {v0}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;-><init>()V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    .line 32
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid speed factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFactor()F
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    double-to-float v0, v0

    return v0
.end method

.method public interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->has(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    new-instance v1, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;-><init>(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->set(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mTrackData:Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;

    invoke-virtual {v0, p1}, Lcom/netease/cc/videoedit/transcoder/internal/TrackTypeMap;->get(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;

    .line 51
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$100(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 52
    invoke-static {v0, p2, p3}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$102(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 53
    invoke-static {v0, p2, p3}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$202(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$100(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide v1

    sub-long v1, p2, v1

    long-to-double v1, v1

    .line 56
    iget-wide v3, p0, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->mFactor:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-long v1, v1

    .line 57
    invoke-static {v0, p2, p3}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$102(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 58
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$200(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$202(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;J)J

    .line 60
    :goto_0
    sget-object v1, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " inputTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " outputTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$200(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;->i(Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;->access$200(Lcom/netease/cc/videoedit/transcoder/time/SpeedTimeInterpolator$TrackData;)J

    move-result-wide p1

    return-wide p1
.end method
