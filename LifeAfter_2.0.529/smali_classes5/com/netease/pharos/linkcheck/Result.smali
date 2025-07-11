.class public Lcom/netease/pharos/linkcheck/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheckResult"

.field private static sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;


# instance fields
.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIpaddr:Ljava/lang/String;

.field private mLinktestId:Ljava/lang/String;

.field private mNapIcmpDest:Ljava/lang/String;

.field private mNapIcmpLost:I

.field private mNapIcmpRtt:D

.field private mNapIcmpStddev:D

.field private mRapIcmpDest:Ljava/lang/String;

.field private mRapIcmpLost:I

.field private mRapIcmpRtt:D

.field private mRapIcmpStddev:D

.field private mRapMtr:Ljava/lang/String;

.field private mRapQosExpire:Ljava/lang/String;

.field private mRapTransferDest:Ljava/lang/String;

.field private mRapTransferFail:D

.field private mRapTransferRtt:J

.field private mRapTransferSpeed:J

.field private mRapTransferStddev:D

.field private mRapUdpDest:Ljava/lang/String;

.field private mRapUdpLost:D

.field private mRapUdpRtt:J

.field private mRapUdpStddev:D

.field private mSapTransferDest:Ljava/lang/String;

.field private mSapTransferFail:D

.field private mSapTransferRtt:J

.field private mSapTransferSpeed:J

.field private mSapTransferStddev:D

.field private mSapUdpDest:Ljava/lang/String;

.field private mSapUdpLost:D

.field private mSapUdpRtt:J

.field private mSapUdpStddev:D

.field private mTestlog:I

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    const/4 v1, 0x1

    .line 55
    iput v1, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    .line 56
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    const-string v1, ""

    .line 58
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    const/4 v2, -0x1

    .line 59
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 60
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 61
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    .line 64
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    .line 65
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 66
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 67
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    .line 69
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    .line 70
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/16 v5, -0x1

    .line 71
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    const-wide/16 v7, 0x0

    .line 72
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 73
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    .line 75
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    .line 76
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 77
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 78
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    .line 80
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    .line 81
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 82
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 83
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 84
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    .line 86
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    .line 87
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 88
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 89
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    .line 92
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    const-string v0, "0"

    .line 95
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/Result;
    .locals 1

    .line 39
    sget-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/netease/pharos/linkcheck/Result;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/Result;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/Result;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/Result;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 7

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 490
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    const-string v1, ""

    .line 495
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    const/4 v2, -0x1

    .line 496
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 497
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 498
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    .line 500
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    .line 501
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 502
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 503
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    .line 505
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    .line 506
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/16 v5, -0x1

    .line 507
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    .line 508
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 509
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    .line 511
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    .line 512
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 513
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 514
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    .line 516
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    .line 517
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 518
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 519
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 520
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    .line 522
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    .line 523
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 524
    iput-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 525
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    .line 528
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    const-string v0, "0"

    .line 531
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-void
.end method

