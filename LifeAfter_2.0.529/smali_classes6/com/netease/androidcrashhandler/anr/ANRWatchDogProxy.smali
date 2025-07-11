.class public Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;
.super Ljava/lang/Object;
.source "ANRWatchDogProxy.java"


# static fields
.field public static sAnrUploadFilePath:Ljava/lang/String;

.field private static sAnrWatchDogProxy:Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;


# instance fields
.field private anrLastTimeFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->anrLastTimeFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;
    .locals 1

    .line 23
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrWatchDogProxy:Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrWatchDogProxy:Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    .line 27
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrWatchDogProxy:Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;

    return-object v0
.end method


# virtual methods
.method public getAnrLastTimeFileName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->anrLastTimeFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setAnrLastTimeFileName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->anrLastTimeFileName:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "trace"

    const-string v1, "ANRWatchDogProxy [start] start"

    .line 31
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->isWacthDogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ANRWatchDogProxy [start] \u5f00\u542fAnr\u76d1\u63a7\u673a\u5236"

    .line 34
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->updateAnrFile()V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANRWatchDogProxy [getInstance] MessageEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismMessageEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "ANRWatchDogProxy [start] \u4e0d\u5f00\u542fAnr\u76d1\u63a7\u673a\u5236"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateAnrFile()V
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ANR_TRACE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    sget-object v1, Lcom/netease/androidcrashhandler/anr/ANRWatchDogProxy;->sAnrUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setAnrTracePath(Ljava/lang/String;)V

    return-void
.end method
