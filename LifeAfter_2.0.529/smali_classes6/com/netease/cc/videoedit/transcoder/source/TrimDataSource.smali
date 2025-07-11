.class public Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;
.super Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;
.source "TrimDataSource.java"


# static fields
.field private static final LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private trimDone:Z

.field private trimDurationUs:J

.field private trimStartUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    sget-object v1, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/cc/videoedit/transcoder/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->LOG:Lcom/netease/cc/videoedit/transcoder/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;J)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;JJ)V
    .locals 4

    .line 27
    invoke-direct {p0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDone:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    .line 31
    invoke-interface {p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    add-long v2, p2, p4

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 36
    iput-wide p2, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr v0, p2

    sub-long/2addr v0, p4

    .line 37
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDurationUs:J

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trim values cannot be greater than media duration."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trim values cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 5

    .line 47
    iget-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDone:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->getSource()Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    invoke-interface {v0, v1, v2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->seekTo(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDone:Z

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result p1

    return p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDurationUs:J

    return-wide v0
.end method

.method public isDrained()Z
    .locals 5

    .line 56
    invoke-super {p0}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->isDrained()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->getReadUs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->getDurationUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public rewind()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->rewind()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimDone:Z

    return-void
.end method

.method public seekTo(J)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->seekTo(J)J

    move-result-wide p1

    .line 63
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
