.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "DownloadNotification"

.field static final NOTIFICATION_ID:I = -0x362ab24d


# instance fields
.field private mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:Landroid/app/Notification;

.field private mCurrentText:Ljava/lang/String;

.field private mCurrentTitle:Ljava/lang/String;

.field final mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

.field private mLabel:Ljava/lang/CharSequence;

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    .line 216
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    const-string p2, "notification"

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 221
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/CustomNotificationFactory;->createCustomNotification()Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    .line 222
    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    .line 224
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public getClientIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 6

    .line 151
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 152
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 155
    :cond_0
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    const-wide/16 v2, 0x0

    const v4, 0x1080081

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    .line 157
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/String;

    iput-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 158
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    iput v4, p1, Landroid/app/Notification;->icon:I

    .line 160
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setCurrentBytes(J)V

    .line 163
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setTotalBytes(J)V

    .line 164
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    invoke-interface {v0, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setIcon(I)V

    .line 165
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setTicker(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->setTimeRemaining(J)V

    .line 169
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCustomNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;->updateNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    if-eq p1, v0, :cond_7

    .line 81
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 82
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const v1, 0x1080082

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x108008a

    if-eqz p1, :cond_5

    const/4 v5, 0x7

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 129
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result p1

    goto :goto_1

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_2
    const v1, 0x1080081

    .line 99
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result p1

    goto :goto_2

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result p1

    goto :goto_2

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    goto :goto_2

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    const-string v0, "state_unknown"

    invoke-static {p1, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const v1, 0x108008a

    .line 133
    :goto_2
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 136
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    iput v1, p1, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_6

    .line 140
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/2addr v0, v2

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_3

    .line 142
    :cond_6
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 143
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 145
    :goto_3
    iget-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    nop

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 0

    return-void
.end method

.method public resendState()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 71
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setClientIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 1

    .line 199
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 200
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {p1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 203
    :cond_0
    iget p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    :cond_1
    return-void
.end method
