.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

.field private mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

.field private final mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 61
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .line 62
    iput-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    .line 63
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "APKXDL (Linux; U; Android "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method private addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2

    .line 810
    iget-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Range"

    invoke-virtual {p2, v0, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z
    .locals 1

    .line 546
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result p1

    const/4 v0, 0x2

    const/16 v1, 0xc3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v0, 0xc4

    const-string v1, "waiting for wifi or for download over cellular to be authorized"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 326
    :cond_1
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v0, "roaming is not allowed"

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 329
    :cond_2
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v0, 0xc5

    const-string v1, "waiting for wifi"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 319
    :cond_3
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v0, "waiting for network to return"

    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1
.end method

.method private checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 446
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getControl()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 447
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result p1

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result v0

    const-string v1, "download paused"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V
    .locals 1

    .line 387
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 388
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 389
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 390
    iput-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 1

    .line 429
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 431
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 291
    invoke-direct {p0, v0, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 297
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 299
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 305
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object p2

    .line 307
    iget-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 308
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    return-void
.end method

.method private finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 365
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 368
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v3, v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 371
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v0, 0x1ec

    const-string v1, "unable to finalize destination file"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 376
    :cond_1
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v0, 0x1e7

    const-string v1, "file delivered with incorrect size. probably due to network not browser configured"

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p1, 0xc3

    return p1

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 874
    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    const/16 p1, 0xc2

    return p1

    .line 877
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reached max retries for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LVLDL"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1ef

    return p1
.end method

.method private handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 530
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 532
    iget-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 535
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 536
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1e9

    const-string v0, "mismatched content length"

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 539
    :cond_1
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result p1

    const-string v0, "closed socket before end of file"

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method

.method private handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 730
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 732
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    :cond_0
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-ne v0, v1, :cond_2

    .line 735
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 738
    :cond_2
    iget-boolean p3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz p3, :cond_3

    const/16 p3, 0xce

    goto :goto_0

    :cond_3
    const/16 p3, 0xc8

    :goto_0
    if-eq v0, p3, :cond_4

    .line 741
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 744
    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    :goto_1
    return-void
.end method

.method private handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 754
    invoke-static {p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x12c

    if-lt p3, p1, :cond_1

    const/16 p1, 0x190

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1ed

    goto :goto_1

    .line 758
    :cond_1
    :goto_0
    iget-boolean p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz p1, :cond_2

    const/16 p1, 0xc8

    if-ne p3, p1, :cond_2

    const/16 p1, 0x1e9

    goto :goto_1

    :cond_2
    const/16 p1, 0x1ee

    goto :goto_1

    :cond_3
    move p1, p3

    .line 763
    :goto_1
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p2
.end method

.method private handleRedirect(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 774
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    const-string v0, "Location"

    .line 777
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 787
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/net/URI;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    .line 797
    iput-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    const/16 v0, 0x12d

    if-eq p3, v0, :cond_1

    const/16 v0, 0x12f

    if-ne p3, v0, :cond_2

    .line 801
    :cond_1
    iput-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 803
    :cond_2
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$1;)V

    throw p1

    .line 793
    :catch_0
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1ef

    const-string p3, "Couldn\'t resolve redirect URI"

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 775
    :cond_3
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1f1

    const-string p3, "too many redirects"

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1
.end method

.method private handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    const-string v0, "Retry-After"

    .line 827
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 833
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 834
    iget p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    if-ltz p2, :cond_2

    .line 837
    iget p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    .line 839
    iget p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    const v0, 0x15180

    if-le p2, v0, :cond_1

    .line 840
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 838
    :cond_0
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 842
    :cond_1
    :goto_0
    iget p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 843
    iget p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 835
    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :catch_0
    :cond_3
    :goto_1
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0xc2

    const-string v0, "got 503 Service Unavailable, will retry later"

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 180
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "localhost"

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "127.0.0.1"

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[::1]"

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    return v0
.end method

.method private logNetworkState()V
    .locals 3

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 597
    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Up"

    goto :goto_0

    :cond_0
    const-string v1, "Down"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LVLDL"

    .line 595
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;)V
    .locals 0

    .line 939
    invoke-direct/range {p0 .. p6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDownloadDatabase(IZIIZLjava/lang/String;)V

    .line 941
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusCompleted(I)Z

    return-void
.end method

.method private openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 585
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 587
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 588
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while getting entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 608
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 616
    :try_start_0
    iget-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError; {:try_start_0 .. :try_end_0} :catch_2

    .line 621
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 624
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 638
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    return-void

    .line 630
    :catch_1
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while opening destination file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 618
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget p3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mStatus:I

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p2
.end method

.method private readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 560
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p3

    .line 562
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 563
    iget-object p4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v0, v0

    iput-wide v0, p4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 564
    iget-object p4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {p4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 565
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result p2

    const-string p4, "while reading response: "

    if-eqz p2, :cond_0

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p4, 0x1e9

    invoke-direct {p2, p0, p4, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 571
    :cond_0
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    const-string p1, "Content-Disposition"

    .line 657
    invoke-interface {p3, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 659
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    :cond_0
    const-string p1, "Content-Location"

    .line 661
    invoke-interface {p3, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 663
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    :cond_1
    const-string p1, "ETag"

    .line 665
    invoke-interface {p3, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 667
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    :cond_2
    const/4 p1, 0x0

    const-string v0, "Transfer-Encoding"

    .line 670
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 672
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "Content-Type"

    .line 675
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 677
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.obb"

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 679
    :cond_4
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1e7

    const-string p3, "file delivered with incorrect Mime type"

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    if-nez p1, :cond_6

    const-string v0, "Content-Length"

    .line 685
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 687
    invoke-interface {p3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 689
    iget-object p3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-eqz p3, :cond_6

    .line 690
    iget-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v2, p3, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_6

    const-string p3, "LVLDL"

    const-string v0, "Incorrect file size delivered."

    .line 696
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_6
    iget-object p2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    const-string p2, "chunked"

    .line 717
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_9

    return-void

    .line 719
    :cond_9
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1ef

    const-string p3, "can\'t know size of download, giving up"

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1
.end method

.method private reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 6

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 461
    iget p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr p1, v2

    const/16 v2, 0x1000

    if-le p1, v2, :cond_0

    iget-wide v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v2, v2

    iput-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 467
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {p1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V

    .line 469
    iget p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iput p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    .line 470
    iput-wide v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 472
    iget p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    int-to-long p1, p1

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    add-long/2addr p1, v0

    .line 481
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->notifyUpdateBytes(J)V

    :cond_0
    return-void
.end method

.method private sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    const-string v0, "while trying to execute request: "

    .line 859
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 864
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 865
    new-instance p3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 861
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p3, 0x1ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 888
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1ec

    if-eqz v0, :cond_3

    .line 896
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 898
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 902
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 903
    iput-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    goto :goto_0

    .line 904
    :cond_0
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 912
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    .line 917
    iput v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 918
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 919
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 922
    iput-boolean v5, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 914
    new-instance p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while opening destination for resuming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v1, v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 906
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 907
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1e9

    const-string v0, "Trying to resume a download that can\'t be resumed"

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 892
    :cond_3
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string p2, "found invalid internal destination filename"

    invoke-direct {p1, p0, v1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1

    .line 927
    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_5

    .line 928
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    :cond_5
    return-void
.end method

.method private syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 9

    const-string v0, "file "

    const-string v1, "exception while closing file: "

    const-string v2, "IOException while closing synced file: "

    const-string v3, "LVLDL"

    const/4 v4, 0x0

    .line 400
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_4
    move-exception p1

    :goto_0
    :try_start_3
    const-string v0, "exception while syncing file: "

    .line 409
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 413
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception p1

    .line 417
    invoke-static {v3, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_6
    move-exception p1

    .line 415
    invoke-static {v3, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_7
    move-exception v0

    .line 407
    :goto_1
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    .line 413
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_8
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .line 405
    :goto_2
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sync failed: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_0

    .line 413
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_9
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .line 403
    :goto_3
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_0

    .line 413
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    :cond_0
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_6

    :catch_a
    move-exception v0

    .line 417
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_b
    move-exception v0

    .line 415
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :cond_1
    :goto_6
    throw p1
.end method

.method private transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 343
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 349
    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    .line 350
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V

    .line 351
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 352
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 0

    .line 648
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object p2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 649
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    return-void
.end method

.method private updateDownloadDatabase(IZIIZLjava/lang/String;)V
    .locals 0

    .line 949
    iget-object p6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p1, p6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 950
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 951
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 952
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    if-nez p2, :cond_0

    .line 954
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    const/4 p2, 0x0

    iput p2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p5, :cond_1

    .line 956
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0

    .line 958
    :cond_1
    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget p3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 960
    :goto_0
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 495
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 498
    :cond_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 500
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 503
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 509
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 511
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p3, 0x1f2

    const-string v0, "insufficient space while writing destination file"

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 514
    :cond_1
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p3, 0x1ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while writing destination file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 504
    :cond_2
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 p2, 0x1f3

    const-string p3, "external media not mounted while writing destination file"

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 2

    .line 164
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->isLocalHost(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isWiFi()Z

    move-result p2

    if-nez p2, :cond_0

    .line 165
    invoke-static {p1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 167
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {p1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p1

    const-string v1, "http"

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public run()V
    .locals 15

    const-string v0, ": "

    const-string v1, "LVLDL"

    const/16 v2, 0xa

    .line 204
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 206
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)V

    const/16 v3, 0x1eb

    const/4 v4, 0x0

    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x1

    .line 213
    invoke-virtual {v5, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 214
    :try_start_1
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    move-result-object v4

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    .line 232
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 233
    invoke-virtual {p0, v9, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v9

    .line 232
    invoke-static {v8, v9}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 234
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    :try_start_2
    invoke-direct {p0, v2, v4, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_2
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 242
    throw v6

    .line 241
    :catch_0
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_3
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0xc8

    if-eqz v5, :cond_1

    .line 266
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 273
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 274
    iget-boolean v8, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v9, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v11, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v12, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v7, 0xc8

    :goto_1
    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v6

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v5, v4

    .line 261
    :goto_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v8, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_3

    .line 266
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    if-eqz v5, :cond_4

    .line 270
    invoke-virtual {v5}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 273
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 274
    iget-boolean v8, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v9, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v11, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v12, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v7, 0x1eb

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v6

    move-object v5, v4

    .line 254
    :goto_3
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aborting request for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v8, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->printStackTrace()V

    .line 257
    iget v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->mFinalStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v5, :cond_5

    .line 266
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    if-eqz v4, :cond_6

    .line 270
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 273
    :cond_6
    invoke-direct {p0, v2, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 274
    iget-boolean v9, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v11, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v12, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v13, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    :goto_4
    return-void

    :catchall_4
    move-exception v0

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    :goto_5
    if-eqz v4, :cond_7

    .line 266
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    if-eqz v5, :cond_8

    .line 270
    invoke-virtual {v5}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->close()V

    .line 273
    :cond_8
    invoke-direct {p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 274
    iget-boolean v8, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v9, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v10, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v11, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v12, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v7, 0x1eb

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
