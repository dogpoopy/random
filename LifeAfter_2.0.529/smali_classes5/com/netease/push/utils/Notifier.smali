.class public Lcom/netease/push/utils/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final random:Ljava/util/Random;


# instance fields
.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/push/utils/Notifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/netease/push/utils/Notifier;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    const-string v0, "notification"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private createChannelId(Ljava/lang/String;Lcom/netease/push/utils/NotifyMessageImpl;Lcom/netease/push/utils/AppInfo;)Landroid/app/NotificationChannel;
    .locals 3

    .line 168
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 172
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getChannelName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 173
    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 177
    iget-boolean p1, p3, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 185
    :cond_0
    iget-boolean p1, p3, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 186
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 34
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendNotificationAndroidO(Lcom/netease/push/utils/NotifyMessageImpl;ILandroid/app/PendingIntent;Lcom/netease/push/utils/AppInfo;)V
    .locals 5

    .line 196
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel_unisdk_ngpush_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 204
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 206
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getIcon()I

    move-result v2

    if-lez v2, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 211
    :goto_0
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 214
    invoke-direct {p0, v0, p1, p4}, Lcom/netease/push/utils/Notifier;->createChannelId(Ljava/lang/String;Lcom/netease/push/utils/NotifyMessageImpl;Lcom/netease/push/utils/AppInfo;)Landroid/app/NotificationChannel;

    .line 216
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getGroupId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 p3, 0x0

    .line 219
    iget-boolean v0, p4, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x1

    .line 223
    :cond_2
    iget-boolean v0, p4, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "raw"

    invoke-virtual {v0, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p3, p3, 0x1

    .line 230
    :cond_3
    iget-boolean p1, p4, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    if-eqz p1, :cond_4

    or-int/lit8 p3, p3, 0x2

    .line 233
    :cond_4
    iget-boolean p1, p4, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    if-eqz p1, :cond_5

    or-int/lit8 p3, p3, 0x4

    .line 236
    :cond_5
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 237
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 240
    iget-object p1, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public notify(Lcom/netease/push/utils/NotifyMessageImpl;Lcom/netease/push/utils/AppInfo;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 43
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    const-string v4, "notify"

    invoke-static {v0, v4}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 49
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNotifyid()I

    move-result v0

    .line 50
    sget-object v4, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyid1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_1

    neg-int v0, v0

    :cond_1
    move v4, v0

    .line 54
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyid2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, ""

    .line 58
    :try_start_0
    iget-object v0, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v7, v3, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    .line 60
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "NotifyActivityName"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_2
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNotifyActivityName()Ljava/lang/String;

    move-result-object v6

    .line 69
    :cond_3
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyActivityName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "ngpush"

    const-string v8, "passJsonString"

    const-string v9, "reqid"

    const-string v10, "notify_id"

    const-string v11, "ext"

    const-string v12, "msg"

    const-string v13, "title"

    const-string v15, "com.netease.push.action.notify"

    const-string v14, "service_type"

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v3, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x24000000

    .line 74
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getReqid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getPassJsonString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_4
    sget-object v5, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    goto/16 :goto_3

    .line 88
    :cond_5
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    new-instance v6, Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v5

    :try_start_2
    invoke-static {}, Lcom/netease/pushclient/PushManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    :try_start_3
    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 92
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getReqid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getPassJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_6
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New intent:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    :goto_1
    move-object/from16 v6, v16

    .line 107
    :goto_2
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 111
    :goto_3
    iget-object v0, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v0, v4, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 112
    sget-object v5, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "context.getApplicationInfo().icon:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_7

    .line 115
    sget-object v5, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    const-string v6, "sendNotificationAndroidO"

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {v1, v2, v4, v0, v3}, Lcom/netease/push/utils/Notifier;->sendNotificationAndroidO(Lcom/netease/push/utils/NotifyMessageImpl;ILandroid/app/PendingIntent;Lcom/netease/push/utils/AppInfo;)V

    goto/16 :goto_6

    .line 118
    :cond_7
    sget-object v5, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    const-string v6, "sendNotification"

    invoke-static {v5, v6}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getIcon()I

    move-result v6

    if-lez v6, :cond_8

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_4

    .line 123
    :cond_8
    iget-object v6, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 125
    :goto_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_9

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 128
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    .line 131
    iget-boolean v7, v3, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 133
    iget-object v7, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getSound()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "raw"

    invoke-virtual {v7, v9, v11, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_a

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 136
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_a
    const/4 v6, 0x1

    .line 144
    :cond_b
    :goto_5
    iget-boolean v7, v3, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    if-eqz v7, :cond_c

    or-int/lit8 v6, v6, 0x2

    .line 147
    :cond_c
    iget-boolean v3, v3, Lcom/netease/push/utils/AppInfo;->mbEnableLight:Z

    if-eqz v3, :cond_d

    or-int/lit8 v6, v6, 0x4

    .line 150
    :cond_d
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 151
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/netease/push/utils/NotifyMessageImpl;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 155
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 157
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 159
    iget-object v0, v1, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 162
    :goto_6
    sget-object v0, Lcom/netease/push/utils/Notifier;->TAG:Ljava/lang/String;

    const-string v2, "notificationManager.notify finish"

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_7
    return-void
.end method
