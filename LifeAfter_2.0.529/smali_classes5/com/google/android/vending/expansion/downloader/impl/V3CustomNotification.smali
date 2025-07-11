.class public Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;
.super Ljava/lang/Object;
.source "V3CustomNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentBytes:J

.field mIcon:I

.field mNotification:Landroid/app/Notification;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 34
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 35
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    .line 38
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTicker:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 12

    .line 62
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    .line 64
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 66
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-le v1, v3, :cond_0

    .line 69
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_bar_ongoing_event_progress_bar"

    .line 76
    invoke-static {p1, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v3, "title"

    .line 78
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v3, "description"

    .line 80
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 82
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v3, "progress_bar_frame"

    .line 83
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v3, "progress_bar"

    .line 84
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    shr-long v8, v6, v2

    long-to-int v4, v8

    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    shr-long/2addr v8, v2

    long-to-int v2, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    if-gtz v11, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string v2, "time_remaining"

    .line 88
    invoke-static {p1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    invoke-static {p1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "time_remaining_notification"

    .line 91
    invoke-static {p1, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-array v4, v10, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    .line 92
    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 91
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "progress_text"

    .line 93
    invoke-static {p1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    .line 94
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "appIcon"

    .line 95
    invoke-static {p1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 96
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 97
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
