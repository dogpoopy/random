.class public Lcom/netease/download/downloader/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.java"


# instance fields
.field private mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mErrorcdn:Ljava/lang/String;

.field private mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchDlspeed:D


# direct methods
.method public constructor <init>(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netease/download/downloader/FileHandle;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-void
.end method


# virtual methods
.method public getCdnerrorMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getDownloadParams()Lcom/netease/download/downloader/DownloadParams;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-object v0
.end method

.method public getErrorcdn()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mErrorcdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPartResultMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/FileHandle;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPatchDlspeed()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/netease/download/downloader/FileHandle;->mPatchDlspeed:D

    return-wide v0
.end method

.method public setCdnerrorMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/netease/download/downloader/FileHandle;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public setDownloadParams(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/netease/download/downloader/FileHandle;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-void
.end method

.method public setErrorcdn(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/download/downloader/FileHandle;->mErrorcdn:Ljava/lang/String;

    return-void
.end method

.method public setPartResultMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/netease/download/downloader/FileHandle;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public setPatchDlspeed(D)V
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/netease/download/downloader/FileHandle;->mPatchDlspeed:D

    return-void
.end method
