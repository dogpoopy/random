.class Lcom/google/android/vending/expansion/downloader/SystemFacade;
.super Ljava/lang/Object;
.source "SystemFacade.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public cancelNotification(J)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkType()Ljava/lang/Integer;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "LVLDL"

    const-string v2, "couldn\'t get connectivity manager"

    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .locals 2

    const-wide/32 v0, 0x200000

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "LVLDL"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "couldn\'t get connectivity manager"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    .line 75
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_2

    const-string v0, "couldn\'t get telephony manager"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
