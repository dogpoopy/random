.class public Lcom/netease/pharos/linkcheck/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheckProxy"

.field public static sLinkCheckProxy:Lcom/netease/pharos/linkcheck/Proxy;


# instance fields
.field private isCycle:Z

.field private isStarting:Z

.field private final mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private volatile mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private volatile mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPharosResultCache:Lorg/json/JSONObject;

.field private final mStopList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isCycle:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mStopList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mPharosResultCache:Lorg/json/JSONObject;

    .line 87
    new-instance v0, Lcom/netease/pharos/linkcheck/Proxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/Proxy$1;-><init>(Lcom/netease/pharos/linkcheck/Proxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 111
    new-instance v0, Lcom/netease/pharos/linkcheck/Proxy$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/Proxy$2;-><init>(Lcom/netease/pharos/linkcheck/Proxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mStopList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/pharos/linkcheck/Proxy;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/netease/pharos/linkcheck/Proxy;->isCycle:Z

    return p1
.end method

.method static synthetic access$302(Lcom/netease/pharos/linkcheck/Proxy;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/pharos/linkcheck/Proxy;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/pharos/linkcheck/Proxy;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/pharos/linkcheck/Proxy;)Lcom/netease/pharos/linkcheck/ConfigInfoListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/Proxy;
    .locals 1

    .line 135
    sget-object v0, Lcom/netease/pharos/linkcheck/Proxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/Proxy;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/netease/pharos/linkcheck/Proxy;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/Proxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/Proxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/Proxy;

    .line 139
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/Proxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/Proxy;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    .line 333
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isCycle:Z

    return-void
.end method

.method public cleanOnceList()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public downloadRegionConfig()I
    .locals 5

    const-string v0, "LinkCheckProxy"

    const-string v1, "LinkCheckProxy [downloadRegionConfig] \u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    .line 143
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmProbeRegion()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xb

    return v0

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheckProxy [downloadRegionConfig] probeRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/ServerProxy;->getRegionConfigUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getmProbeConfig()Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkCheckProxy [downloadRegionConfig] probeConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "%x"

    .line 162
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheckProxy [downloadRegionConfig] url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Pharos] Probe Refresh url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/netease/pharos/linkcheck/RegionConfigCore;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/RegionConfigCore;-><init>()V

    .line 170
    invoke-virtual {v0, v1}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->init(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start()I

    move-result v0

    return v0
.end method

.method public getCallBackInfo()Lorg/json/JSONObject;
    .locals 3

    .line 317
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/Proxy;->getmPharosResultCache()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkCheckProxy [getCallBackInfo] options="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmOption()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkCheckProxy"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->getmOption()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    const-string v1, "probe"

    .line 323
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPharosResultInfo()Lorg/json/JSONObject;
    .locals 7

    .line 284
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 285
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/Result;->getLinktestId()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstance()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {}, Lcom/netease/pharos/linkcheck/Result;->getInstance()Lcom/netease/pharos/linkcheck/Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/Result;->getLinkCheckResultInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 293
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 297
    :goto_0
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v4

    .line 302
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LinkCheckProxy [getPharosResultInfo] getCallBackInfo Exception="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LinkCheckProxy"

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    :try_start_2
    const-string v2, "linktest_id"

    .line 306
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "policy"

    .line 307
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "probe"

    .line 308
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 310
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public getmCycleList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getmOnceList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getmPharosResultCache()Lorg/json/JSONObject;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mPharosResultCache:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setmCycleList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setmOnceList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setmPharosResultCache(Lorg/json/JSONObject;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/Proxy;->mPharosResultCache:Lorg/json/JSONObject;

    return-void
.end method

.method public start()V
    .locals 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkCheckProxy [start] isStarting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/pharos/linkcheck/Proxy;->isCycle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkCheckProxy"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    const-string v2, "LinkCheckProxy [start] qosResult is null"

    if-eqz v0, :cond_3

    const-string v0, "LinkCheckProxy [start] \u4efb\u52a1\u5df2\u7ecf\u8fdb\u884c\u4e2d"

    .line 180
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lcom/netease/pharos/linkcheck/Proxy;->getInstance()Lcom/netease/pharos/linkcheck/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/Proxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "LinkCheckProxy [start] call onResult"

    .line 188
    invoke-static {v1, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    const-string v4, "LinkCheckProxy [start] call onPharosPolicy"

    .line 191
    invoke-static {v1, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onPharosPolicy(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v3, "LinkCheckProxy [start] callBackInfo is null"

    .line 194
    invoke-static {v1, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 201
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 204
    :cond_1
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 211
    :cond_3
    iget-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isCycle:Z

    if-eqz v0, :cond_6

    const-string v0, "LinkCheckProxy [start] \u4efb\u52a1\u5b58\u5728\u5faa\u73af\u673a\u5236\uff0c\u4e0d\u80fd\u518d\u6b21\u542f\u52a8"

    .line 212
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 226
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 229
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 230
    invoke-virtual {v0, v3}, Lcom/netease/pharos/PharosListener;->onPharosQos(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 233
    :cond_4
    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->mOnceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 243
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_7

    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/linkcheck/Proxy$3;

    invoke-direct {v1, p0}, Lcom/netease/pharos/linkcheck/Proxy$3;-><init>(Lcom/netease/pharos/linkcheck/Proxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    const-string v0, "LinkCheckProxy [start] \u53d1\u8d77\u4e00\u6b21\u63a2\u6d4b\u5468\u671f"

    .line 268
    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/Proxy;->downloadRegionConfig()I

    move-result v0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkCheckProxy [start] \u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    .line 274
    invoke-static {}, Lcom/netease/pharos/linkcheck/ScanProxy;->getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/Proxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/Proxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/linkcheck/ScanProxy;->init(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;)V

    .line 275
    invoke-static {}, Lcom/netease/pharos/linkcheck/ScanProxy;->getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/ScanProxy;->start()V

    :cond_8
    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/Proxy;->isStarting:Z

    :goto_3
    return-void
.end method
