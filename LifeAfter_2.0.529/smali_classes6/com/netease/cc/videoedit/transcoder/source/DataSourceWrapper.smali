.class public Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;
.super Ljava/lang/Object;
.source "DataSourceWrapper.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/source/DataSource;


# instance fields
.field private final mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;


# direct methods
.method protected constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    return-void
.end method


# virtual methods
.method public canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z

    move-result p1

    return p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()[D
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getLocation()[D

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getReadUs()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getReadUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSource()Lcom/netease/cc/videoedit/transcoder/source/DataSource;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    return-object v0
.end method

.method public getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public isDrained()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->isDrained()Z

    move-result v0

    return v0
.end method

.method public readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V

    return-void
.end method

.method public releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->rewind()V

    return-void
.end method

.method public seekTo(J)J
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->seekTo(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;->mSource:Lcom/netease/cc/videoedit/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V

    return-void
.end method
