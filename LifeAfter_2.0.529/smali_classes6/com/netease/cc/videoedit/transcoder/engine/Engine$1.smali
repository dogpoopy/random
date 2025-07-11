.class Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/transcoder/engine/Engine;->createStepTimeInterpolator(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;ILcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstInputTime:J

.field private mLastInterpolatedTime:J

.field private mTimeBase:J

.field final synthetic this$0:Lcom/netease/cc/videoedit/transcoder/engine/Engine;

.field final synthetic val$timebase:J

.field final synthetic val$wrap:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/transcoder/engine/Engine;JLcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->this$0:Lcom/netease/cc/videoedit/transcoder/engine/Engine;

    iput-wide p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->val$timebase:J

    iput-object p4, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->val$wrap:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide p1, 0x7fffffffffffffffL

    .line 243
    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mFirstInputTime:J

    .line 244
    iget-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->val$timebase:J

    const-wide/16 p3, 0xa

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mTimeBase:J

    return-void
.end method


# virtual methods
.method public interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 248
    iget-wide p1, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mLastInterpolatedTime:J

    return-wide p1

    .line 249
    :cond_0
    iget-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mFirstInputTime:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iput-wide p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mFirstInputTime:J

    .line 250
    :cond_1
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mTimeBase:J

    iget-wide v2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mFirstInputTime:J

    sub-long/2addr p2, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mLastInterpolatedTime:J

    .line 251
    iget-object p2, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->val$wrap:Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/engine/Engine$1;->mLastInterpolatedTime:J

    invoke-interface {p2, p1, v0, v1}, Lcom/netease/cc/videoedit/transcoder/time/TimeInterpolator;->interpolate(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;J)J

    move-result-wide p1

    return-wide p1
.end method
