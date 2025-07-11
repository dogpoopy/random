.class public Lcom/netease/androidcrashhandler/config/ConfigCore;
.super Ljava/lang/Object;
.source "ConfigCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCore"

.field private static sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;


# instance fields
.field private CONFIG_FILE_NAME:Ljava/lang/String;

.field private mAcsdkEnabled:Z

.field private mAppCrashThrowable:Z

.field private mCarrierLimit:I

.field private mDiFreshInterval:I

.field private mEnable:Z

.field private mExpire:I

.field private mFileLimit:I

.field private mLocalUnwindEnabled:Z

.field private mLoggerEnabled:Z

.field private mMessageEnabled:Z

.field private mQueueSize:I

.field private mSystemSoArray:Lorg/json/JSONArray;

.field private mUnknownCrash:Z

.field private mWacthDogEnabled:Z

.field private mWifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    const/16 v2, 0x1e

    .line 29
    iput v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    const/16 v2, 0x14

    .line 31
    iput v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    const/16 v2, 0x1800

    .line 33
    iput v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    .line 35
    iput v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    const v2, 0x15180

    .line 37
    iput v2, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    .line 39
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mMessageEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWacthDogEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLoggerEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLocalUnwindEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUnknownCrash:Z

    .line 49
    iput-boolean v1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAcsdkEnabled:Z

    .line 52
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAppCrashThrowable:Z

    const-string v0, "crashhunter_config.txt"

    .line 54
    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mSystemSoArray:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/config/ConfigCore;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLoggerEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLoggerEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/config/ConfigCore;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUnknownCrash:Z

    return p1
.end method

