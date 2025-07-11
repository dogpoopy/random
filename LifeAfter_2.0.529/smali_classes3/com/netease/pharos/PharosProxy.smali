.class public Lcom/netease/pharos/PharosProxy;
.super Ljava/lang/Object;
.source "PharosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PharosProxy"

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static sPharosProxy:Lcom/netease/pharos/PharosProxy;


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private mArea:I

.field public mCallbackPolicy:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDecision:I

.field private mEB:Z

.field private mHarborudp:Ljava/lang/String;

.field private mHasSet:Z

.field private mHasSetTestHost:Z

.field private mHighSpeedUrl:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIpv6Verify:Ljava/lang/String;

.field private mIsDebug:Z

.field private mIsInit:Z

.field private mIsRegistered:Z

.field private mLagID:Ljava/lang/String;

.field private mNetId:Ljava/lang/String;

.field private mNetworkAware:Z

.field private mOnNetLagCallback:Lcom/netease/pharos/OnNetLagCallback;

.field private mOption:I

.field private mPharosListener:Lcom/netease/pharos/PharosListener;

.field private mPort:Ljava/lang/String;

.field private mPorts:Lorg/json/JSONArray;

.field private mProjectId:Ljava/lang/String;

.field private mQosExecDuration:I

.field private mQosExecIp:Ljava/lang/String;

.field private mQosIp:Ljava/lang/String;

.field private mQosIps:Lorg/json/JSONArray;

.field private mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

.field private mRunTime:J

.field private mTaskExecutor:Ljava/lang/Thread;

.field private mTasks:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTestLog:I

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 530
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/pharos/PharosProxy;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    .line 59
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    .line 60
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    .line 63
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 64
    iput v2, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    .line 65
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    const-string v3, "false"

    .line 66
    iput-object v3, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/netease/pharos/PharosProxy;->mIpv6Verify:Ljava/lang/String;

    .line 68
    iput-object v3, p0, Lcom/netease/pharos/PharosProxy;->mCallbackPolicy:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    .line 71
    iput-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 72
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mNetworkAware:Z

    const/4 v2, -0x1

    .line 73
    iput v2, p0, Lcom/netease/pharos/PharosProxy;->mArea:I

    .line 74
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    .line 75
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    .line 76
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mTestLog:I

    const-string v2, ""

    .line 77
    iput-object v2, p0, Lcom/netease/pharos/PharosProxy;->mLagID:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosExecIp:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mQosExecDuration:I

    .line 83
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    .line 84
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    .line 85
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lcom/netease/pharos/PharosProxy;->mRunTime:J

    .line 189
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/PharosProxy;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netease/pharos/PharosProxy;->startAllTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/netease/pharos/PharosProxy;->wrapTask(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/PharosProxy;)Lorg/json/JSONArray;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mQosIps:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/pharos/PharosProxy;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/pharos/PharosProxy;
    .locals 2

    .line 372
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    if-nez v0, :cond_1

    .line 373
    const-class v0, Lcom/netease/pharos/PharosProxy;

    monitor-enter v0

    .line 374
    :try_start_0
    sget-object v1, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Lcom/netease/pharos/PharosProxy;

    invoke-direct {v1}, Lcom/netease/pharos/PharosProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    .line 377
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 379
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    return-object v0
.end method

