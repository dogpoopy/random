.class public Lcom/netease/download/downloader/DownloadParams;
.super Ljava/lang/Object;
.source "DownloadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/downloader/DownloadParams$Element;,
        Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "DownloadParams"


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCdnUrl:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mDownloadResultCode:I

.field private mElementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams$Element;",
            ">;"
        }
    .end annotation
.end field

.field private mFileId:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mHttpdnsIp:Ljava/lang/String;

.field private mIsPart:Z

.field private mIsUiCallback:Z

.field private mLast:J

.field private mMd5:Ljava/lang/String;

.field private mMergeOffset:J

.field private mOffsetTempFileName:Ljava/lang/String;

.field private mOriginUrl:Ljava/lang/String;

.field private mPartCount:I

.field private mPartIndex:I

.field private mPriSegmentStart:J

.field private mRealFileSize:J

.field private mRenew:Z

.field private mResult:I

.field private mSize:J

.field private mSpeedLimit:F

.field private mStart:J

.field private mStartDownloadTime:J

.field private mTargetUrl:Ljava/lang/String;

.field private mTotalWeight:I

.field private mUrlResName:Ljava/lang/String;

.field private mUserFileName:Ljava/lang/String;

.field private mWoffset:J

.field private mWriteToExistFile:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadParams;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mPartIndex:I

    const/4 v2, 0x1

    .line 128
    iput v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPartCount:I

    const-wide/16 v2, 0x0

    .line 130
    iput-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPriSegmentStart:J

    .line 135
    iput-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mStart:J

    .line 140
    iput-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mLast:J

    const-wide/16 v4, -0x64

    .line 143
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mWoffset:J

    .line 145
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mOffsetTempFileName:Ljava/lang/String;

    .line 147
    iput-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mMergeOffset:J

    .line 152
    iput-boolean v1, p0, Lcom/netease/download/downloader/DownloadParams;->mWriteToExistFile:Z

    const/16 v1, -0x64

    .line 159
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadResultCode:I

    const-wide/16 v2, -0x1

    .line 161
    iput-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mStartDownloadTime:J

    const/4 v2, 0x0

    .line 163
    iput v2, p0, Lcom/netease/download/downloader/DownloadParams;->mSpeedLimit:F

    .line 165
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mResult:I

    .line 167
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 195
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->timer:Ljava/util/Timer;

    .line 197
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/netease/download/downloader/DownloadParams;IJJLjava/lang/String;F)V
    .locals 7

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mPartIndex:I

    const/4 v2, 0x1

    .line 128
    iput v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPartCount:I

    const-wide/16 v3, 0x0

    .line 130
    iput-wide v3, p0, Lcom/netease/download/downloader/DownloadParams;->mPriSegmentStart:J

    .line 135
    iput-wide v3, p0, Lcom/netease/download/downloader/DownloadParams;->mStart:J

    .line 140
    iput-wide v3, p0, Lcom/netease/download/downloader/DownloadParams;->mLast:J

    const-wide/16 v5, -0x64

    .line 143
    iput-wide v5, p0, Lcom/netease/download/downloader/DownloadParams;->mWoffset:J

    .line 145
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mOffsetTempFileName:Ljava/lang/String;

    .line 147
    iput-wide v3, p0, Lcom/netease/download/downloader/DownloadParams;->mMergeOffset:J

    .line 152
    iput-boolean v1, p0, Lcom/netease/download/downloader/DownloadParams;->mWriteToExistFile:Z

    const/16 v3, -0x64

    .line 159
    iput v3, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadResultCode:I

    const-wide/16 v4, -0x1

    .line 161
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mStartDownloadTime:J

    const/4 v4, 0x0

    .line 163
    iput v4, p0, Lcom/netease/download/downloader/DownloadParams;->mSpeedLimit:F

    .line 165
    iput v3, p0, Lcom/netease/download/downloader/DownloadParams;->mResult:I

    .line 167
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 195
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->timer:Ljava/util/Timer;

    .line 197
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    .line 712
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setmUrlResName(Ljava/lang/String;)V

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getUserFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setUserFileName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->ismWriteToExistFile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setmWriteToExistFile(Z)V

    .line 716
    invoke-virtual {p0, v1}, Lcom/netease/download/downloader/DownloadParams;->setIsUiCallback(Z)V

    add-int/2addr p2, v2

    .line 717
    invoke-direct {p0, p2}, Lcom/netease/download/downloader/DownloadParams;->setPartIndex(I)V

    .line 718
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSize(J)V

    .line 719
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getRealFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setRealFileSize(J)V

    .line 720
    invoke-virtual {p0, v2}, Lcom/netease/download/downloader/DownloadParams;->setIsParted(Z)V

    .line 721
    invoke-virtual {p0, p3, p4}, Lcom/netease/download/downloader/DownloadParams;->setStart(J)V

    .line 722
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getmPriSegmentStart()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/netease/download/downloader/DownloadParams;->setmPriSegmentStart(J)V

    .line 723
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getmWoffset()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/netease/download/downloader/DownloadParams;->setmWoffset(J)V

    .line 726
    invoke-virtual {p0, p5, p6}, Lcom/netease/download/downloader/DownloadParams;->setLast(J)V

    .line 727
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getOriginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/download/downloader/DownloadParams;->setOriginUrl(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getPartCount()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/netease/download/downloader/DownloadParams;->setPartCount(I)V

    .line 729
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlPrefix()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-static {p1, p7, p2}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, p8}, Lcom/netease/download/downloader/DownloadParams;->setmSpeedLimit(F)V

    return-void