.method static synthetic access$302(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mMessageEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/androidcrashhandler/config/ConfigCore;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLocalUnwindEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netease/androidcrashhandler/config/ConfigCore;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLocalUnwindEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netease/androidcrashhandler/config/ConfigCore;ZZZZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/androidcrashhandler/config/ConfigCore;->switchPlugins(ZZZZ)V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;
    .locals 1

    .line 63
    sget-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/netease/androidcrashhandler/config/ConfigCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    .line 67
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/config/ConfigCore;->sConfigCore:Lcom/netease/androidcrashhandler/config/ConfigCore;

    return-object v0
.end method

.method private switchPlugins(ZZZZ)V
    .locals 1

    const-string v0, "trace"

    if-eqz p1, :cond_0

    const-string p1, "ANRWatchDogProxy [getInstance] \u542f\u52a8Message\u76d1\u63a7"

    .line 313
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->start()V

    .line 315
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->openTouchEventHook()V

    goto :goto_0

    :cond_0
    const-string p1, "ANRWatchDogProxy [getInstance] \u65e0\u9700\u542f\u52a8Message\u76d1\u63a7"

    .line 317
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 323
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->init(Landroid/content/Context;)V

    .line 324
    invoke-static {}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->getInstance()Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/unknownCrash/CheckNormalExitManager;->refreshStartTime()V

    :cond_1
    if-eqz p3, :cond_2

    .line 330
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->createNewUniLoggerInstance(Landroid/content/Context;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "CrashHunterProxy [start] setDumpModule"

    .line 336
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p4

    invoke-virtual {p4}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->detectLocal(Landroid/content/Context;)Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setDumpModule(Ljava/lang/String;IZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public fresh()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ConfigCore [fresh] start"

    .line 192
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/netease/androidcrashhandler/net/ConfigRequest;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/net/ConfigRequest;-><init>()V

    .line 194
    new-instance v1, Lcom/netease/androidcrashhandler/config/ConfigCore$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/config/ConfigCore$1;-><init>(Lcom/netease/androidcrashhandler/config/ConfigCore;)V

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/net/ConfigRequest;->registerRequestCallback(Lcom/netease/androidcrashhandler/net/RequestCallback;)V

    .line 232
    new-instance v1, Lcom/netease/androidcrashhandler/config/ConfigCore$2;

    invoke-direct {v1, p0, v0}, Lcom/netease/androidcrashhandler/config/ConfigCore$2;-><init>(Lcom/netease/androidcrashhandler/config/ConfigCore;Lcom/netease/androidcrashhandler/net/ConfigRequest;)V

    const-string v0, "crashhunter-config"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method

.method public getmCarrierLimit()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    return v0
.end method

.method public getmDiFreshTime()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    return v0
.end method

.method public getmExpire()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    return v0
.end method

.method public getmFileLimit()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    return v0
.end method

.method public getmQueueSize()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    return v0
.end method

.method public getmSystemSoArray()Lorg/json/JSONArray;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mSystemSoArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public isAcsdkEnabled()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAcsdkEnabled:Z

    return v0
.end method

.method public isAppCrashThrowable()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAppCrashThrowable:Z

    return v0
.end method

.method public isLoaclUnwindEnabled()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mLocalUnwindEnabled:Z

    return v0
.end method

.method public isOpenUnknownCrash()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mUnknownCrash:Z

    return v0
.end method

.method public isWacthDogEnabled()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWacthDogEnabled:Z

    return v0
.end method

.method public ismEnable()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    return v0
.end method

.method public ismMessageEnabled()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mMessageEnabled:Z

    return v0
.end method

.method public ismWifiOnly()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    return v0
.end method

.method public readLocalConfig()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "acsdk_enabled"

    const-string v2, "app_crash_throwable"

    const-string v3, "sys_so"

    const-string v4, "watchdog_enabled"

    const-string v5, "java_crash_enabled"

    const-string v6, "breakpad_enabled"

    const-string v7, "di_refresh_interval"

    const-string v8, "carrier_limit"

    const-string v9, "file_limit"

    const-string v10, "queue_size"

    const-string v11, "expire"

    const-string v12, "wifi_only"

    const-string v13, "enable"

    const-string v14, "trace"

    const-string v15, "ConfigCore [readLocalConfig] start"

    .line 80
    invoke-static {v14, v15}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v15, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->file2Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v0, "ConfigCore [readLocalConfig] configiInfo is null"

    .line 84
    invoke-static {v14, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "ConfigCore [readLocalConfig] configiInfo="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ConfigCore [readLocalConfig] config="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mEnable:Z

    .line 97
    :cond_1
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWifiOnly:Z

    .line 101
    :cond_2
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    const/16 v11, 0x2710

    if-gt v0, v11, :cond_3

    .line 104
    iput v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mExpire:I

    .line 108
    :cond_3
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x5

    if-lt v0, v10, :cond_4

    const/16 v10, 0x14

    if-gt v0, v10, :cond_4

    .line 111
    iput v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mQueueSize:I

    .line 115
    :cond_4
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v10, 0x400

    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_5

    const/16 v9, 0x2800

    if-gt v0, v9, :cond_5

    .line 118
    iput v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mFileLimit:I

    .line 122
    :cond_5
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_6

    const/16 v8, 0x7800

    if-gt v0, v8, :cond_6

    .line 125
    iput v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mCarrierLimit:I

    .line 129
    :cond_6
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0xb4

    if-lt v0, v7, :cond_7

    const/16 v7, 0xe10

    if-gt v0, v7, :cond_7

    .line 132
    iput v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mDiFreshInterval:I

    .line 136
    :cond_7
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmIsOpenBreakpad(Z)V

    .line 140
    :cond_8
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/netease/androidcrashhandler/init/InitProxy;->setmIsDetectJavaCrash(Z)V

    .line 144
    :cond_9
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mWacthDogEnabled:Z

    .line 152
    :cond_a
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mSystemSoArray:Lorg/json/JSONArray;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigCore [readLocalConfig] mSystemSoArray="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mSystemSoArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, v17

    .line 157
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 158
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->setAppCrashThrowable(Z)V

    :cond_c
    move-object/from16 v0, v16

    .line 177
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 178
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAcsdkEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigCore [readLocalConfig] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_0
    return-void
.end method

.method public setAppCrashThrowable(Z)V
    .locals 1

    .line 290
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAppCrashThrowable:Z

    .line 291
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object p1

    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/config/ConfigCore;->mAppCrashThrowable:Z

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setThrowable(Z)V

    return-void
.end method
