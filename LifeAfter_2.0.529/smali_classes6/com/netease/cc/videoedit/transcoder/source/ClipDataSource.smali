.class public Lcom/netease/cc/videoedit/transcoder/source/ClipDataSource;
.super Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;
.source "ClipDataSource.java"


# direct methods
.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;J)V
    .locals 1

    .line 12
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;J)V

    invoke-direct {p0, v0}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;JJ)V
    .locals 7

    .line 16
    new-instance v6, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;

    .line 18
    invoke-interface {p1}, Lcom/netease/cc/videoedit/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    sub-long v4, v0, p4

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/cc/videoedit/transcoder/source/TrimDataSource;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;JJ)V

    .line 16
    invoke-direct {p0, v6}, Lcom/netease/cc/videoedit/transcoder/source/DataSourceWrapper;-><init>(Lcom/netease/cc/videoedit/transcoder/source/DataSource;)V

    return-void
.end method
