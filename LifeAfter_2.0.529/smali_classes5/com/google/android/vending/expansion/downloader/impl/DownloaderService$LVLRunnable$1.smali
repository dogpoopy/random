.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;
.super Ljava/lang/Object;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

.field final synthetic val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 14

    const/4 p1, 0x0

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURLCount()I

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "LVLDL"

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v0, :cond_4

    .line 778
    :try_start_1
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    .line 779
    invoke-virtual {v2, v9}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 781
    new-instance v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 782
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v9, v5, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2, v9}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileSize(I)J

    move-result-wide v12

    .line 785
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    move-object v3, v1

    move v4, v9

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v10, v10, -0x1

    .line 788
    invoke-virtual {v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->resetDownload()V

    .line 789
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2, v9}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 790
    iput-wide v12, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 791
    iput v10, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 792
    invoke-virtual {v1, v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    goto :goto_1

    .line 798
    :cond_0
    iget-object v2, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 799
    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v2

    const/16 v3, 0xc8

    if-nez v2, :cond_1

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " found. Not downloading."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iput v3, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 810
    iput-wide v12, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 811
    iput-wide v12, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 812
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2, v9}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 813
    invoke-virtual {v1, v11}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    goto :goto_1

    .line 814
    :cond_1
    iget v4, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-eq v4, v3, :cond_2

    .line 816
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v3, v9}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 817
    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/lit8 v10, v10, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    .line 829
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 830
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 831
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0, v10}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    .line 832
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$000(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "In LVL checking loop!"

    .line 841
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v1, 0xf

    .line 843
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 844
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error with LVL checking and database integrity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_6
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/4 v1, 0x5

    .line 837
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 858
    :goto_2
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    return-void

    :catch_0
    move-exception v0

    .line 853
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 854
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error with getting information from package name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 858
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public applicationError(I)V
    .locals 2

    const/4 p1, 0x0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/16 v1, 0x10

    .line 886
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    throw v0
.end method

.method public dontAllow(I)V
    .locals 2

    const/16 v0, 0x123

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x231

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object p1

    const/16 v0, 0xf

    .line 869
    invoke-virtual {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    goto :goto_0

    .line 872
    :cond_1
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object p1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$200(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object p1

    const/16 v0, 0x10

    .line 873
    invoke-virtual {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    :goto_0
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->access$100(Z)V

    throw p1
.end method