.method private parseConfig(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "options"

    .line 632
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/netease/pharos/PharosProxy;->setmOption(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "decision"

    .line 638
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 639
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 640
    invoke-virtual {p0, v1}, Lcom/netease/pharos/PharosProxy;->setmDecision(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "ip"

    .line 644
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 645
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-virtual {p0, v3}, Lcom/netease/pharos/PharosProxy;->setmIp(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v3, v6

    :goto_2
    const-string v5, "port"

    .line 650
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_3

    .line 652
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 655
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v6

    .line 658
    :goto_3
    invoke-virtual {p0, v5}, Lcom/netease/pharos/PharosProxy;->setmPort(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object v5, v6

    :goto_4
    const-string v7, "ports"

    .line 662
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 663
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v9, 0x0

    .line 666
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 668
    :try_start_1
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 670
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_5

    move-object v2, v7

    goto :goto_6

    :cond_5
    move-object v2, v6

    .line 675
    :goto_6
    invoke-virtual {p0, v2}, Lcom/netease/pharos/PharosProxy;->setmPorts(Lorg/json/JSONArray;)V

    goto :goto_7

    :cond_6
    move-object v7, v6

    :cond_7
    :goto_7
    const-string v2, "url"

    .line 680
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 681
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {p0, v2}, Lcom/netease/pharos/PharosProxy;->setmHighSpeedUrl(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    move-object v2, v6

    :goto_8
    const-string v9, "qos_ip"

    .line 686
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 687
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-virtual {p0, v6}, Lcom/netease/pharos/PharosProxy;->setmQosIp(Ljava/lang/String;)V

    :cond_9
    const-string v9, "testlog"

    .line 692
    invoke-virtual {p1, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/netease/pharos/PharosProxy;->mTestLog:I

    const-string v4, "harborudp"

    .line 693
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 694
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    .line 695
    invoke-virtual {p0, v4}, Lcom/netease/pharos/PharosProxy;->setmHarborudp(Ljava/lang/String;)V

    :cond_a
    const-string v4, "lag_id"

    .line 698
    invoke-virtual {p1, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/pharos/PharosProxy;->mLagID:Ljava/lang/String;

    const-string v4, "logopen"

    .line 699
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "PharosProxy"

    if-eqz v8, :cond_b

    .line 700
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 701
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PharosProxy [pharosFunc] param logOpen ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "true"

    .line 704
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    :cond_b
    const-string v4, "ipv6_verify"

    const-string v8, "false"

    .line 707
    invoke-virtual {p1, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/pharos/PharosProxy;->mIpv6Verify:Ljava/lang/String;

    const-string v4, "callback_policy"

    .line 709
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 710
    invoke-virtual {p1, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-virtual {p0, v4}, Lcom/netease/pharos/PharosProxy;->setCallbackPolicy(Ljava/lang/String;)V

    :cond_c
    const/4 v4, -0x1

    const-string v8, "area"

    .line 713
    invoke-virtual {p1, v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/netease/pharos/PharosProxy;->mArea:I

    const/16 v4, 0x708

    .line 715
    :try_start_2
    sget-object v8, Lcom/netease/pharos/Const;->CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v10, "cache_expire"

    invoke-virtual {p1, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 716
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cache_expire:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/netease/pharos/Const;->CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 718
    :catch_2
    sget-object v8, Lcom/netease/pharos/Const;->CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 720
    :goto_9
    invoke-direct {p0, p1}, Lcom/netease/pharos/PharosProxy;->startRegisterReceiver(Lorg/json/JSONObject;)V

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PharosProxy [pharosFunc] ip ="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", port="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ports="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", url="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", qosIp="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", options="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", decision="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", area="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mArea:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startAllTask()V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/netease/pharos/PharosProxy;->startPolicyTask()V

    .line 443
    invoke-direct {p0}, Lcom/netease/pharos/PharosProxy;->startHarborTask()V

    return-void
.end method

.method private startHarborTask()V
    .locals 2

    const-string v0, "PharosProxy"

    const-string v1, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    .line 490
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    .line 492
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->start()V

    return-void
.end method

.method private startPolicyTask()V
    .locals 6

    .line 449
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->isHasRun()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PharosProxy"

    if-nez v0, :cond_0

    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b"

    .line 450
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->init(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->start()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 455
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u8bbe\u5907\u63a2\u6d4b\uff0c\u7ed3\u679c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->isHasRun()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56"

    .line 459
    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->start()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 463
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u7ed3\u679c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u76d1\u63a7----\u533a\u57df\u51b3\u7b56\uff0c\u8fd4\u56de\u7801="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    .line 468
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/pharos/linkcheck/Proxy;->setmPharosResultCache(Lorg/json/JSONObject;)V

    .line 471
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isCallbackPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 474
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/Proxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 477
    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 478
    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosListener;->onPharosPolicy(Lorg/json/JSONObject;)V

    :cond_3
    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b"

    .line 482
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->start()V

    const-string v0, "\u7f51\u7edc\u76d1\u63a7----\u94fe\u8def\u63a2\u6d4b\uff0c\u7ed3\u675f"

    .line 484
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private startRegisterReceiver(Lorg/json/JSONObject;)V
    .locals 4

    .line 734
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/netease/pharos/PharosProxy$13;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/PharosProxy$13;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private wrapTask(Lorg/json/JSONObject;)Ljava/lang/Runnable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosFunc] paramJson ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PharosProxy"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "methodId"

    .line 552
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 554
    invoke-direct {p0, p1}, Lcom/netease/pharos/PharosProxy;->parseConfig(Lorg/json/JSONObject;)V

    const-string v2, "pharosprobe"

    .line 555
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "pharos_probe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "pharospolicy"

    .line 562
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "pharos_policy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v2, "pharosharbor"

    .line 569
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "pharos_harbor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    const-string v2, "pharosqosprobe"

    .line 576
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "pharos_qos_probe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "pharosqosstatus"

    .line 583
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "pharos_qos_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "pharosqosexec"

    .line 591
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "pharos_qos_exec"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "pharosqoscancel"

    .line 600
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "pharos_qos_cancel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "pharos_login_info_upload"

    .line 608
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 609
    new-instance v0, Lcom/netease/pharos/PharosProxy$12;

    invoke-direct {v0, p0, p1}, Lcom/netease/pharos/PharosProxy$12;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    :cond_7
    return-object v0

    .line 601
    :cond_8
    :goto_0
    new-instance v0, Lcom/netease/pharos/PharosProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/netease/pharos/PharosProxy$11;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    return-object v0

    .line 592
    :cond_9
    :goto_1
    new-instance v0, Lcom/netease/pharos/PharosProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/netease/pharos/PharosProxy$10;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    return-object v0

    .line 584
    :cond_a
    :goto_2
    new-instance v0, Lcom/netease/pharos/PharosProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/netease/pharos/PharosProxy$9;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    return-object v0

    .line 577
    :cond_b
    :goto_3
    new-instance p1, Lcom/netease/pharos/PharosProxy$8;

    invoke-direct {p1, p0}, Lcom/netease/pharos/PharosProxy$8;-><init>(Lcom/netease/pharos/PharosProxy;)V

    return-object p1

    .line 570
    :cond_c
    :goto_4
    new-instance p1, Lcom/netease/pharos/PharosProxy$7;

    invoke-direct {p1, p0}, Lcom/netease/pharos/PharosProxy$7;-><init>(Lcom/netease/pharos/PharosProxy;)V

    return-object p1

    .line 563
    :cond_d
    :goto_5
    new-instance p1, Lcom/netease/pharos/PharosProxy$6;

    invoke-direct {p1, p0}, Lcom/netease/pharos/PharosProxy$6;-><init>(Lcom/netease/pharos/PharosProxy;)V

    return-object p1

    .line 556
    :cond_e
    :goto_6
    new-instance p1, Lcom/netease/pharos/PharosProxy$5;

    invoke-direct {p1, p0}, Lcom/netease/pharos/PharosProxy$5;-><init>(Lcom/netease/pharos/PharosProxy;)V

    return-object p1

    :cond_f
    return-object v0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    monitor-enter p0

    .line 953
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->getInstances()Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->clean()V

    .line 954
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->clean()V

    .line 955
    invoke-static {}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->getInstances()Lcom/netease/pharos/locationCheck/LocationCheckProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/LocationCheckProxy;->clean()V

    .line 956
    invoke-static {}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->getInstance()Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->clean()V

    .line 957
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->clean()V

    const-wide/16 v0, 0x0

    .line 958
    iput-wide v0, p0, Lcom/netease/pharos/PharosProxy;->mRunTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 435
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public executeAll()V
    .locals 1

    .line 424
    new-instance v0, Lcom/netease/pharos/PharosProxy$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/PharosProxy$2;-><init>(Lcom/netease/pharos/PharosProxy;)V

    invoke-virtual {p0, v0}, Lcom/netease/pharos/PharosProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNetworkAware()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mNetworkAware:Z

    return v0
.end method

.method public getOnNetLagCallback()Lcom/netease/pharos/OnNetLagCallback;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mOnNetLagCallback:Lcom/netease/pharos/OnNetLagCallback;

    return-object v0
.end method

.method public getPharosListener()Lcom/netease/pharos/PharosListener;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTestLog()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mTestLog:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getmDecision()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    return v0
.end method

.method public getmHighSpeedUrl()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmLinktestId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Result;->getLinktestId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getmNetId()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    return-object v0
.end method

.method public getmOption()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    return v0
.end method

.method public getmPort()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getmPorts()Lorg/json/JSONArray;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getmQosIp()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PharosProxy [init] start mIsInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDebug="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mProjectId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", projectId ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PharosProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iput-boolean v4, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    .line 388
    :cond_0
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    if-nez v0, :cond_4

    .line 389
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->init(Landroid/content/Context;)V

    .line 390
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 391
    iput-object p2, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 392
    invoke-static {}, Lcom/netease/pharos/util/Util;->getUnisdkDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 395
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    if-nez v0, :cond_1

    .line 396
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pharos useTestMode = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v0

    iget-boolean v5, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {v0, v4}, Lcom/netease/pharos/ServerProxy;->setTestMode(Z)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pharos isDebug = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    .line 406
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object v0

    const/16 v4, 0x2800

    invoke-virtual {v0, p1, v4}, Lcom/netease/pharos/util/LogFileProxy;->init(Landroid/content/Context;I)V

    .line 408
    iput-boolean v6, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    .line 410
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PharosProxy [init] projectId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mIsInit="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mIsInit:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isCallbackPolicy()Z
    .locals 1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mCallbackPolicy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    return v0
.end method

.method public isHasSet()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    return v0
.end method

.method public isHasSetTestHost()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    return v0
.end method

.method public isIpv6Verify()Z
    .locals 1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIpv6Verify:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOversea()Z
    .locals 2

    .line 353
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mArea:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->ismEB()Z

    move-result v0

    return v0
.end method

.method public ismEB()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    return v0
.end method

.method public ismHarborudp()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-object v0
.end method

.method public onDestory()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->clean()V

    .line 185
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->unregisterReceiver()V

    return-void
.end method

.method public pharosCancelNetLag()V
    .locals 2

    .line 966
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mOnNetLagCallback:Lcom/netease/pharos/OnNetLagCallback;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->cancel(Lcom/netease/pharos/OnNetLagCallback;)V

    return-void
.end method

.method public declared-synchronized pharosFunc(Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PharosProxy"

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosFunc] paramJson ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "methodId"

    .line 500
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pharosnetlag"

    .line 501
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    new-instance v0, Lcom/netease/pharos/PharosProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/pharos/PharosProxy$3;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/netease/pharos/PharosProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v1, "pharosnetlagcancel"

    .line 508
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->pharosCancelNetLag()V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lcom/netease/pharos/PharosProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/PharosProxy$4;-><init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 524
    iget-object p1, p0, Lcom/netease/pharos/PharosProxy;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pharosLoginInfoUpload(Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "version"

    const-string v2, "method"

    const-string v3, "netid"

    const-string v4, "udid"

    const-string v5, "os_name"

    const-string v6, "project"

    const-string v7, "PharosProxy"

    const-string v8, "PharosProxy [pharosLoginInfoUpload]"

    .line 879
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    const-string v8, "PharosProxy [pharosLoginInfoUpload] params error"

    .line 882
    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v8

    .line 889
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "PharosProxy [pharosLoginInfoUpload] deviceInfo1 error"

    .line 890
    invoke-static {v7, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 894
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PharosProxy [pharosLoginInfoUpload] deviceInfoJson="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-eqz v8, :cond_3

    .line 902
    :try_start_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v10

    .line 906
    :goto_0
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 907
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_4
    move-object v11, v10

    .line 911
    :goto_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 912
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    move-object v12, v10

    .line 916
    :goto_2
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 917
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_6
    move-object v13, v10

    .line 921
    :goto_3
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 922
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_7
    move-object v14, v10

    .line 926
    :goto_4
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 927
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_8
    const-string v9, "login"

    const-string v15, "methodId"

    .line 932
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 933
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 935
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 936
    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 939
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosLoginInfoUpload] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public pharosNetLag(Lorg/json/JSONObject;)V
    .locals 2

    .line 962
    invoke-static {}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->getInstance()Lcom/netease/pharos/netlag/NetworkCheckProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mOnNetLagCallback:Lcom/netease/pharos/OnNetLagCallback;

    invoke-virtual {v0, p1, v1}, Lcom/netease/pharos/netlag/NetworkCheckProxy;->start(Lorg/json/JSONObject;Lcom/netease/pharos/OnNetLagCallback;)V

    return-void
.end method

.method public pharosharbor()V
    .locals 1

    .line 776
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->init()V

    .line 777
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->start()V

    return-void
.end method

.method public pharospolicy()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    const-string v1, "PharosProxy"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isCallbackPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->getPharosResultInfo()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "PharosProxy [pharosharbor] call onPharosPolicy "

    .line 768
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onPharosPolicy(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "PharosProxy [pharosharbor] mPharosListener is null "

    .line 763
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pharosqoscancel(Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 808
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/qos/Qos4GProxy;->cancel(Lorg/json/JSONArray;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "PharosProxy"

    const-string v0, "PharosProxy [pharosqoscancel] \u53c2\u6570\u9519\u8bef"

    .line 809
    invoke-static {p1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pharosqosexec(Lorg/json/JSONArray;J)V
    .locals 4

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosexec]"

    .line 792
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 794
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ltz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosqosexec] ips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duratio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/pharos/qos/Qos4GProxy;->pharosqosexec(Lorg/json/JSONArray;J)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "PharosProxy [pharosqosexec] \u53c2\u6570\u9519\u8bef"

    .line 795
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pharosqosprobe()V
    .locals 1

    .line 784
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->start()V

    return-void
.end method

.method public pharosqosstatus()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    if-nez v0, :cond_0

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosstatus] mPharosListener is null"

    .line 859
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 863
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/qos/Qos4GProxy;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 866
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    return-void
.end method

.method public pharosqosstatus(Lorg/json/JSONArray;)V
    .locals 3

    const-string v0, "PharosProxy"

    const-string v1, "PharosProxy [pharosqosstatus]"

    .line 828
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 830
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [pharosqosstatus] ips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    if-nez v1, :cond_1

    const-string p1, "PharosProxy [pharosqosstatus] mPharosListener is null"

    .line 838
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 842
    :cond_1
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pharos/qos/Qos4GProxy;->getResult(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 845
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "PharosProxy [pharosqosstatus] \u53c2\u6570\u9519\u8bef"

    .line 831
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 4

    const-string v0, "PharosProxy"

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668 start"

    .line 113
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    if-nez v1, :cond_1

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 115
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668\u5931\u8d25"

    .line 117
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    new-instance v1, Lcom/netease/pharos/network/ConnectionChangeReceiver;

    invoke-direct {v1}, Lcom/netease/pharos/network/ConnectionChangeReceiver;-><init>()V

    iput-object v1, p0, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    .line 121
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    :try_start_0
    const-string v1, "connectivity"

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    .line 129
    new-instance v1, Lcom/netease/pharos/PharosProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/PharosProxy$1;-><init>(Lcom/netease/pharos/PharosProxy;)V

    .line 162
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PharosProxy [registerReceiver] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u7ecf\u6ce8\u518c\u8fc7\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668\uff0c\u65e0\u9700\u91cd\u590d\u6ce8\u518c"

    .line 170
    invoke-static {v0, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 5

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/pharos/PharosProxy;->mRunTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lcom/netease/pharos/Const;->CACHE_EXPIRE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->clean()V

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/pharos/PharosProxy;->mRunTime:J

    .line 540
    :cond_1
    sget-object v0, Lcom/netease/pharos/PharosProxy;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallbackPolicy(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mCallbackPolicy:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    return-void
.end method

.method public setHasSet(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    return-void
.end method

.method public setIpv6Verify(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mIpv6Verify:Ljava/lang/String;

    return-void
.end method

.method public setNetworkAware(Z)V
    .locals 1

    .line 344
    invoke-static {}, Lcom/netease/pharos/network/NetworkStatus;->getInstance()Lcom/netease/pharos/network/NetworkStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/network/NetworkStatus;->clean()V

    .line 345
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mNetworkAware:Z

    return-void
.end method

.method public setOnNetLagCallback(Lcom/netease/pharos/OnNetLagCallback;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mOnNetLagCallback:Lcom/netease/pharos/OnNetLagCallback;

    return-void
.end method

.method public setPharosListener(Lcom/netease/pharos/PharosListener;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    return-void
.end method

.method public setTestHost(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mHasSetTestHost:Z

    return-void
.end method

.method public setmDecision(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    return-void
.end method

.method public setmEB(Z)V
    .locals 0

    .line 339
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    return-void
.end method

.method public setmHarborudp(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHarborudp:Ljava/lang/String;

    return-void
.end method

.method public setmHasSet(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lcom/netease/pharos/PharosProxy;->setHasSet(Z)V

    return-void
.end method

.method public setmHighSpeedUrl(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setmOption(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    return-void
.end method

.method public setmPharosListener(Lcom/netease/pharos/PharosListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/netease/pharos/PharosProxy;->setPharosListener(Lcom/netease/pharos/PharosListener;)V

    return-void
.end method

.method public setmPort(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    return-void
.end method

.method public setmPorts(Lorg/json/JSONArray;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    return-void
.end method

.method public setmQosIp(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mQosIp:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/netease/pharos/PharosProxy;->executeAll()V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    const-string v0, "PharosProxy"

    const-string v1, "\u6ce8\u9500\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    .line 175
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsRegistered:Z

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mReceiver:Lcom/netease/pharos/network/ConnectionChangeReceiver;

    :cond_0
    return-void
.end method
