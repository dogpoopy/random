.class public Lcom/netease/pushclient/NativePushManagerImpl;
.super Ljava/lang/Object;
.source "NativePushManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/pushclient/NativePushManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearContext()V
    .locals 1

    .line 171
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 172
    sput-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getAllAlarms()[Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushManager;->getAllAlarms()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 36
    sput-object p0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    .line 37
    sget-object p0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 38
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object p0

    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/inner/pushclient/NativePushManager;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 43
    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/pushclient/NativePushManagerImpl;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 47
    invoke-static/range {v0 .. v8}, Lcom/netease/pushclient/NativePushManagerImpl;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 51
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/netease/inner/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 32
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeAlarm(Ljava/lang/String;)Z
    .locals 1

    .line 150
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->removeAlarm(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeAllAlarms()Z
    .locals 1

    .line 157
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/inner/pushclient/NativePushManager;->removeAllAlarms()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setAlarmTime(Ljava/lang/String;II)Z
    .locals 1

    .line 59
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 7

    .line 73
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1

    .line 66
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMonthRepeat(Ljava/lang/String;I)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setMonthRepeat(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMonthRepeatBackwards(Ljava/lang/String;I)Z
    .locals 1

    .line 94
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setMonthRepeatBackwards(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setOnce(Ljava/lang/String;III)Z
    .locals 1

    .line 101
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/inner/pushclient/NativePushManager;->setOnce(Ljava/lang/String;III)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setOnceLater(Ljava/lang/String;I)Z
    .locals 5

    .line 115
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 116
    invoke-virtual {v0, p0, v1, v2}, Lcom/netease/inner/pushclient/NativePushManager;->setOnceUnixtime(Ljava/lang/String;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setOnceUnixtime(Ljava/lang/String;J)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/inner/pushclient/NativePushManager;->setOnceUnixtime(Ljava/lang/String;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWeekRepeat(Ljava/lang/String;I)Z
    .locals 1

    .line 80
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/NativePushManager;->setWeekRepeat(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z
    .locals 1

    .line 130
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->startAlarm(Lcom/netease/inner/pushclient/NativePushData;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static startAlarm(Ljava/lang/String;)Z
    .locals 1

    .line 123
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->startAlarm(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static stopPush(Ljava/lang/String;)Z
    .locals 1

    .line 143
    sget-object v0, Lcom/netease/pushclient/NativePushManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/netease/inner/pushclient/NativePushManager;->getInstance()Lcom/netease/inner/pushclient/NativePushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/NativePushManager;->stopPush(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
