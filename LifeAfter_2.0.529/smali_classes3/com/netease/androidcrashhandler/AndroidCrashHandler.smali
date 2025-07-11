.class public Lcom/netease/androidcrashhandler/AndroidCrashHandler;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"


# static fields
.field private static sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;


# instance fields
.field private mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

.field private mDetectSignal:Z

.field private mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

.field private mLastTimeCrashDir:Ljava/lang/String;

.field private mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;

.field private mTargetNativeCrashDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string v0, "xdl"

    .line 80
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AndroidCrashHandler"

    .line 82
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [static ] load AndroidCrashHandler so Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mTargetNativeCrashDir:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mLastTimeCrashDir:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    const/4 v1, 0x0

    .line 311
    iput-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    .line 398
    iput-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;

    .line 400
    iput-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    .line 94
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/CEmulatorDetector;->detectLocal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setHookEnable(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->initSoCheck(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/netease/androidcrashhandler/AndroidCrashHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mTargetNativeCrashDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/AndroidCrashHandler;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->checkDetectSignalFile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)Lcom/netease/androidcrashhandler/MyCrashCallBack;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    return-object p0
.end method

.method public static callbackToUser(ILjava/lang/String;)V
    .locals 2

    .line 288
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event_info"

    .line 290
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-static {p0, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static callbackToUser(ILorg/json/JSONObject;)V
    .locals 1

    .line 298
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getNTEventOccurCallBack()Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/netease/androidcrashhandler/callback/NTEventOccurCallBack;->onNTEventOccurCallBack(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private checkDetectSignalFile(Landroid/content/Context;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [checkDetectSignalFile] start"

    .line 145
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    const/4 v2, 0x1

    const-string v3, "CrashHunterProxy [checkDetectSignalFile] detect:"

    if-nez v1, :cond_0

    .line 147
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".data"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ntUniSDK"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "base"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "detect_signal_file"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "detect_signal_file.temp"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->detectSigaction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static native detectSigaction(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .locals 1

    .line 101
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/netease/androidcrashhandler/util/LogUtils;->checkDebug()V

    .line 103
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    .line 106
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sAndroidCrashHandler:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    return-object v0
.end method

.method private static handleAnr()V
    .locals 8

    .line 195
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v0

    .line 196
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->isMainThreadBlocked(Landroid/os/MessageQueue;)Z

    move-result v2

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnrProxy [storageAnrContextInfo] Block:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " foreground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "trace"

    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez v2, :cond_0

    const-string v2, "AnrProxy [storageAnrContextInfo] not_my_anr"

    .line 201
    invoke-static {v3, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 206
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AndroidCrashHandler [nativeSignalCallback] create file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 209
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "com.netease.androidcrashhandler.anr.ANRError: Application Not Responding for at least 5000 ms.\n"

    if-eqz v2, :cond_1

    const-string v1, "*looper not block*\n"

    .line 212
    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 214
    :cond_1
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/ANRError;->allStackTrace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 222
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v4

    .line 218
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    .line 222
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :cond_3
    :goto_3
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->handleMessageContextInfo()V

    .line 231
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$2;-><init>()V

    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_4

    .line 222
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 224
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 227
    :cond_4
    :goto_4
    throw v0
.end method

.method private static handleMessageContextInfo()V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler [handleMessageContextInfo] MessageEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismMessageEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AndroidCrashHandler [handleMessageContextInfo] \u5b58\u50a8Meesage\u53cacpu\u4fe1\u606f"

    .line 270
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/MessageProxy;->storageMessageContextInfo()V

    goto :goto_0

    :cond_0
    const-string v0, "AndroidCrashHandler [handleMessageContextInfo] \u65e0\u9700\u5b58\u50a8Meesage\u53cacpu\u4fe1\u606f"

    .line 274
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static handleNativeCrash(J)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [handleNativeCrash]"

    .line 246
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    .line 249
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getTargetNativeCrashDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->checkAndCopyUUIDFile(Ljava/lang/String;)Z

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getTargetNativeCrashDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getTargetNativeCrashDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyParamFile(Ljava/lang/String;)Z

    .line 252
    invoke-static {}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->finish()V

    .line 257
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_path"

    .line 258
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getTargetNativeCrashDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "crash_thread_id"

    .line 259
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p0, 0x8

    .line 260
    invoke-static {p0, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    :goto_0
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object p0

    const-string p1, "OCCUR NATIVE CRASH"

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    return-void
.end method

.method public static native hookAppExit(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native initSoCheck(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static nativeInputEventLag(ZLjava/lang/String;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler [nativeInputEventLag] isLagTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 165
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->sendInputEventLagMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->sendInputEventLagFinish()V

    :goto_0
    return-void
.end method

.method public static nativeSignalCallback(I)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [nativeSignalCallback] old"

    .line 188
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 189
    invoke-static {p0, v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->nativeSignalCallback(IJ)V

    return-void
.end method

.method public static nativeSignalCallback(IJ)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [nativeSignalCallback] start"

    .line 172
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidCrashHandler [nativeSignalCallback] signal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 177
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->handleAnr()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->handleNativeCrash(J)V

    :goto_0
    return-void
.end method

.method private static storageJavaMainThreadStackTrackToFile()V
    .locals 3

    .line 279
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getJavaMainThreadStackTrack()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getTargetNativeCrashDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javaStackTrace.txt"

    invoke-static {v0, v1, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public native NCCrashHandler(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public native NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native dumpUnisecDecodeFile(Ljava/lang/String;)V
.end method

.method public getCrashIdentity()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastTimeCrashDir()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mLastTimeCrashDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .locals 1

    .line 317
    invoke-static {}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getInstance()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v0

    return-object v0
.end method

.method public native getSoBuildId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSoLoadingType()Ljava/lang/String;
.end method

.method public getTargetNativeCrashDir()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mTargetNativeCrashDir:Ljava/lang/String;

    return-object v0
.end method

.method public native getThreadFullUnwind()Ljava/lang/String;
.end method

.method public native getUnisecRandomOpen()Z
.end method

.method public native getUnisecVersion()Ljava/lang/String;
.end method

.method public handleNCCrash(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isDetectSignal()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    return v0
.end method

.method public native openTouchEventHook()V
.end method

.method public native setAnrTracePath(Ljava/lang/String;)V
.end method

.method public setCallBack(Lcom/netease/androidcrashhandler/MyCrashCallBack;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mCrashCallBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    return-void
.end method

.method public setDetectSignal(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mDetectSignal:Z

    return-void
.end method

.method public native setDumpModule(Ljava/lang/String;IZ)V
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler [setEngineVersion] version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AndroidCrashHandler [setEngineVersion] version is null"

    .line 387
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    const-string v1, "engine_version"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native setHookEnable(Z)V
.end method

.method public setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    return-void
.end method

.method public setLastTimeCrashDir(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mLastTimeCrashDir:Ljava/lang/String;

    return-void
.end method

.method public native setLogFilePath(Ljava/lang/String;)V
.end method

.method public setMyCHListener(Lcom/netease/androidcrashhandler/MyCHListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mMyCHListener:Lcom/netease/androidcrashhandler/MyCHListener;

    return-void
.end method

.method public native setPluginModifyEnable(Z)V
.end method

.method public setResVersion(Ljava/lang/String;)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCrashHandler [setResVersion] version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AndroidCrashHandler [setResVersion] version is null"

    .line 376
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    const-string v1, "res_version"

    invoke-virtual {v0, v1, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native setTargetThreadUnwind(Z)V
.end method

.method public native setThrowable(Z)V
.end method

.method public start(Landroid/content/Context;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "CrashHunterProxy [start] start"

    .line 110
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->isOpenBreakpad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/netease/androidcrashhandler/so/SoUuidCore;->getInstance()Lcom/netease/androidcrashhandler/so/SoUuidCore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/so/SoUuidCore;->storageSoUuidInfosToSdkDir(Landroid/content/Context;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHunterProxy [start] sUploadFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CrashHunterProxy [start] Native\u5d29\u6e83\u6355\u6349\u673a\u5236\u542f\u52a8"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getCallbackSoPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_so_path"

    invoke-virtual {p0, v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getCallbackMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_method_name"

    invoke-virtual {p0, v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "CrashHunterProxy [start] \u4e0d\u542f\u52a8Native\u5d29\u6e83\u6355\u6349\u673a\u5236"

    .line 135
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startCrashHandle(Landroid/content/Context;)V
    .locals 5

    const-string v0, "trace"

    const-string v1, "AndroidCrashHandler [startCrashHandle] \u4ece\u65e7\u63a5\u53e3\u542f\u52a8crashhunter"

    .line 325
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->init(Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 334
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 336
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AndroidCrashHandler [startCrashHandle] key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "callback_so_path"

    .line 340
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "callback_method_name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v3, "AndroidCrashHandler [startCrashHandle] setSoParam"

    .line 341
    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setSoParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    new-instance v1, Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$3;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V

    const-string p1, "AndroidCrashHandler [startCrashHandle] \u901a\u8fc7\u65e7\u65b9\u5f0f\u8f6c\u63a5\uff0c\u8c03\u7528setIPrePostCallBack"

    .line 362
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mIPrePostCallBack:Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setIPrePostCallBack(Lcom/netease/androidcrashhandler/callback/IPrePostCallBack;)V

    .line 365
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->startHuntingCrash()V

    return-void
.end method

.method public native writeFdInfoToLocalFile(Ljava/lang/String;)V
.end method
