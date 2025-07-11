.class public Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;
.super Ljava/lang/Object;
.source "JavaCrashCore.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static sJavaCrashCore:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;


# instance fields
.field private mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

.field private mJavaCrashRootDir:Ljava/io/File;

.field private mLastTimeCrashDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mLastTimeCrashDir:Ljava/lang/String;

    return-void
.end method

.method private static getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    const-string v0, "trace"

    const-string v1, "JavaCrashCore [getExceptionInfo] start"

    .line 147
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "JavaCrashCore [getExceptionInfo] param error"

    .line 152
    invoke-static {v0, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 158
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 159
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 171
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaCrashCore [getExceptionInfo] Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p0, "======================================================================="

    .line 178
    invoke-static {v0, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "JavaCrashCore [getExceptionInfo] java crash info"

    .line 179
    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v0, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;
    .locals 2

    const-string v0, "trace"

    const-string v1, "JavaCrashCore [getInstance] start"

    .line 39
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->sJavaCrashCore:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->sJavaCrashCore:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    .line 44
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->sJavaCrashCore:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;

    return-object v0
.end method


# virtual methods
.method public createJavaCrashRootDir()V
    .locals 5

    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JAVA_DUMP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public getLastTimeCrashDir()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mLastTimeCrashDir:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "/"

    const-string v1, "OCCUR JAVA CRASH"

    const-string v2, "trace"

    const-string v3, "JavaCrashCore [handleException] start"

    .line 89
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    :try_start_0
    const-string p1, "JavaCrashCore [handleException] param error"

    .line 93
    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/androidcrashhandler/thirdparty/clientLogModule/ClientLog;->sendClientLog(Ljava/lang/String;)V

    const-string v3, "JavaCrashCore [handleException] getExceptionInfo"

    .line 99
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "thread name:"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n\n"

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static {p2}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".aci"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object v3, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    if-eqz v3, :cond_1

    const-string v3, "JavaCrashCore [handleException] callback"

    .line 111
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    invoke-interface {v3, p2}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;->crashCallBack(Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->updateDiInfoToLocalFile()V

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyParamFile(Ljava/lang/String;)Z

    .line 118
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashRootDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->writeFdInfoToLocalFile(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "event_info"

    .line 122
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x4

    .line 126
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V

    const/16 v1, 0xb

    .line 127
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callbackToUser(ILorg/json/JSONObject;)V

    .line 129
    invoke-static {}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->finish()V

    .line 130
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->isAppCrashThrowable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "java Crash not Throwable:============================"

    .line 134
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setJavaCrashCallBack(Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mJavaCrashCallBack:Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    return-void
.end method

.method public setLastTimeCrashDir(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mLastTimeCrashDir:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 4

    const-string v0, "trace"

    const-string v1, "JavaCrashCore [start] start"

    .line 55
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/init/InitProxy;->isDetectJavaCrash()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "JavaCrashCore [start] \u542f\u52a8Java crash\u68c0\u6d4b\u673a\u5236"

    .line 58
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaCrashCore [start] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->createJavaCrashRootDir()V

    goto :goto_1

    :cond_0
    const-string v1, "JavaCrashCore [start] \u4e0d\u542f\u52a8Java crash\u68c0\u6d4b\u673a\u5236"

    .line 71
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "JavaCrashCore [uncaughtException] start, "

    .line 77
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaCrashCore [uncaughtException] Thread id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "JavaCrashCore [uncaughtException] param error"

    .line 81
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCore;->handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