.method public getLinkCheckResultInfo()Ljava/lang/String;
    .locals 6

    .line 596
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "project"

    .line 598
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "2.8.0"

    .line 599
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 600
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netid"

    .line 601
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "linktest_id"

    .line 603
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getLinktestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network"

    .line 605
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkStatus;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_switch"

    .line 606
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/network/NetworkStatus;->isNetworkChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_isp_name"

    .line 607
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getNetworkIspName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "qos_effective"

    .line 608
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/qos/QosProxy;->getQosEffective()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 613
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v1, v3

    .line 619
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 625
    :cond_2
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmProbeRegion()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    const-string v4, "ipaddr"

    .line 632
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "region"

    .line 633
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "probe_region"

    .line 634
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "testlog"

    .line 636
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getTestlog()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cell_id"

    .line 637
    invoke-static {}, Lcom/netease/pharos/util/Util;->getCellId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ip_local"

    .line 638
    invoke-static {}, Lcom/netease/pharos/util/Util;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_ipv6"

    .line 639
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->isSupportIpV6()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ip_local_v6"

    .line 640
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpLocalAddrV6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ipaddr_v6"

    .line 641
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getIpaddrV6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "probe"

    .line 642
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v2, "android"

    .line 643
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "nap_icmp_dest"

    .line 646
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_lost"

    .line 647
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpLost()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_rtt"

    .line 648
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpRtt()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "nap_icmp_stddev"

    .line 649
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmNapIcmpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 652
    :cond_4
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rap_icmp_dest"

    .line 653
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_lost"

    .line 654
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpLost()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_rtt"

    .line 655
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpRtt()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_icmp_stddev"

    .line 656
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapIcmpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "rap_transfer_dest"

    .line 660
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_fail"

    .line 661
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferFail()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_rtt"

    .line 662
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_speed"

    .line 663
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferSpeed()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_transfer_stddev"

    .line 664
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapTransferStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 667
    :cond_6
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "rap_udp_dest"

    .line 668
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rap_udp_lost"

    .line 669
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpLost()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rap_udp_rtt"

    .line 670
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rap_udp_stddev"

    .line 671
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmRapUdpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 674
    :cond_7
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "sap_transfer_dest"

    .line 675
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_fail"

    .line 676
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferFail()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_rtt"

    .line 677
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_speed"

    .line 678
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferSpeed()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_transfer_stddev"

    .line 679
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapTransferStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 682
    :cond_8
    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "sap_udp_dest"

    .line 683
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sap_udp_lost"

    .line 684
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpLost()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "sap_udp_rtt"

    .line 685
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpRtt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "sap_udp_stddev"

    .line 686
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getmSapUdpStddev()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 689
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 691
    :goto_2
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 692
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_a

    const-string v3, ","

    .line 695
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 699
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "resolve_host"

    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v1, "rap_qos_expire"

    .line 704
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 709
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinktestId()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTestlog()I
    .locals 1

    .line 158
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getTestLog()I

    move-result v0

    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mTestlog:I

    return v0
.end method

.method public getmIpaddr()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpDest()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpLost()I
    .locals 7

    .line 172
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x64

    if-eq v1, v0, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 175
    iget-wide v5, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    .line 179
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    goto :goto_1

    .line 176
    :cond_2
    :goto_0
    iput v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    .line 182
    :cond_3
    :goto_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    return v0
.end method

.method public getmNapIcmpRtt()D
    .locals 5

    .line 190
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 191
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    .line 194
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    return-wide v0
.end method

.method public getmNapIcmpStddev()D
    .locals 2

    .line 437
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    return-wide v0
.end method

.method public getmRapIcmpDest()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapIcmpLost()I
    .locals 7

    .line 204
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    const/16 v1, 0x64

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    mul-int/lit8 v0, v0, 0x64

    .line 208
    iput v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    goto :goto_1

    .line 205
    :cond_1
    :goto_0
    iput v1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    .line 211
    :cond_2
    :goto_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    return v0
.end method

.method public getmRapIcmpRtt()D
    .locals 5

    .line 219
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 220
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    .line 222
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    return-wide v0
.end method

.method public getmRapIcmpStddev()D
    .locals 2

    .line 445
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    return-wide v0
.end method

.method public getmRapMtr()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapQosExpire()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferDest()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferFail()D
    .locals 9

    .line 231
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v8, v6, v0

    if-eqz v8, :cond_0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_1

    .line 232
    :cond_0
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    .line 234
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    mul-double v0, v0, v4

    .line 235
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    .line 238
    :cond_2
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    return-wide v0
.end method

.method public getmRapTransferRtt()J
    .locals 5

    .line 246
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 247
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    .line 249
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    return-wide v0
.end method

.method public getmRapTransferSpeed()J
    .locals 5

    .line 257
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 258
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    .line 260
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    return-wide v0
.end method

.method public getmRapTransferStddev()D
    .locals 2

    .line 453
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    return-wide v0
.end method

.method public getmRapUdpDest()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapUdpLost()D
    .locals 7

    .line 269
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    mul-double v0, v0, v2

    .line 273
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    goto :goto_1

    .line 270
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    .line 276
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    return-wide v0
.end method

.method public getmRapUdpRtt()J
    .locals 5

    .line 284
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 285
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    .line 287
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    return-wide v0
.end method

.method public getmRapUdpStddev()D
    .locals 2

    .line 461
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    return-wide v0
.end method

.method public getmResolveHost()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmSapTransferDest()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapTransferFail()D
    .locals 9

    .line 295
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v8, v6, v0

    if-eqz v8, :cond_0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_1

    .line 296
    :cond_0
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 298
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    mul-double v0, v0, v4

    .line 299
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    .line 302
    :cond_2
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    return-wide v0
.end method

