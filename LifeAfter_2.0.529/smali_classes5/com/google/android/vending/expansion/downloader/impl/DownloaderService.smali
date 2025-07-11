.class public abstract Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOADS_CHANGED:Ljava/lang/String; = "downloadsChanged"

.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_STATUS:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_STATUS"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DOWNLOAD_REQUIRED:I = 0x2

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "downloadId"

.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final EXTRA_MESSAGE_HANDLER:Ljava/lang/String; = "EMH"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EPN"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "EPI"

.field public static final EXTRA_STATUS_CURRENT_FILE_SIZE:Ljava/lang/String; = "CFS"

.field public static final EXTRA_STATUS_CURRENT_PROGRESS:Ljava/lang/String; = "CFP"

.field public static final EXTRA_STATUS_STATE:Ljava/lang/String; = "ESS"

.field public static final EXTRA_STATUS_TOTAL_PROGRESS:Ljava/lang/String; = "TFP"

.field public static final EXTRA_STATUS_TOTAL_SIZE:Ljava/lang/String; = "ETS"

.field private static final LOG_TAG:Ljava/lang/String; = "LVLDL"

.field public static final LVL_CHECK_REQUIRED:I = 0x1

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3

.field public static final NETWORK_WIFI:I = 0x2

.field public static final NO_DOWNLOAD_REQUIRED:I = 0x0

.field private static final SMOOTHING_FACTOR:F = 0.005f

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_DELIVERED_INCORRECTLY:I = 0x1e7

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc5

.field public static final STATUS_QUEUED_FOR_WIFI_OR_CELLULAR_PERMISSION:I = 0xc4

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field private static final TEMP_EXT:Ljava/lang/String; = ".tmp"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field private static sIsRunning:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field mAverageDownloadSpeed:F

.field mBytesAtSample:J

.field mBytesSoFar:J

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mControl:I

.field mFileCount:I

.field private mIsAtLeast3G:Z

.field private mIsAtLeast4G:Z

.field private mIsCellularConnection:Z

.field private mIsConnected:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field mMillisecondsAtSample:J

.field private mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private final mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mStateChanged:Z

.field private mStatus:I

.field mTotalLength:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LVLDownloadService"

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 450
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isServiceRunning()Z

    move-result v0

    return v0
.end method

.method private cancelAlarms()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    const-string v0, "alarm"

    .line 968
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string v0, "LVLDL"

    const-string v1, "couldn\'t get alarm manager"

    .line 970
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 974
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method

