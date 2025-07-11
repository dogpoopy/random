.class public Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;
.super Ljava/lang/Thread;
.source "CheckNormalExitManager.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/unknownCrash/AppLifeCallback;
.implements Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;


# static fields
.field private static final MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

.field public static final TAG:Ljava/lang/String; = "[unexpected_crash] "


# instance fields
.field private isInit:Z

.field private isInitMemoryAdvice:Z

.field private mLastTimeDir:Ljava/lang/String;

.field private mLastTimeErrorType:Ljava/lang/String;

.field private final mLock:[B

.field private mPath:Ljava/lang/String;

.field private mRunning:Z

.field private mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    new-instance v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    .line 52
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInitMemoryAdvice:Z

    new-array v0, v0, [B

    .line 53
    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLock:[B

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeDir:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeErrorType:Ljava/lang/String;

    return-void
.end method

.method private buildData(Ljava/lang/String;)Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;
    .locals 10

    const-string v0, "trace"

    .line 186
    new-instance v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;-><init>()V

    .line 188
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "[unexpected_crash] CheckNormalExitManager [buildData] start"

    .line 189
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "startTime"

    .line 190
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    const-string p1, "isAppForeground"

    .line 191
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    const-string p1, "exitTime"

    .line 192
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitTime:Ljava/lang/String;

    const-string p1, "exitType"

    .line 193
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    const-string p1, "memoryList"

    .line 194
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 196
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 198
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 199
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 200
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 201
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 202
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 204
    :cond_0
    iget-object v4, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryList:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    invoke-virtual {v4, v5, v6}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "systemTotalMemory"

    .line 206
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemTotalMemory:J

    const-string p1, "lasttime"

    .line 207
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    const-string p1, "isCharge"

    .line 208
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isCharge:Z

    const-string p1, "power"

    .line 209
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->power:D

    const-string p1, "memoryState"

    .line 210
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    const-string p1, "memoryCriticalTime"

    .line 211
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    const-string p1, "memoryCriticalCount"

    .line 212
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalCount:I

    const-string p1, "pid"

    .line 213
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->pid:J

    const-string p1, "system_state"

    .line 214
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    const-string p1, "system_state_string"

    .line 215
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemStateString:Ljava/lang/String;

    const-string p1, "app_version"

    .line 216
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    const-string p1, "CheckNormalExitManager [initData] finish"

    .line 217
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method private checkMemoryWarn(Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Z
    .locals 6

    .line 474
    iget v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckNormalExitManager [checkMemoryWarn] memory advice==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "trace"

    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-wide v2, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    iget-wide v4, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    .line 162
    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 163
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 164
    :cond_0
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 165
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private getHistoryProcessExitReason(JJ)Landroid/app/ApplicationExitInfo;
    .locals 7

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 456
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 457
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    long-to-int p2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    .line 458
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "trace"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 459
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CheckNormalExitManager [getHistoryProcessExitReason] Reason:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p4}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationExitInfo;

    return-object p1

    .line 462
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 463
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 464
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CheckNormalExitManager [getHistoryProcessExitReason] Reason==="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    return-object v0
.end method

.method private getReadyThisTime()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 177
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    .line 178
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const-string v1, ""

    iput-object v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    const-string v0, "trace"

    const-string v1, "[unexpected_crash] CheckNormalExitManager [getReadyThisTime] finish"

    .line 181
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    return-void
.end method

.method private isDebugModel()Z
    .locals 1

    .line 240
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method private writeInfo()V
    .locals 6

    .line 537
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLock:[B

    monitor-enter v0

    .line 541
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "startTime"

    .line 543
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isAppForeground"

    .line 544
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-boolean v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "exitTime"

    .line 545
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "exitType"

    .line 546
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 548
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryList:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 549
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "memoryList"

    .line 551
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "systemTotalMemory"

    .line 552
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemTotalMemory:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "lasttime"

    .line 553
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "isCharge"

    .line 554
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-boolean v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isCharge:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "power"

    .line 555
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->power:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "memoryState"

    .line 556
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "memoryCriticalCount"

    .line 557
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "memoryCriticalTime"

    .line 558
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "pid"

    .line 559
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->pid:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "system_state"

    .line 560
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "system_state_string"

    .line 561
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemStateString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    .line 562
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v3, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "trace"

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unexpected_crash]  CheckNormalExitManager [writeInfo ] finish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 565
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 567
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mPath:Ljava/lang/String;

    const-string v3, "CheckNormalExit.temp"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 568
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public buildMainFile(Ljava/lang/String;Ljava/lang/String;Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Ljava/lang/String;
    .locals 6

    const-string v0, "trace"

    .line 490
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "error_type"

    .line 492
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "startTime"

    .line 495
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isAppForeground"

    .line 496
    iget-boolean v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "exitTime"

    .line 497
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitTime:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "exitType"

    .line 498
    iget v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "errorType"

    .line 499
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    iget-object v2, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryList:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    if-eqz v2, :cond_1

    .line 501
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 502
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryList:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v3, "memoryList"

    .line 505
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "systemTotalMemory"

    .line 507
    iget-wide v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemTotalMemory:J

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "lasttime"

    .line 508
    iget-wide v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "isCharge"

    .line 509
    iget-boolean v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isCharge:Z

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "power"

    .line 510
    iget-wide v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->power:D

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "memoryState"

    .line 511
    iget v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "memoryCriticalCount"

    .line 512
    iget v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalCount:I

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "memoryCriticalTime"

    .line 513
    iget-wide v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "pid"

    .line 514
    iget-wide v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->pid:J

    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "system_state"

    .line 515
    iget v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "system_state_string"

    .line 516
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemStateString:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    .line 517
    iget-object v3, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unexpected_crash]  CheckNormalExitManager [writeInfo ] finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 520
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string v2, "data"

    .line 522
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "time"

    .line 523
    iget-wide v2, p3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    invoke-virtual {p3, v2, v3}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->setTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 525
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 527
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckNormalExitManager [upload]  \u4e0a\u4f20\u6570\u636e result="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "undefined_exception.exc"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 530
    invoke-static {p2, p1, p3}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p3
.end method

.method public buildUndefinedException(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;
    .locals 13

    .line 351
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/unilogger/utils/Utils;->file2Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-direct {p0, p2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->buildData(Ljava/lang/String;)Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    move-result-object p2

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [checkLastTimeExit] start"

    .line 353
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :try_start_0
    iget-object v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 357
    iget-boolean v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    if-eqz v1, :cond_c

    .line 358
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "app_exit.temp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 361
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 362
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 363
    invoke-virtual {p1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 364
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "Z"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 365
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitTime:Ljava/lang/String;

    .line 367
    iput v2, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] by app exit"

    .line 368
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 371
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeCrash()Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] CRASH_EXIT_TYPE"

    .line 372
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 381
    :cond_1
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_2

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeAnr()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] ANR_EXIT_TYPE"

    .line 382
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 383
    iput p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 386
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x1e

    const/16 v4, 0xa

    const-string v5, "NATIVE_OOM"

    const/16 v6, 0x9

    const/4 v7, -0x1

    const-string v8, "UNDEFINED_EXCEPTION"

    if-lt p1, v3, :cond_7

    .line 387
    :try_start_1
    iget-wide v9, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->pid:J

    iget-wide v11, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getHistoryProcessExitReason(JJ)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 389
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v3

    iput v3, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    .line 390
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemStateString:Ljava/lang/String;

    .line 391
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_8

    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    if-lez p1, :cond_8

    .line 392
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    if-eq p1, v2, :cond_5

    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    const/16 v3, 0xb

    if-eq p1, v3, :cond_5

    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    if-ne p1, v4, :cond_3

    goto :goto_0

    .line 397
    :cond_3
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    if-ne p1, v1, :cond_4

    .line 398
    iput v6, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 399
    iput-object v5, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x6

    .line 401
    iput p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 402
    iput-object v8, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    goto :goto_1

    .line 395
    :cond_5
    :goto_0
    iput v2, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    goto :goto_1

    .line 407
    :cond_6
    iput v7, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    goto :goto_1

    .line 410
    :cond_7
    iput v7, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemState:I

    .line 413
    :cond_8
    :goto_1
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_9

    invoke-direct {p0, p2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->checkMemoryWarn(Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 414
    iput v6, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 415
    iput-object v5, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    .line 422
    :cond_9
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_a

    .line 423
    iget-boolean p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isCharge:Z

    if-nez p1, :cond_a

    iget-wide v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->power:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v1, v5

    if-gez p1, :cond_a

    const/4 p1, 0x5

    .line 424
    iput p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 425
    iput-object v8, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] REBOOT_EXIT_BY_POWER_TYPE"

    .line 426
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_a
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_b

    .line 431
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 432
    iget-object v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "unknown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 433
    iput v4, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 436
    :cond_b
    iget p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    if-nez p1, :cond_d

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] UNKNOWN_EXIT_TYPE"

    .line 437
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 438
    iput p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    .line 439
    iput-object v8, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    goto :goto_2

    :cond_c
    const/16 p1, 0x8

    .line 442
    iput p1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    const-string p1, "CheckNormalExitManager [checkLastTimeExit] USER_EXIT_BY_BACKGROUND_TYPE"

    .line 443
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 450
    :cond_d
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckNormalExitManager [checkLastTimeExit] exitType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public checkUndefinedException(Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->errorType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLastTimeDir()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTimeErrorType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeErrorType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .line 86
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isDebugModel()Z

    move-result v0

    .line 90
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->detectLocal(Landroid/content/Context;)Z

    move-result v1

    .line 91
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->checkYiDunSdk(Landroid/content/Context;)Z

    move-result v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckNormalExitManager [init] isDebug or isEmulator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "trace"

    invoke-static {v5, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_1

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNDEFINED_EXCEPTION_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mPath:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mPath:Ljava/lang/String;

    const-string v2, "CheckNormalExit.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getReadyThisTime()V

    .line 123
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 124
    new-instance v0, Lcom/netease/androidcrashhandler/unknownCrash/ShutdownBroadcastReceiver;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/unknownCrash/ShutdownBroadcastReceiver;-><init>()V

    .line 125
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->initMemoryAdvice(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    const-string p1, "CheckNormalExitManager [init] finish"

    .line 132
    invoke-static {v5, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized initMemoryAdvice(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInitMemoryAdvice:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 145
    invoke-static {p1}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->memoryAdviceInit(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_3

    .line 147
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->registerMemoryWater()I

    move-result p1

    if-nez p1, :cond_3

    .line 149
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->registerMemoryState(Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;)V

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInitMemoryAdvice:Z

    .line 151
    iget-object p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const/4 v0, 0x0

    iput v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    .line 152
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    goto :goto_0

    :cond_2
    const-string p1, "trace"

    const-string v0, "CheckNormalExitManager [initMemoryAdvice] activity is null"

    .line 156
    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAppForeground(Z)V
    .locals 2

    .line 624
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    const-string v1, "trace"

    if-nez v0, :cond_0

    const-string p1, "CheckNormalExitManager [isAppForeground] not init"

    .line 625
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 629
    iget-object p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    const-string p1, "CheckNormalExitManager [onForeground ]"

    .line 633
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_2
    iget-object p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    const-string p1, "CheckNormalExitManager [onBackground ]"

    .line 639
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_0
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    return-void
.end method

.method public onActivityCreate()V
    .locals 0

    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [onActivityDestroy ]"

    .line 606
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStart()V
    .locals 0

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public onMemoryStateChanged(II)V
    .locals 8

    .line 646
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iput p1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iput p2, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalCount:I

    .line 649
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    .line 650
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getStatus()Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v1, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemTotalMemory:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x400

    cmp-long v7, v1, v3

    if-gtz v7, :cond_0

    .line 652
    iget-object v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v2, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    div-long/2addr v2, v5

    iput-wide v2, v1, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->systemTotalMemory:J

    .line 654
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    iget-wide v2, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-wide v2, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemFreePss:J

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v0, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryList:Lcom/netease/androidcrashhandler/util/LimitSizeMap;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-wide v2, v2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryCriticalTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/netease/androidcrashhandler/util/LimitSizeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[unexpected_crash] onMemoryStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trace"

    invoke-static {p2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    return-void
.end method

.method public declared-synchronized refreshStartTime()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "trace"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckNormalExitManager [refreshStartTime] isInit_mRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 291
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [refreshStartTime] hook exit"

    .line 296
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mPath:Ljava/lang/String;

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->hookAppExit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [refreshStartTime] start fail"

    .line 300
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 306
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 308
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/androidcrashhandler/util/CUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->versionName:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->pid:J

    .line 311
    iget-object v3, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInitMemoryAdvice:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    iput v2, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->memoryState:I

    .line 313
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    const-string v0, "trace"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckNormalExitManager [refreshStartTime ] app start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    iget-object v2, v2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    const-string v0, "CheckNormalExit"

    .line 316
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->setName(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->start()V

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [refreshStartTime] finish"

    .line 318
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 574
    :goto_0
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->lastTime:J

    .line 576
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/BatteryUtil;->getBatteryLevelInfo(Landroid/content/Context;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->power:D

    .line 577
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/BatteryUtil;->getBatteryIsCharge(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isCharge:Z

    .line 578
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->isAppForeground:Z

    .line 579
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    const-wide/16 v0, 0xbb8

    .line 581
    :try_start_0
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLastTimeDir(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeDir:Ljava/lang/String;

    return-void
.end method

.method public setLastTimeErrorType(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mLastTimeErrorType:Ljava/lang/String;

    return-void
.end method

.method public setNormalExit()V
    .locals 5

    .line 268
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 273
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 274
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 276
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitTime:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const/4 v1, 0x1

    iput v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->exitType:I

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [refreshStartTime ] app normal exit"

    .line 279
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    return-void
.end method

.method public declared-synchronized terminal()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [terminal ] "

    .line 332
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mRunning:Z

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [terminal ] mRunning stop "

    .line 336
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->isInit:Z

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->mStatus:Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;

    const-string v1, ""

    iput-object v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitModel;->startTime:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->writeInfo()V

    const-string v0, "trace"

    const-string v1, "CheckNormalExitManager [terminal ] reset "

    .line 342
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
