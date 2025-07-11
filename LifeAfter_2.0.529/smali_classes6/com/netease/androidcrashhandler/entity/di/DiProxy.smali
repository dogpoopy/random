.class public Lcom/netease/androidcrashhandler/entity/di/DiProxy;
.super Ljava/lang/Object;
.source "DiProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiProxy"

.field private static sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;


# instance fields
.field private mDiFreshTimeAddInterval:I

.field private mDiFreshTimeInterval:I

.field private mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mIsStart:Z

    .line 24
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmDiFreshTime()I

    move-result v0

    iput v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mIsStart:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->threadSleep()V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/entity/di/DiProxy;
    .locals 1

    .line 32
    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->sDiProxy:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    return-object v0
.end method

.method private threadSleep()V
    .locals 4

    const-string v0, "s"

    const-string v1, "trace"

    .line 81
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiProxy [threadSleep] \u4f11\u7720 +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v2, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    iget v2, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    if-lez v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiProxy [threadSleep] \u589e\u52a0\u4f11\u7720 +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanExtensionInfo()V
    .locals 2

    .line 129
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->cleanExtensionInfos()V

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public freshPreUserAgreement()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "DiProxy [freshSecureData] start"

    .line 49
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->freshSecureData()V

    .line 52
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDiInfoJson()Lorg/json/JSONObject;
    .locals 2

    .line 135
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->getDiInfoJson()Lorg/json/JSONObject;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "DiProxy [init] start"

    .line 40
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-direct {v0, p1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    .line 43
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmDiFreshTime()I

    move-result p1

    iput p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sCurFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->sPreFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setDiFreshTimeInterval(IZ)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "DiProxy [setDiFreshTimeInterval] start"

    .line 141
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiProxy [setDiFreshTimeInterval] diFreshTimeInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", useConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 145
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmDiFreshTime()I

    move-result p1

    iput p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    .line 146
    iput v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DiProxy [setDiFreshTimeInterval] Config diFreshTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget p2, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    sub-int p2, p1, p2

    if-lez p2, :cond_1

    .line 154
    iput p2, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    goto :goto_0

    .line 157
    :cond_1
    iput v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeAddInterval:I

    .line 160
    :goto_0
    iput p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiFreshTimeInterval:I

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "DiProxy [start] start"

    .line 57
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;-><init>(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V

    const-string v1, "crashhunter_di_thread"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method

.method public updateDiInfoToLocalFile()V
    .locals 4

    .line 97
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    :try_start_0
    const-string v1, "trace"

    const-string v2, "DiProxy [updateDiInfoToLocalFile] start"

    .line 98
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    if-eqz v1, :cond_1

    const-string v1, "trace"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiProxy [updateDiInfoToLocalFile] mIsThroughUserAgreement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsThroughUserAgreement:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-boolean v1, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->mIsThroughUserAgreement:Z

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->fresh()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->freshSecureData()V

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V

    const-string v1, "trace"

    const-string v2, "DiProxy [updateDiInfoToLocalFile] end"

    .line 111
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "trace"

    const-string v2, "DiProxy [updateDiInfoToLocalFile] mDiInfo is null"

    .line 114
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateDiTimeToLocalFile()V
    .locals 3

    .line 120
    const-class v0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    monitor-enter v0

    :try_start_0
    const-string v1, "trace"

    const-string v2, "DiProxy [updateDiTimeToLocalFile] start"

    .line 121
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->freshTime()V

    .line 123
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->mDiInfo:Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V

    const-string v1, "trace"

    const-string v2, "DiProxy [updateDiTimeToLocalFile] end"

    .line 124
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