.method private static isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 605
    iget p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized isServiceRunning()Z
    .locals 2

    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    .line 617
    :try_start_0
    sget-boolean v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isStatusClientError(I)Z
    .locals 1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatusError(I)Z
    .locals 1

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatusInformational(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatusServerError(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private scheduleAlarm(J)V
    .locals 5

    const-string v0, "alarm"

    .line 943
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string p1, "LVLDL"

    const-string p2, "couldn\'t get alarm manager"

    .line 945
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getAlarmReceiverClassName()Ljava/lang/String;

    move-result-object v1

    .line 954
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v4, "EPI"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 958
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 960
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private static declared-synchronized setServiceRunning(Z)V
    .locals 1

    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    .line 621
    :try_start_0
    sput-boolean p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 639
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 667
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 674
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v1

    .line 678
    invoke-static {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    .line 682
    iget v3, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_0

    .line 683
    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 685
    array-length v6, v3

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v3, v2

    .line 686
    iget-object v8, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v9, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {p0, v8, v9, v10, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, -0x1

    .line 688
    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateStatus(I)Z

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_3

    goto :goto_2

    .line 699
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 700
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EPI"

    .line 701
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    return v0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string v0, "EPI"

    .line 627
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 628
    invoke-static {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo;)V
    .locals 7

    .line 515
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 516
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 517
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 518
    iget-boolean v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 519
    iget-boolean v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 522
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 523
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 524
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-direct {p0, v6, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    goto :goto_0

    .line 526
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 527
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 528
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    const/4 p1, -0x1

    .line 529
    invoke-direct {p0, p1, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    .line 531
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-ne v2, p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-ne v3, p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    if-eq v4, p1, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    return-void
.end method

.method private updateNetworkType(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 473
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 474
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 475
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 468
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 469
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 470
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 478
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    packed-switch p2, :pswitch_data_0

    .line 507
    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 508
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 509
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 503
    :pswitch_1
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 504
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 494
    :pswitch_2
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 495
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 485
    :pswitch_3
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 486
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
        }
    .end annotation

    .line 1230
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1231
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v1

    const-string v2, "LVLDL"

    if-eqz v1, :cond_2

    .line 1238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    return-object p1

    .line 1244
    :cond_0
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 p2, 0x1f2

    const-string p3, "insufficient space on external storage"

    invoke-direct {p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1239
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File already exists: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 p2, 0x1e8

    const-string p3, "requested destination file already exists"

    invoke-direct {p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw p1

    .line 1233
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "External media not mounted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 p2, 0x1f3

    const-string p3, "external media is not yet mounted"

    invoke-direct {p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAlarmReceiverClassName()Ljava/lang/String;
.end method

.method public getControl()I
    .locals 1

    .line 1277
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    return v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p1, "unknown error with network connectivity"

    return-object p1

    :cond_0
    const-string p1, "download was requested to not use the current network type"

    return-object p1

    :cond_1
    const-string p1, "download cannot use the current network connection because it is roaming"

    return-object p1

    :cond_2
    const-string p1, "download size exceeds recommended limit for mobile network"

    return-object p1

    :cond_3
    const-string p1, "download size exceeds limit for mobile network"

    return-object p1

    :cond_4
    const-string p1, "no network connection available"

    return-object p1
.end method

.method public getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I
    .locals 2

    .line 1169
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v0, :cond_3

    .line 1170
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1172
    :cond_0
    iget p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    .line 1173
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    return p1

    :cond_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x6

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getSALT()[B
.end method

.method public getStatus()I
    .locals 1

    .line 1281
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    return v0
.end method

.method public handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z
    .locals 0

    .line 923
    invoke-virtual {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 925
    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 928
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 933
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 934
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 936
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 p1, 0x1

    .line 939
    invoke-static {p0, p3, p4, p5, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1
.end method

.method public isWiFi()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyUpdateBytes(J)V
    .locals 12

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1293
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    sub-long v2, v0, v2

    .line 1296
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    const/4 v2, 0x0

    .line 1298
    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const v2, 0x3ba3d70a    # 0.005f

    mul-float v4, v4, v2

    const v2, 0x3f7eb852    # 0.995f

    mul-float v3, v3, v2

    add-float/2addr v4, v3

    .line 1299
    iput v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    goto :goto_0

    .line 1302
    :cond_0
    iput v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    .line 1304
    :goto_0
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    sub-long/2addr v2, p1

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v9, v2

    .line 1308
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    .line 1309
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    .line 1310
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    new-instance v1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    iget v11, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    move-object v4, v1

    move-wide v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(JJJF)V

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "LVLDL"

    const-string v0, "Service Bound"

    .line 395
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onClientUpdated(Landroid/os/Messenger;)V
    .locals 1

    .line 1337
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    .line 1338
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1186
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onCreate()V

    .line 1188
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1191
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1192
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-direct {v1, p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1195
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1162
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 1165
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 1009
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    const/4 v2, 0x0

    .line 1013
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v3

    const-string v4, "EPI"

    move-object/from16 v5, p1

    .line 1015
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1019
    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v5, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    .line 1020
    iput-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 1021
    :cond_0
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_f

    .line 1022
    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v5, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    .line 1030
    :goto_0
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1031
    invoke-virtual {v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void

    .line 1036
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 1037
    iput-wide v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1038
    iput-wide v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1039
    array-length v7, v4

    iput v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mFileCount:I

    .line 1040
    array-length v7, v4

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0xc8

    if-ge v8, v7, :cond_3

    aget-object v10, v4, v8

    .line 1043
    iget v11, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-ne v11, v9, :cond_2

    .line 1045
    iget-object v9, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v11, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v1, v9, v11, v12, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1046
    iput v2, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 1047
    iput-wide v5, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1051
    :cond_2
    iget-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    iget-wide v13, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1052
    iget-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    iget-wide v9, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    add-long/2addr v11, v9

    iput-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1056
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->pollNetworkState()V

    .line 1057
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    if-nez v7, :cond_4

    .line 1064
    new-instance v7, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;

    invoke-direct {v7, v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/Service;)V

    iput-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1065
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1067
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1068
    iget-object v8, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v8, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1071
    :cond_4
    array-length v7, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_e

    aget-object v10, v4, v8

    .line 1072
    iget-wide v11, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1074
    iget v13, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-eq v13, v9, :cond_5

    .line 1075
    new-instance v13, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    iget-object v14, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-direct {v13, v10, v1, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    const-wide/16 v14, 0x1388

    .line 1077
    invoke-direct {v1, v14, v15}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    .line 1078
    invoke-virtual {v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->run()V

    .line 1079
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1081
    :cond_5
    invoke-virtual {v3, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 1084
    iget v13, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-eq v13, v9, :cond_d

    const/16 v4, 0x193

    if-eq v13, v4, :cond_c

    const/16 v4, 0x1e7

    if-eq v13, v4, :cond_a

    const/16 v3, 0x1ea

    if-eq v13, v3, :cond_9

    const/16 v3, 0x1f2

    if-eq v13, v3, :cond_8

    const/16 v3, 0x1f3

    if-eq v13, v3, :cond_7

    packed-switch v13, :pswitch_data_0

    const/16 v0, 0x13

    const/4 v0, 0x0

    const/16 v3, 0x13

    goto :goto_3

    .line 1112
    :pswitch_0
    iget-object v3, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_6

    .line 1113
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x8

    goto :goto_3

    :cond_6
    const/16 v3, 0x9

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x6

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x7

    const/4 v0, 0x0

    const/4 v3, 0x7

    goto :goto_3

    :cond_7
    const/16 v3, 0xe

    goto :goto_3

    :cond_8
    const/16 v3, 0x11

    goto :goto_3

    :cond_9
    const/16 v3, 0x12

    goto :goto_3

    :cond_a
    const/16 v4, 0xd

    .line 1097
    iput-wide v5, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1098
    invoke-virtual {v3, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    const/16 v3, 0xd

    :goto_3
    if-eqz v0, :cond_b

    const-wide/32 v4, 0xea60

    .line 1142
    invoke-direct {v1, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    goto :goto_4

    .line 1144
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1147
    :goto_4
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void

    .line 1087
    :cond_c
    :try_start_2
    invoke-virtual {v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void

    .line 1090
    :cond_d
    :try_start_3
    iget-wide v13, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    iget-wide v5, v10, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    sub-long/2addr v5, v11

    add-long/2addr v13, v5

    iput-wide v13, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1091
    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v5, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v5, 0x0

    goto/16 :goto_2

    .line 1152
    :cond_e
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1154
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void

    :cond_f
    :try_start_4
    const-string v0, "LVLDL"

    const-string v3, "Downloader started in bad state without notification intent."

    .line 1024
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1154
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method pollNetworkState()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    .line 572
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const-string v0, "wifi"

    .line 575
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const-string v0, "LVLDL"

    const-string v1, "couldn\'t get connectivity manager to poll network state"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 583
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkState(Landroid/net/NetworkInfo;)V

    :goto_0
    return-void
.end method

.method public requestAbortDownload()V
    .locals 1

    const/4 v0, 0x1

    .line 710
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    const/16 v0, 0x1ea

    .line 711
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    return-void
.end method

.method public requestContinueDownload()V
    .locals 3

    .line 727
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 728
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 730
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "EPI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 732
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestDownloadStatus()V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->resendState()V

    return-void
.end method

.method public requestPauseDownload()V
    .locals 1

    const/4 v0, 0x1

    .line 716
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    const/16 v0, 0xc1

    .line 717
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    return-void
.end method

.method public setDownloadFlags(I)V
    .locals 1

    .line 722
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFlags(I)Z

    return-void
.end method

.method protected shouldStop()Z
    .locals 1

    .line 1323
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    .line 1324
    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateLVL(Landroid/content/Context;)V
    .locals 3

    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 905
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 906
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
