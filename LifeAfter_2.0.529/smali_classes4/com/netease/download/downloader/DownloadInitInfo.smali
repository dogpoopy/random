.class public Lcom/netease/download/downloader/DownloadInitInfo;
.super Ljava/lang/Object;
.source "DownloadInitInfo.java"


# static fields
.field private static TAG:Ljava/lang/String; = "DownloadInitInfo"

.field private static sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;


# instance fields
.field private mAppChannel:Ljava/lang/String;

.field public mAreaZone:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mImei:Ljava/lang/String;

.field public mImsi:Ljava/lang/String;

.field private mLocalIp:Ljava/lang/String;

.field private mLocalgateway:Ljava/lang/String;

.field public mMacAddr:Ljava/lang/String;

.field public mMobileType:Ljava/lang/String;

.field public mOsName:Ljava/lang/String;

.field public mOsVer:Ljava/lang/String;

.field private mProjectId:Ljava/lang/String;

.field public mSplitThreshold:Ljava/lang/String;

.field public mTimeZone:Ljava/lang/String;

.field private mTransid:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;

.field public mUnisdkChannelVersion:Ljava/lang/String;

.field private mUnisdkDeviceId:Ljava/lang/String;

.field public mUnisdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    const-string v1, ""

    .line 27
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAppChannel:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsVer:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMobileType:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTimeZone:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAreaZone:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mSplitThreshold:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkVersion:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkChannelVersion:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImei:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImsi:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUdid:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTransid:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkDeviceId:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMacAddr:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    return-void
.end method

.method public static getInstances()Lcom/netease/download/downloader/DownloadInitInfo;
    .locals 1

    .line 68
    sget-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/netease/download/downloader/DownloadInitInfo;

    invoke-direct {v0}, Lcom/netease/download/downloader/DownloadInitInfo;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    .line 72
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    return-object v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getProjectId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppChannel()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getmAreaZone()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAreaZone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getAreaZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAreaZone:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAreaZone:Ljava/lang/String;

    return-object v0
.end method

.method public getmImei()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getmImsi()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocalIp()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmMacAddr()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMacAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMobileType()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMobileType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMobileType:Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMobileType:Ljava/lang/String;

    return-object v0
.end method

.method public getmOsName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getOsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsName:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getmOsVer()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsVer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getOsVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsVer:Ljava/lang/String;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOsVer:Ljava/lang/String;

    return-object v0
.end method

.method public getmProjectId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getmSplitThreshold()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mSplitThreshold:Ljava/lang/String;

    return-object v0
.end method

.method public getmTimeZone()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTimeZone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTimeZone:Ljava/lang/String;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getmTransid()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTransid:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdid()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getmUnisdkChannelVersion()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkChannelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmUnisdkDeviceId()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getmUnisdkVersion()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public setLocalgateway(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    return-void
.end method

.method public setmAppChannel(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAppChannel:Ljava/lang/String;

    return-void
.end method

.method public setmImei(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImei:Ljava/lang/String;

    return-void
.end method

.method public setmImsi(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public setmLocalIp(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    return-void
.end method

.method public setmMacAddr(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mMacAddr:Ljava/lang/String;

    return-void
.end method

.method public setmProjectId(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    return-void
.end method

.method public setmSplitThreshold(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mSplitThreshold:Ljava/lang/String;

    return-void
.end method

.method public setmTransid(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mTransid:Ljava/lang/String;

    return-void
.end method

.method public setmUdid(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUdid:Ljava/lang/String;

    return-void
.end method

.method public setmUnisdkChannelVersion(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkChannelVersion:Ljava/lang/String;

    return-void
.end method

.method public setmUnisdkDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setmUnisdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mUnisdkVersion:Ljava/lang/String;

    return-void
.end method
