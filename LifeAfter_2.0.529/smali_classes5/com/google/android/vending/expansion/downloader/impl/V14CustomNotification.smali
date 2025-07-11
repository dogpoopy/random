.class public Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;
.super Ljava/lang/Object;
.source "V14CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentKB:J

.field mIcon:I

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalKB:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    .line 32
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method setProgress(Landroid/app/Notification$Builder;)V
    .locals 0

    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 10

    .line 62
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 64
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const-wide/16 v5, -0x1

    iget-wide v7, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    const/16 v5, 0x8

    shr-long/2addr v1, v5

    long-to-int v2, v1

    shr-long v5, v7, v5

    long-to-int v1, v5

    .line 65
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0, v4, v4, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 69
    :goto_0
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    invoke-static {v1, v2, v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v1, "time_remaining_notification"

    .line 70
    invoke-static {p1, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    .line 71
    invoke-static {v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 72
    iget p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_1
    const p1, 0x1080081

    .line 76
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 78
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 79
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 80
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 81
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