.end method

.method public static createParamsArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/netease/download/listener/DownloadListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "DownloadParams"

    const-string v3, "\u4e0b\u8f7d\u5668\u5f00\u59cb"

    .line 557
    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "create params array"

    .line 558
    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/netease/download/listener/DownloadListenerProxy;->init(Lcom/netease/download/listener/DownloadListener;)V

    .line 561
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/listener/DownloadListenerProxy;->clear()V

    .line 564
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V

    const-string v3, "DownloadParams [createParamsArray] \u4e0b\u8f7d\u524d\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08\u4e0a\u4e00\u6b21\u9057\u7559\u6587\u4ef6\uff09"

    .line 565
    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;I)V

    .line 568
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/httpdns/HttpdnsProxy;->clean()V

    .line 569
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/CdnIpController;->clean()V

    .line 570
    invoke-static {}, Lcom/netease/download/check/CheckTime;->clean()V

    .line 571
    invoke-static {}, Lcom/netease/download/lvsip/Lvsip;->getInstance()Lcom/netease/download/lvsip/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/lvsip/Lvsip;->clean()V

    .line 574
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v0, "type"

    .line 583
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "error"

    :goto_0
    move-object v5, v0

    const-string v0, "downloadid"

    .line 589
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u6570\u636e\uff0c\u8f6c\u4e3ajson="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const-string v0, "downfile"

    .line 596
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 598
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    const/4 v9, 0x0

    move-wide v10, v6

    const/4 v7, 0x0

    move-object v6, v0

    .line 602
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 603
    new-instance v12, Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {v12}, Lcom/netease/download/downloader/DownloadParams;-><init>()V

    :try_start_1
    const-string v0, "threadnum"

    .line 609
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 612
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    :cond_1
    :goto_2
    invoke-virtual {v12, v9}, Lcom/netease/download/downloader/DownloadParams;->setIsParted(Z)V

    .line 622
    invoke-virtual {v12, v4}, Lcom/netease/download/downloader/DownloadParams;->setIsUiCallback(Z)V

    .line 625
    :try_start_2
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v0

    .line 628
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    if-eqz v6, :cond_3

    const-string v0, "targeturl"

    .line 632
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setTargetUrl(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/netease/download/util/Util;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    const-string v13, "filepath"

    .line 635
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/netease/download/util/Util;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setmUrlResName(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/netease/download/util/Util;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/netease/download/downloader/DownloadParams;->setOriginUrl(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/Util;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    const-string v0, "first"

    .line 641
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "last"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v4, "\u53c2\u6570\u9009\u62e9first last\u65b9\u5f0f\uff0c\u5ffd\u7565size\u5b57\u6bb5"

    .line 642
    invoke-static {v2, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :try_start_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v14, v0

    invoke-virtual {v12, v14, v15}, Lcom/netease/download/downloader/DownloadParams;->setStart(J)V

    .line 646
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lcom/netease/download/downloader/DownloadParams;->setLast(J)V

    .line 647
    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    sub-long/2addr v13, v15

    move-wide v14, v13

    goto :goto_4

    :cond_2
    const-string v0, "\u53c2\u6570\u9009\u62e9size\u65b9\u5f0f\uff0c\u5ffd\u7565first last\u5b57\u6bb5"

    .line 654
    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    const-string v0, "size"

    .line 657
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    int-to-long v14, v0

    goto :goto_4

    :catch_3
    const-wide/16 v14, -0x64

    :goto_4
    add-long/2addr v10, v14

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6700\u7ec8\u7684size\u4e3a="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", \u5934\u90e8="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v10

    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", \u5c3e\u90e8="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v12, v14, v15}, Lcom/netease/download/downloader/DownloadParams;->setSize(J)V

    const-string v0, "md5"

    .line 667
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    const-string v0, "list"

    .line 669
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-wide/from16 v10, v16

    .line 673
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_4
    move-wide v6, v10

    .line 678
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/netease/download/downloader/TaskHandle;->setTaskAllSizes(J)V

    .line 680
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {v6, v7}, Lcom/netease/download/listener/DownloadListenerProxy;->setmTotalSize(J)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6240\u6709\u6587\u4ef6\u603b\u5927\u5c0f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {v3}, Lcom/netease/download/util/Util;->getDownloadedSize(Ljava/util/List;)J

    move-result-wide v0

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u603b\u5927\u5c0f\u4e3a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mCdnUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mCdnUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPartIndex(I)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mPartIndex:I

    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 9

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lcom/netease/download/downloader/DownloadParams$Element;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/netease/download/downloader/DownloadParams$Element;-><init>(Lcom/netease/download/downloader/DownloadParams;Ljava/lang/String;JJLjava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearByteBuffer()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public createByteBuffer(J)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    long-to-int p2, p1

    if-nez p2, :cond_0

    const/high16 p2, 0x400000

    .line 534
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 540
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCallBackFileName()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainFromUrl()Ljava/lang/String;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-static {v0}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 275
    invoke-static {p1}, Lcom/netease/download/util/Util;->isIpv6(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLast()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mLast:J

    return-wide v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "12345678"

    .line 328
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPartCount()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mPartCount:I

    return v0
.end method

.method public getPartIndex()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mPartIndex:I

    return v0
.end method

.method public getRealFileSize()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mRealFileSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 311
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mStart:J

    return-wide v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlPrefix()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mCdnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlResName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFileName()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmChannel()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getmDownloadResultCode()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadResultCode:I

    return v0
.end method

.method public getmElementList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams$Element;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmHttpdnsIp()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmMergeOffset()J
    .locals 2

    .line 495
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMergeOffset:J

    return-wide v0
.end method

.method public getmOffsetTempFileName()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mOffsetTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPriSegmentStart()J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mPriSegmentStart:J

    return-wide v0
.end method

.method public getmResult()I
    .locals 1

    .line 511
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mResult:I

    return v0
.end method

.method public getmSpeedLimit()F
    .locals 1

    .line 519
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mSpeedLimit:F

    return v0
.end method

.method public getmStartDownloadTime()J
    .locals 2

    .line 503
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mStartDownloadTime:J

    return-wide v0
.end method

.method public getmWoffset()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mWoffset:J

    return-wide v0
.end method

.method public isParted()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadParams;->mIsPart:Z

    return v0
.end method

.method isUiCallback()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ismWriteToExistFile()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadParams;->mWriteToExistFile:Z

    return v0
.end method

.method public produceSegment(IJJLjava/lang/String;F)Lcom/netease/download/downloader/DownloadParams;
    .locals 10

    .line 491
    new-instance v9, Lcom/netease/download/downloader/DownloadParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/netease/download/downloader/DownloadParams;-><init>(Lcom/netease/download/downloader/DownloadParams;IJJLjava/lang/String;F)V

    return-object v9
.end method

.method public setConfigParam(Lcom/netease/download/config/ConfigParams;)V
    .locals 0

    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mHost:Ljava/lang/String;

    return-void
.end method

.method public setIsParted(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParams;->mIsPart:Z

    return-void
.end method

.method public setIsUiCallback(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    return-void
.end method

.method public setLast(J)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mLast:J

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginUrl:Ljava/lang/String;

    return-void
.end method

.method public setPartCount(I)V
    .locals 0

    .line 427
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mPartCount:I

    return-void
.end method

.method public setRealFileSize(J)V
    .locals 0

    .line 323
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mRealFileSize:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 315
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    return-void
.end method

.method public setStart(J)V
    .locals 0

    .line 391
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mStart:J

    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mTargetUrl:Ljava/lang/String;

    return-void
.end method

.method public setTotalWeight(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalWeight:I

    return-void
.end method

.method public setUrlPrefix(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mCdnUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserFileName(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    return-void
.end method

.method public setmChannel(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public setmDownloadResultCode(I)V
    .locals 0

    .line 487
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadResultCode:I

    return-void
.end method

.method public setmElementList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/downloader/DownloadParams$Element;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmHttpdnsIp(Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    return-void
.end method

.method public setmMergeOffset(J)V
    .locals 0

    .line 499
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mMergeOffset:J

    return-void
.end method

.method public setmOffsetTempFileName(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mOffsetTempFileName:Ljava/lang/String;

    return-void
.end method

.method public setmPriSegmentStart(J)V
    .locals 0

    .line 399
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mPriSegmentStart:J

    return-void
.end method

.method public setmResult(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mResult:I

    return-void
.end method

.method public setmSpeedLimit(F)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mSpeedLimit:F

    return-void
.end method

.method public setmStartDownloadTime(J)V
    .locals 0

    .line 507
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mStartDownloadTime:J

    return-void
.end method

.method public setmUrlResName(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    return-void
.end method

.method public setmWoffset(J)V
    .locals 0

    .line 407
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mWoffset:J

    return-void
.end method

.method public setmWriteToExistFile(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParams;->mWriteToExistFile:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadParams{mCdnUrl = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mCdnUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOriginUrl = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mChannel = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUrlResName = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlResName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLocalPath = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUserFileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mUserFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMd5 = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mRealFileSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mRealFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mRenew = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/download/downloader/DownloadParams;->mRenew:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsUiCallback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurPart = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPartIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPartCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPartCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFileId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mStart = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mLast = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mLast:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mWoffset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mWoffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mElementList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mElementList:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
