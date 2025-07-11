.class public Lcom/netease/mrzhna/BackgroundProgressWorker;
.super Landroidx/work/Worker;
.source "BackgroundProgressWorker.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "g66dev_channel"

.field public static final KEY_DESC:Ljava/lang/String; = "key_progress_desc"

.field public static final KEY_GAME_PID:Ljava/lang/String; = "key_game_pid"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "key_progress"

.field public static final KEY_TITLE:Ljava/lang/String; = "key_progress_title"

.field public static final NOTIFICATION_ID:I = 0x64f52e


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private createChannel()V
    .locals 6

    .line 114
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0003

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0054

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "g66dev_channel"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 119
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    aput-wide v4, v1, v2

    .line 120
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v3, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 122
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 123
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 124
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private createForegroundInfo(ILjava/lang/String;Ljava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    const p2, 0x7f0b0003

    .line 83
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 88
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 89
    invoke-direct {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->createChannel()V

    .line 92
    :cond_2
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "g66dev_channel"

    invoke-direct {v1, v0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const p3, 0x7f060009

    .line 96
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const p3, -0xd3c4b7

    .line 97
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 98
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 99
    :goto_0
    invoke-virtual {p2, v0, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-array p2, p3, [J

    const-wide/16 v2, 0x0

    aput-wide v2, p2, v1

    .line 100
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 105
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const v1, 0x64f52e

    if-lt p2, v0, :cond_4

    .line 106
    new-instance p2, Landroidx/work/ForegroundInfo;

    invoke-direct {p2, v1, p1, p3}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    return-object p2

    .line 108
    :cond_4
    new-instance p2, Landroidx/work/ForegroundInfo;

    invoke-direct {p2, v1, p1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;)V

    return-object p2
.end method

.method private isGameAlive()Z
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "key_game_pid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "key_progress"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "key_progress_title"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    const-string v3, "key_progress_desc"

    invoke-virtual {v2, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mrzhna/BackgroundProgressWorker;->createForegroundInfo(ILjava/lang/String;Ljava/lang/String;)Landroidx/work/ForegroundInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 66
    :try_start_1
    invoke-direct {p0}, Lcom/netease/mrzhna/BackgroundProgressWorker;->isGameAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x3e8

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 58
    :catch_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
