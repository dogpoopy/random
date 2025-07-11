.class public Lcom/netease/pharos/linkcheck/ScanProxy;
.super Ljava/lang/Object;
.source "ScanProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanProxy"

.field private static sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;


# instance fields
.field private final mCheckCycleTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private volatile mCheckTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private final mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckCycleTypeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 50
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 65
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/ScanProxy$1;-><init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 111
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/ScanProxy$2;-><init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckCycleTypeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;
    .locals 1

    .line 42
    sget-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/ScanProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    .line 45
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    return-object v0
.end method


# virtual methods
.method public createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;
    .locals 7

    .line 301
    new-instance v6, Lcom/netease/pharos/linkcheck/ScanCore;

    invoke-direct {v6}, Lcom/netease/pharos/linkcheck/ScanCore;-><init>()V

    .line 302
    invoke-static {}, Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;->getInstance()Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/netease/pharos/linkcheck/ScanCore;->setProtocolProxyProxy(Lcom/netease/pharos/protocolCheck/ProtocolCheckProxy;)V

    .line 303
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v4, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/linkcheck/ScanCore;->init(Ljava/lang/String;Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    return-object v6
.end method

.method public getmCycleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 62
    iput-object p2, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    return-void
.end method

.method public setmCycleList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "ScanProxy"

    const-string v1, "ScanProxy [start] start"

    .line 280
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6a21\u62df\u7684\u6570\u636e= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "result is null"

    :goto_0
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "nap_icmp"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "rap_icmp"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "rap_udp"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "rap_transfer"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "sap_udp"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "sap_transfer"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getInstance()Lcom/netease/pharos/threadManager/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/threadManager/ThreadPoolManager;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "resolve"

    invoke-virtual {p0, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
