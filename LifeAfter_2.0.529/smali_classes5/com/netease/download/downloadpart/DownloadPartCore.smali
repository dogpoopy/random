.class public Lcom/netease/download/downloadpart/DownloadPartCore;
.super Ljava/lang/Object;
.source "DownloadPartCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadPartCore"


# instance fields
.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsLowSpeedRemove:Z

.field private mIsUseHistoryTopSpeedIp:Z

.field private mPartFileSize:J

.field private mRestart:Z

.field private okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

.field private tmpFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 59
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 65
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsLowSpeedRemove:Z

    .line 73
    iput-boolean v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    .line 137
    new-instance v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/downloadpart/DownloadPartCore$1;-><init>(Lcom/netease/download/downloadpart/DownloadPartCore;)V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/download/downloadpart/DownloadPartCore;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsLowSpeedRemove:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/download/downloadpart/DownloadPartCore;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    return p0
.end method

.method private static charToByte(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method private checkPartCoreFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I
    .locals 9

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [checkPartCoreFile] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 408
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u5e76\u4e14\u5927\u5c0f\u662f\u5bf9\u7684"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 413
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u4f46\u662f\u5927\u5c0f\u662f\u4e0d\u5bf9"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method private checkPartTempFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I
    .locals 11

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [checkPartTempFile] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 455
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u4e34\u65f6\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u5e76\u4e14\u5927\u5c0f\u662f\u5bf9\u7684"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 459
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v9

    sub-long/2addr v5, v9

    add-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u4e34\u65f6\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u6587\u4ef6size\u5927\u4e8e\u53c2\u6570size"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    .line 464
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u4e34\u65f6\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c \u8be5\u6587\u4ef6\u672a\u4e0b\u8f7d\u5b8c\u5168"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1

    .line 469
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u65e0\u6cd5\u627e\u5230\u8be5\u5206\u7247\u4e34\u65f6\u6587\u4ef6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    return p1
.end method

.method private chooseIp()Z
    .locals 9

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [chooseIp] [\u8be5\u57df\u540d\u4e0b\u9009\u62e9ip] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 706
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "\uff0c \u6240\u9009\u62e9\u7684host="

    const-string v4, ", \u8be5host\u4e0b\u9009\u62e9\u7684ip="

    const-string v5, ", \u6700\u7ec8\u751f\u6210\u7684\u8bf7\u6c42\u94fe\u63a5="

    if-eqz v0, :cond_0

    .line 707
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \u8be5host\u4e0b\u8fd8\u6709\u672a\u4f7f\u7528\u7684ip\uff0c \u7ee7\u7eed\u4f7f\u7528host\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u65b0ip="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 714
    :cond_0
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadPartCore [chooseIp] [\u539fhost\u4e0b\u65e0\u53ef\u7528ip\uff0c\u5207\u6362cdn] \u5206\u7247="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \u5207\u6362host\uff0c\u539fhost="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/netease/download/dns/CdnIpController;->nextUnit(Ljava/lang/String;)Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    move-result-object v0

    .line 717
    iget-object v0, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 718
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \u65b0host="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 724
    :cond_1
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v0, v6}, Lcom/netease/download/httpdns/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadPartCore [chooseIp] [cdn\u89e3\u6790\u7684ip\uff0c\u5df2\u65e0ip\u53ef\u7528\uff0c \u8fdb\u5165httpdns\u903b\u8f91] \u5206\u7247="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", \u9891\u9053="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/netease/download/httpdns/HttpdnsProxy;->next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 729
    iget-object v6, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    iput-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 730
    iget-object v0, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 731
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnIpController;->getPort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 734
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    goto :goto_0

    .line 737
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 741
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v0

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    .line 749
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 753
    iget-boolean v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    if-eqz v7, :cond_5

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadPartCore [chooseIp] [\u4f7f\u7528\u5386\u53f2\u8bb0\u5f55\u6700\u9ad8\u901fip] \u5206\u7247="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", \u8be5\u57df\u540d\u4e0b\uff0c\u6240\u6709\u53ef\u5c1d\u8bd5\u7684ip\u5747\u5df2\u88ab\u79fb\u9664\uff0c\u76f4\u63a5\u4f7f\u7528\u5386\u53f2\u8bb0\u5f55\u4e2d\u6700\u9ad8\u901f\u7684ip\u8fdb\u884c\u4e0b\u8f7d"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 756
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 757
    iput-boolean v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v6, v0

    .line 764
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private correctIp()Z
    .locals 6

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [correctIp] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u8fdb\u5165\u5207\u6362\u6d41\u7a0b\uff0chost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DownloadPartCore"

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u5207\u6362\u5206\u7247\u4e4b\u524d\uff0chost\u4e3a="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CdnIpController.getInstances().hasNextIp(host)="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CdnIpController.getInstances().hasNextUnit()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u5220\u9664\u4e4b\u524d\uff0c CdnIpController \u603b\u89c8="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u79fb\u9664ip="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", host="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",part="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/netease/download/dns/CdnIpController;->removeIp(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 814
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u8be5host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u5176\u4ed6ip\u53ef\u5207\u6362\uff0c\u5220\u9664\u8be5host ,part="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/download/dns/CdnIpController;->removeUnit(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    return v2
.end method

.method private createTempFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I
    .locals 5

    const-string v0, "DownloadPartCore [downloadPart] \u5206\u7247="

    const-string v1, "DownloadPartCore"

    .line 513
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u751f\u6210\u7236\u76ee\u5f55="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 521
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u6587\u4ef6\u751f\u6210\u5f02\u5e38\uff0c\u6587\u4ef6\u540d\u5b57="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private downloadPart(Lcom/netease/download/downloader/DownloadParams;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadPartCore [downloadPart] \u5206\u7247\u4e0b\u8f7d\u5f00\u59cb, \u5206\u7247="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadPartCore"

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadPartCore [downloadPart] \u5206\u7247="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u53c2\u6570="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    if-eqz v1, :cond_f

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 548
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", invalid params end="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", start="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 553
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 556
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \u7f51\u7edc\u539f\u56e0\uff0c\u4e0b\u8f7d\u88ab\u4e2d\u65ad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v5

    const/16 v6, 0xd

    if-ne v6, v5, :cond_2

    return v6

    .line 563
    :cond_2
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v5

    const/16 v6, 0xc

    if-ne v6, v5, :cond_3

    return v6

    :cond_3
    const/4 v5, 0x0

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", TaskHandleOp.getInstance().getTaskHandle().isRammode()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    .line 573
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-direct {v0, v6, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->checkPartCoreFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I

    move-result v8

    .line 577
    invoke-direct {v0, v6, v8, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->handlePartCoreFile(Ljava/io/File;ILcom/netease/download/downloader/DownloadParams;)I

    move-result v8

    const/4 v9, 0x0

    if-ne v7, v8, :cond_4

    return v9

    .line 583
    :cond_4
    invoke-direct {v0, v5, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->checkPartTempFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I

    move-result v8

    .line 584
    invoke-direct {v0, v5, v6, v8, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->handlePartTempFile(Ljava/io/File;Ljava/io/File;ILcom/netease/download/downloader/DownloadParams;)I

    move-result v6

    if-ne v7, v6, :cond_5

    const-string v1, "DownloadAllCore [downloadPart] AVAILABLE  \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 587
    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 591
    :cond_5
    invoke-direct {v0, v5, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->createTempFile(Ljava/io/File;Lcom/netease/download/downloader/DownloadParams;)I

    .line 594
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    .line 597
    new-instance v6, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v6}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v6

    .line 603
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-nez v8, :cond_7

    .line 605
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    goto :goto_0

    :cond_7
    move-wide v11, v9

    .line 608
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", \u5206\u7247\u4e0b\u8f7d\uff0c\u6587\u4ef6\u540d="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\uff0c \u4e4b\u524d\u4e0b\u8f7d\u597d\u7684\u6587\u4ef6\u7684\u5927\u5c0f="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "time"

    invoke-virtual {v5, v2, v8, v9, v10}, Lcom/netease/download/util/SpUtil;->getLong(Ljava/lang/Object;Ljava/lang/String;J)J

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v8

    add-long/2addr v11, v8

    if-eqz v6, :cond_8

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "START"

    invoke-virtual {v6, v5, v2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "END"

    invoke-virtual {v6, v5, v2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 620
    :cond_8
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    sub-long/2addr v8, v11

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    invoke-virtual {v2, v8, v9}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskCurTimeDownloadSizes(J)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u53c2\u6570\u4e2d\u7684 segmentEnd="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", \u53c2\u6570\u4e2d\u7684segmentStart="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", \u5b9e\u9645\u7684segmentStart="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->chooseIp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 635
    iget-object v2, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    invoke-direct {v0, v6, v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->enterDonwload(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Ljava/util/Map;)I

    move-result v2

    .line 636
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v13

    iget-object v14, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    sub-long v15, v5, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v17, v5, v8

    invoke-virtual/range {v13 .. v18}, Lcom/netease/download/downloader/TaskHandleOp;->addChannleSpeedMap(Ljava/lang/String;JJ)V

    .line 638
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v5

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnUseTimeProxy;->finish(Ljava/lang/String;)V

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", \u8fd4\u56de\u7ed3\u679c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 643
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u6ca1\u6709\u9009\u4e2dip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_e

    .line 651
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v5

    if-eqz v5, :cond_e

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\uff0c \u8fdb\u5165\u3010\u91cd\u65b0\u9009\u62e9\u4e0b\u4e00\u4e2a\u53ef\u7528ip\u73af\u8282\u3011"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-boolean v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsLowSpeedRemove:Z

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ORBIT] Removed Ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Speed=1 Timeout=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->correctIp()Z

    move-result v5

    .line 660
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff0chasReloadCondition="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_b

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u8fdb\u5165\u3010\u91cd\u65b0\u9009\u62e9\u4e0b\u4e00\u4e2a\u53ef\u7528ip\u73af\u8282\u3011 \uff0c \u8fdb\u5165\u91cd\u8bd5"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iput-boolean v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 665
    invoke-direct/range {p0 .. p1}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;)I

    move-result v2

    goto :goto_2

    .line 669
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->enterHttpdns()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u8fdb\u5165\u3010httpdns\u5904\u7406\u3011\u73af\u8282 \uff0c \u8fdb\u5165\u91cd\u8bd5"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iput-boolean v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 672
    invoke-direct/range {p0 .. p1}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;)I

    move-result v2

    goto :goto_2

    .line 673
    :cond_c
    iget-boolean v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    if-nez v5, :cond_d

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c \u8fdb\u5165\u3010\u4f7f\u7528\u5386\u53f2\u8bb0\u5f55\u6700\u9ad8\u901fip\u3011\u73af\u8282"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iput-boolean v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 676
    iput-boolean v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIsUseHistoryTopSpeedIp:Z

    .line 677
    invoke-direct/range {p0 .. p1}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;)I

    move-result v2

    goto :goto_2

    .line 680
    :cond_d
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/netease/download/check/BackUpIpProxy;->setBackUpIpStatus(I)V

    .line 683
    :goto_2
    iget-boolean v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    if-eqz v5, :cond_e

    return v2

    .line 689
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u5206\u7247\u4e0b\u8f7d\uff0c\u6700\u540e\u7ed3\u679c ="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 544
    :cond_f
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalid params"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private enterDonwload(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadPartCore [enterDonwload] \u5206\u7247="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ip="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u5f00\u59cb\u65f6\u95f4="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DownloadPartCore"

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/download/check/BackUpIpProxy;->hasInitBackUpIp()Z

    move-result p2

    if-nez p2, :cond_0

    .line 778
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object p2

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/netease/download/check/BackUpIpProxy;->setBackUpInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 779
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object p2

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/netease/download/check/BackUpIpProxy;->setBackUpIpStatus(I)V

    .line 782
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", use okhttp"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 784
    iget-object p2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    const-string v3, "Host"

    invoke-virtual {p1, v3, p2}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 785
    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->get()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 786
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object p2

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->okhttpCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    invoke-virtual {p2, p1, v3}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result p1

    .line 788
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \u7ed3\u675f\u65f6\u95f4="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private enterHttpdns()Z
    .locals 6

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [enterHttpdns] start\uff0c \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadPartCore"

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [enterHttpdns] \u5206\u7247="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u5207\u6362httpdns"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v0

    .line 831
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v3

    const-string v5, ", \u5206\u7247\u4e2d\uff0c\u5f00\u59cbhttpdns"

    if-nez v3, :cond_0

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netease/download/config/ConfigParams;->getmCdnMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [enterHttpdns] \u5220\u9664httpdns ip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u6240\u5c5ehost="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u5206\u7247="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/netease/download/httpdns/HttpdnsProxy;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :goto_0
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/netease/download/httpdns/HttpdnsProxy;->next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [enterHttpdns] httpdns ip\u4e2d\uff0c\u5b58\u5728\u672a\u4f7f\u7528ip, \u5206\u7247="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "DownloadPartCore [enterHttpdns] httpdns ip\u4e2d\uff0c\u5df2\u65e0\u53ef\u7528ip"

    .line 845
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 848
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [enterHttpdns] end\uff0c httpdnSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return v0
.end method

.method private getContentLength(Ljava/util/Map;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    const-string v3, "Content-Length"

    .line 865
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_1
    const-string p1, "DownloadPartCore [getContentLength] \u5206\u7247="

    const-string v3, "DownloadPartCore"

    if-eqz v2, :cond_2

    .line 869
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 870
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", processHeader, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 874
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 878
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", no Content-Length found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private getPartFileSize()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mPartFileSize:J

    return-wide v0
.end method

.method private handlePartCoreFile(Ljava/io/File;ILcom/netease/download/downloader/DownloadParams;)I
    .locals 8

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [handlePartCoreFile] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \u5206\u7247\u6587\u4ef6\u662f\u5408\u683c\u7684\uff0c \u76f4\u63a5\u8fd4\u56de\u5230\u4e0a\u5c42"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskHasDownloadVerifySizes(J)V

    .line 435
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->addHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p2, :cond_2

    .line 439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", \u5220\u9664\u5206\u7247\u6587\u4ef6"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p1, p2, :cond_3

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u65e0\u6cd5\u627e\u5230\u8be5\u5206\u7247\u6587\u4ef6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method private handlePartTempFile(Ljava/io/File;Ljava/io/File;ILcom/netease/download/downloader/DownloadParams;)I
    .locals 9

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [handlePartTempFile] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 487
    new-instance p2, Ljava/io/File;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->addHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V

    .line 490
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskHasDownloadVerifySizes(J)V

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u5206\u7247\u4e34\u65f6\u6587\u4ef6\u662f\u5408\u683c\u7684\uff0c\u66f4\u540d\u540e\uff0c  \u76f4\u63a5\u8fd4\u56de\u5230\u4e0a\u5c42"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p2, p3, :cond_2

    .line 495
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", \u6587\u4ef6SIZEERROR  \u5185\u90e8\u5220\u9664\u8be5\u5206\u7247\u4e34\u65f6\u6587\u4ef6"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p2, p3, :cond_3

    .line 499
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", \u6587\u4ef6NOTCOMPLETE  \u7ee7\u7eed\u4e0b\u8f7d"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->addHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 123
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 126
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->charToByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->charToByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setPartFileSize(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mPartFileSize:J

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 90
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    return-void
.end method

.method public start()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {p0, v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;)I

    move-result v0

    return v0
.end method

.method tostr([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 99
    aget-byte v3, p1, v1

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, ""

    :goto_1
    return-object v1
.end method