.method public getmSapTransferRtt()J
    .locals 5

    .line 311
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 312
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    .line 315
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    return-wide v0
.end method

.method public getmSapTransferSpeed()J
    .locals 5

    .line 324
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 325
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    .line 328
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    return-wide v0
.end method

.method public getmSapTransferStddev()D
    .locals 2

    .line 469
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    return-wide v0
.end method

.method public getmSapUdpDest()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapUdpLost()D
    .locals 7

    .line 337
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    mul-double v0, v0, v2

    .line 341
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    goto :goto_1

    .line 338
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    .line 344
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    return-wide v0
.end method

.method public getmSapUdpRtt()J
    .locals 5

    .line 354
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v0, 0x3e8

    .line 355
    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    .line 357
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    return-wide v0
.end method

.method public getmSapUdpStddev()D
    .locals 2

    .line 477
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    return-wide v0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setmIpaddr(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    return-void
.end method

.method public setmLinktestId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mLinktestId:Ljava/lang/String;

    return-void
.end method

.method public setmNapIcmpDest(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    return-void
.end method

.method public setmNapIcmpLost(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    return-void
.end method

.method public setmNapIcmpRtt(D)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    return-void
.end method

.method public setmNapIcmpStddev(D)V
    .locals 0

    .line 441
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    return-void
.end method

.method public setmRapIcmpDest(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapIcmpLost(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    return-void
.end method

.method public setmRapIcmpRtt(D)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    return-void
.end method

.method public setmRapIcmpStddev(D)V
    .locals 0

    .line 449
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    return-void
.end method

.method public setmRapMtr(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    return-void
.end method

.method public setmRapQosExpire(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    return-void
.end method

.method public setmRapTransferDest(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapTransferFail(D)V
    .locals 0

    .line 242
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    return-void
.end method

.method public setmRapTransferRtt(J)V
    .locals 0

    .line 253
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    return-void
.end method

.method public setmRapTransferSpeed(J)V
    .locals 0

    .line 264
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    return-void
.end method

.method public setmRapTransferStddev(D)V
    .locals 0

    .line 457
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    return-void
.end method

.method public setmRapUdpDest(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    return-void
.end method

.method public setmRapUdpLost(D)V
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    return-void
.end method

.method public setmRapUdpRtt(J)V
    .locals 0

    .line 291
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    return-void
.end method

.method public setmRapUdpStddev(D)V
    .locals 0

    .line 465
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    return-void
.end method

.method public setmResolveHost(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmSapTransferDest(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    return-void
.end method

.method public setmSapTransferFail(D)V
    .locals 0

    .line 306
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    return-void
.end method

.method public setmSapTransferRtt(J)V
    .locals 0

    .line 319
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    return-void
.end method

.method public setmSapTransferSpeed(J)V
    .locals 0

    .line 332
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    return-void
.end method

.method public setmSapTransferStddev(D)V
    .locals 0

    .line 473
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    return-void
.end method

.method public setmSapUdpDest(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    return-void
.end method

.method public setmSapUdpLost(D)V
    .locals 0

    .line 349
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    return-void
.end method

.method public setmSapUdpRtt(J)V
    .locals 0

    .line 362
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    return-void
.end method

.method public setmSapUdpStddev(D)V
    .locals 0

    .line 481
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 537
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mProject="

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mUdid="

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNetid="

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLinktestId="

    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getLinktestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIpaddr="

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mTestlog="

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Result;->getTestlog()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mType="

    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpDest="

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpLost="

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpLost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpRtt="

    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpRtt:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNapIcmpStddev="

    .line 553
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mNapIcmpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpDest="

    .line 556
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpLost="

    .line 557
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpLost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpRtt="

    .line 558
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpRtt:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapIcmpStddev="

    .line 559
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapIcmpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferDest="

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferFail="

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferFail:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferRtt="

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferSpeed="

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapTransferStddev="

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapTransferStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpDest="

    .line 569
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpLost="

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpLost:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpRtt="

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapUdpStddev="

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapUdpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferDest="

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferFail="

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferFail:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferRtt="

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferSpeed="

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapTransferStddev="

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapTransferStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpDest="

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpLost="

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpLost:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpRtt="

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpRtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSapUdpStddev="

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/Result;->mSapUdpStddev:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIpList="

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapMtr="

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapMtr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRapQosExpire="

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Result;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
