.class public Lcom/netease/download/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Downloader"

.field private static mContainLogFile:Z = false

.field public static mIsShowLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsShowLog()Z
    .locals 1

    .line 99
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    return v0
.end method

.method public static containLogFile()Z
    .locals 4

    const-string v0, "Downloader"

    const-string v1, "LogUtils [containLogFile] start"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-boolean v1, Lcom/netease/download/util/LogUtil;->mContainLogFile:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_download_log/download_result.txt"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LogUtils mContainLogFile true"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 121
    sput-boolean v1, Lcom/netease/download/util/LogUtil;->mContainLogFile:Z

    .line 123
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object v1

    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->getInstance()Lcom/netease/download/downloader/DownloadProxy;

    sget-object v2, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/download/storage/StorageToFileProxy;->init(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/storage/StorageToFileProxy;->start()V

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogUtils [containLogFile] mContainLogFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/netease/download/util/LogUtil;->mContainLogFile:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mContainLogFile:Z

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz p0, :cond_0

    const-string p0, "Downloader"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    sget-boolean p0, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    if-eqz p0, :cond_1

    .line 52
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/storage/StorageToFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz p0, :cond_0

    const-string p0, "Downloader"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    sget-boolean p0, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    if-eqz p0, :cond_1

    .line 94
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/storage/StorageToFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz p0, :cond_0

    const-string p0, "Downloader"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    sget-boolean p0, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    if-eqz p0, :cond_1

    .line 66
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/storage/StorageToFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setIsShowLog(Z)V
    .locals 0

    .line 103
    sput-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    return-void
.end method

.method public static stepLog(Ljava/lang/String;)V
    .locals 2

    .line 136
    sget-boolean v0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz v0, :cond_0

    const-string v0, "Downloader"

    const-string v1, "============================================="

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz p0, :cond_0

    const-string p0, "Downloader"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    sget-boolean p0, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    if-eqz p0, :cond_1

    .line 38
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/storage/StorageToFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    sget-boolean p0, Lcom/netease/download/util/LogUtil;->mIsShowLog:Z

    if-eqz p0, :cond_0

    const-string p0, "Downloader"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    sget-boolean p0, Lcom/netease/download/downloader/TaskHandle;->sWriteToLogFile:Z

    if-eqz p0, :cond_1

    .line 80
    invoke-static {}, Lcom/netease/download/storage/StorageToFileProxy;->getInstances()Lcom/netease/download/storage/StorageToFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/storage/StorageToFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
