.class public Lcom/netease/androidcrashhandler/init/InitProxy;
.super Ljava/lang/Object;
.source "InitProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Init"

.field public static sConfigFilePath:Ljava/lang/String; = null

.field public static sFilesDir:Ljava/lang/String; = null

.field private static sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy; = null

.field public static sOldUploadFilePath:Ljava/lang/String; = ""

.field public static sUniTraceDir:Ljava/lang/String;

.field public static sUploadFilePath:Ljava/lang/String;


# instance fields
.field public mBranch:Ljava/lang/String;

.field public mCallbackMethodName:Ljava/lang/String;

.field public mCallbackSoPath:Ljava/lang/String;

.field public mEB:Ljava/lang/String;

.field public mEngineVersion:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field public mImei:Ljava/lang/String;

.field private mIsDetectJavaCrash:Z

.field private mIsHardened:Z

.field public mIsLastTimeAnr:I

.field public mIsLastTimeCrash:I

.field public mIsLastTimeUnKnownException:I

.field private mIsOpenBreakpad:Z

.field private mLocalIp:Ljava/lang/String;

.field public mPacakageName:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field public mResVersion:Ljava/lang/String;

.field public mStartTime:J

.field private mTransid:Ljava/lang/String;

.field private mUnisdkDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mStartTime:J

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    .line 37
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsDetectJavaCrash:Z

    const-string v2, "-1"

    .line 39
    iput-object v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeCrash:I

    .line 44
    iput v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeAnr:I

    .line 46
    iput v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeUnKnownException:I

    .line 48
    iput-boolean v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsHardened:Z

    .line 50
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mImei:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mTransid:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mUnisdkDeviceId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mLocalIp:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHost:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mProject:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;
    .locals 2

    .line 86
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    if-nez v0, :cond_0

    const-string v0, "trace"

    const-string v1, "InitProxy [getInstance] start"

    .line 87
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/netease/androidcrashhandler/init/InitProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    .line 91
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sInitProxy:Lcom/netease/androidcrashhandler/init/InitProxy;

    return-object v0
.end method


# virtual methods
.method public getCallbackMethodName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackSoPath()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUrlHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/CUtil;->getSuitableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEB()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLastTimeAnr()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeAnr:I

    return v0
.end method

.method public getIsLastTimeCrash()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeCrash:I

    return v0
.end method

.method public getIsLastTimeUnKnownException()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeUnKnownException:I

    return v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getResVersion()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUploadUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUploadUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadUrl(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUrlHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->getSuitableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "upload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getUrlHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/CUtil;->getSuitableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "revert/upload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 298
    iget-object v2, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHost:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "https://%s/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getProject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getProject()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "https://%s.appdump.nie.netease.com/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "https://appdump.nie.netease.com/"

    .line 304
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUploadUrlHeader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getmBranch()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    return-object v0
.end method

.method public getmImei()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocalIp()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmTransid()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mTransid:Ljava/lang/String;

    return-object v0
.end method

.method public getmUnisdkDeviceId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mUnisdkDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "trace"

    const-string v1, "InitProxy [init] start"

    .line 113
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "InitProxy [init] params error"

    .line 116
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    const-string v2, "os_type"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sFilesDir:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sFilesDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/crashhunter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sOldUploadFilePath:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sFilesDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/uniTrace"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUniTraceDir:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sUniTraceDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sFilesDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/crashhunter_config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUniTraceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 143
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/netease/androidcrashhandler/init/InitProxy;->sConfigFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_3
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getEB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mStartTime:J

    .line 158
    invoke-static {p1}, Lcom/netease/androidcrashhandler/util/CUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 161
    iget-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    .line 164
    :cond_4
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeCrash()Z

    .line 165
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeAnr()Z

    .line 166
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->isLastTimeUndefinedException()Z

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitProxy [init] sPacakageName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mPacakageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sUploadFilePath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initAfterThroughUserAgreement(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/init/InitProxy;->getmTransid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transid"

    invoke-virtual {p1, v1, v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDetectJavaCrash()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsDetectJavaCrash:Z

    return v0
.end method

.method public isIsHardened()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsHardened:Z

    return v0
.end method

.method public isOpenBreakpad()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    return v0
.end method

.method public setCallbackMethodName(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackMethodName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackSoPath(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "InitProxy [setCallbackSoPath] start"

    .line 178
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 182
    iget-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 186
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitProxy [setCallbackSoPath] callbackSoPath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mCallbackSoPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "InitProxy [setCallbackSoPath] callbackSoPath \u4e3a\u7a7a"

    .line 197
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setEB(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEB:Ljava/lang/String;

    return-void
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mEngineVersion:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHost:Ljava/lang/String;

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InitProxy [setHost] mHost = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsHardened(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsHardened:Z

    return-void
.end method

.method public setIsLastTimeAnr(I)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeAnr:I

    return-void
.end method

.method public setIsLastTimeCrash(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeCrash:I

    return-void
.end method

.method public setIsLastTimeUnKnownException(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsLastTimeUnKnownException:I

    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mProject:Ljava/lang/String;

    return-void
.end method

.method public setResVersion(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mResVersion:Ljava/lang/String;

    return-void
.end method

.method public setmBranch(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mBranch:Ljava/lang/String;

    return-void
.end method

.method public setmImei(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mImei:Ljava/lang/String;

    return-void
.end method

.method public setmIsDetectJavaCrash(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsDetectJavaCrash:Z

    return-void
.end method

.method public setmIsOpenBreakpad(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mIsOpenBreakpad:Z

    return-void
.end method

.method public setmLocalIp(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mLocalIp:Ljava/lang/String;

    return-void
.end method

.method public setmTransid(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mTransid:Ljava/lang/String;

    return-void
.end method

.method public setmUnisdkDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/netease/androidcrashhandler/init/InitProxy;->mUnisdkDeviceId:Ljava/lang/String;

    return-void
.end method
