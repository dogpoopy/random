.class public Lcom/CCMsgSdk/CCMsgController;
.super Ljava/lang/Object;
.source "CCMsgController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/CCMsgSdk/CCMsgController$LooperThread;,
        Lcom/CCMsgSdk/CCMsgController$ControlJob;
    }
.end annotation


# static fields
.field private static final EVENT_RECONNECT:I = 0x8

.field private static final EVENT_REGIST:I = 0x5

.field private static final EVENT_SUB:I = 0x6

.field private static final EVENT_UNSUB:I = 0x7

.field private static final EVENT_WEB_SOCKET_CONNECTED:I = 0x1

.field private static final EVENT_WEB_SOCKET_DISCONNECTED:I = 0x2

.field private static final EVENT_WEB_SOCKET_ERROR:I = 0x3

.field private static final EVENT_WEB_SOCKET_RECV_MSG:I = 0x4

.field private static final MAX_CACHE_COUNT:I = 0x64

.field private static final MAX_REJOIN_TIMES:I = 0x5

.field private static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private mAddressManager:Lcom/CCMsgSdk/AddressManager;

.field private mCacheMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/JavaWebsocket/client/WebSocketClient;

.field private mConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeartBeatHandler:Landroid/os/Handler;

.field private mHeartBeatRunnable:Ljava/lang/Runnable;

.field private mNeedRejoin:Z

.field private mRegistInfo:Lcom/CCMsgSdk/RegistInfo;

.field private mRejoinHandler:Landroid/os/Handler;

.field private mRejoinRunnable:Ljava/lang/Runnable;

.field private mRejoinTimes:I

.field private mStockJobsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/CCMsgSdk/CCMsgController$ControlJob;",
            ">;"
        }
    .end annotation
.end field

.field private mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

.field private mThread:Lcom/CCMsgSdk/CCMsgController$LooperThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/CCMsgSdk/RegistInfo;

    invoke-direct {v0}, Lcom/CCMsgSdk/RegistInfo;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mRegistInfo:Lcom/CCMsgSdk/RegistInfo;

    .line 49
    new-instance v0, Lcom/CCMsgSdk/SubscribeInfo;

    invoke-direct {v0}, Lcom/CCMsgSdk/SubscribeInfo;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    .line 63
    new-instance v0, Lcom/CCMsgSdk/AddressManager;

    invoke-direct {v0}, Lcom/CCMsgSdk/AddressManager;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mAddressManager:Lcom/CCMsgSdk/AddressManager;

    .line 64
    new-instance v1, Lcom/CCMsgSdk/CCMsgController$1;

    invoke-direct {v1, p0}, Lcom/CCMsgSdk/CCMsgController$1;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    invoke-virtual {v0, v1}, Lcom/CCMsgSdk/AddressManager;->setAddressListener(Lcom/CCMsgSdk/AddressManager$AddressListener;)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/CCMsgSdk/CCMsgController;->mConnected:Z

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/CCMsgSdk/CCMsgController;->mNeedRejoin:Z

    .line 85
    iput v0, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mStockJobsList:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/CCMsgSdk/CCMsgController$LooperThread;

    invoke-direct {v0, p0}, Lcom/CCMsgSdk/CCMsgController$LooperThread;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mThread:Lcom/CCMsgSdk/CCMsgController$LooperThread;

    .line 90
    invoke-virtual {v0}, Lcom/CCMsgSdk/CCMsgController$LooperThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/CCMsgSdk/CCMsgController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/CCMsgSdk/CCMsgController;->mConnected:Z

    return p0
.end method

.method static synthetic access$002(Lcom/CCMsgSdk/CCMsgController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/CCMsgSdk/CCMsgController;->mConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/RegistInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/CCMsgSdk/CCMsgController;->mRegistInfo:Lcom/CCMsgSdk/RegistInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->handleServerMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/CCMsgSdk/CCMsgController;->sendData(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/AddressManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/CCMsgSdk/CCMsgController;->mAddressManager:Lcom/CCMsgSdk/AddressManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/CCMsgSdk/CCMsgController;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->createWebSocketClient()V

    return-void
.end method

.method static synthetic access$1400(Lcom/CCMsgSdk/CCMsgController;)Lcom/CCMsgSdk/SubscribeInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->sendWebSocketMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/CCMsgSdk/CCMsgController;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->createHandler()V

    return-void
.end method

.method static synthetic access$1700(Lcom/CCMsgSdk/CCMsgController;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->handleStockedControlJobs()V

    return-void
.end method

.method static synthetic access$200(Lcom/CCMsgSdk/CCMsgController;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/CCMsgSdk/CCMsgController;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    return p1
.end method

.method static synthetic access$500(Lcom/CCMsgSdk/CCMsgController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/CCMsgSdk/CCMsgController;->mNeedRejoin:Z

    return p0
.end method

.method static synthetic access$502(Lcom/CCMsgSdk/CCMsgController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/CCMsgSdk/CCMsgController;->mNeedRejoin:Z

    return p1
.end method

.method static synthetic access$600(Lcom/CCMsgSdk/CCMsgController;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->startHearBeat(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/CCMsgSdk/CCMsgController;->pushErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/CCMsgSdk/CCMsgController;Lcom/JavaWebsocket/client/WebSocketClient;)Lcom/JavaWebsocket/client/WebSocketClient;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    return-object p1
.end method

.method static synthetic access$900(Lcom/CCMsgSdk/CCMsgController;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->reconnectInRandomInterval(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addCacheMessage(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 291
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private closeConnection()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/JavaWebsocket/client/WebSocketClient;->close()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    :cond_0
    return-void
.end method

.method private createHandler()V
    .locals 1

    .line 182
    new-instance v0, Lcom/CCMsgSdk/CCMsgController$2;

    invoke-direct {v0, p0}, Lcom/CCMsgSdk/CCMsgController$2;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    iput-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createWebSocketClient()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mAddressManager:Lcom/CCMsgSdk/AddressManager;

    invoke-virtual {v0}, Lcom/CCMsgSdk/AddressManager;->getWebSocketAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ws://%s/websocket"

    .line 338
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "connect to %s"

    .line 339
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CCMsgSdk]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    if-eqz v1, :cond_0

    return-void

    .line 343
    :cond_0
    :try_start_0
    new-instance v1, Lcom/CCMsgSdk/CCMsgController$3;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/CCMsgSdk/CCMsgController$3;-><init>(Lcom/CCMsgSdk/CCMsgController;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    .line 374
    invoke-virtual {v1}, Lcom/JavaWebsocket/client/WebSocketClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleConrolMessage(Lorg/json/JSONObject;I)V
    .locals 3

    const-string v0, "cmd"

    .line 125
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "regist"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/CCMsgSdk/CCMsgController;->regist(Lorg/json/JSONObject;I)V

    goto :goto_0

    :cond_0
    const-string v1, "sub"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "groups"

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/CCMsgSdk/CCMsgController;->subscribe(Lorg/json/JSONArray;I)V

    goto :goto_0

    :cond_1
    const-string v1, "unsub"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/CCMsgSdk/CCMsgController;->unsubscribe(Lorg/json/JSONArray;I)V

    goto :goto_0

    :cond_2
    const-string v1, "config-http"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 133
    iget-object p2, p0, Lcom/CCMsgSdk/CCMsgController;->mAddressManager:Lcom/CCMsgSdk/AddressManager;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/CCMsgSdk/AddressManager;->setConfigUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "close"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 135
    invoke-direct {p0, p2}, Lcom/CCMsgSdk/CCMsgController;->unsubscribeAll(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleServerMessage(Ljava/lang/String;)V
    .locals 7

    const-string v0, "[CCMsgSdk]"

    .line 296
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->addCacheMessage(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cmd"

    .line 301
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    .line 302
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "regist"

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "handleServerMessage %s"

    if-eqz v5, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 309
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OK"

    .line 310
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    iget-object p1, p1, Lcom/CCMsgSdk/SubscribeInfo;->mSubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 312
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    invoke-virtual {p1}, Lcom/CCMsgSdk/SubscribeInfo;->toJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    iget v0, v0, Lcom/CCMsgSdk/SubscribeInfo;->context:I

    invoke-virtual {p0, p1, v0}, Lcom/CCMsgSdk/CCMsgController;->subscribe(Lorg/json/JSONArray;I)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->closeConnection()V

    .line 316
    iput-boolean v2, p0, Lcom/CCMsgSdk/CCMsgController;->mNeedRejoin:Z

    goto :goto_0

    :cond_1
    const-string v3, "kick"

    .line 318
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->closeConnection()V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 320
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "unsub"

    .line 321
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 322
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    iget-object p1, p1, Lcom/CCMsgSdk/SubscribeInfo;->mSubList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 324
    invoke-direct {p0}, Lcom/CCMsgSdk/CCMsgController;->closeConnection()V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "server message error, %s"

    .line 304
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private handleStockedControlJobs()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mStockJobsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/CCMsgSdk/CCMsgController$ControlJob;

    .line 116
    :try_start_0
    iget-object v2, v1, Lcom/CCMsgSdk/CCMsgController$ControlJob;->obj:Lorg/json/JSONObject;

    iget v1, v1, Lcom/CCMsgSdk/CCMsgController$ControlJob;->context:I

    invoke-direct {p0, v2, v1}, Lcom/CCMsgSdk/CCMsgController;->handleConrolMessage(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mStockJobsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private pushErrorMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "pushErrorMessage: %s--%s"

    .line 409
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCMsgSdk]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cmd"

    const-string v2, "notify"

    .line 412
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 413
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reason"

    .line 414
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->addCacheMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private reconnectInRandomInterval(Ljava/lang/String;)V
    .locals 6

    .line 452
    iget-boolean v0, p0, Lcom/CCMsgSdk/CCMsgController;->mConnected:Z

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget v0, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    .line 455
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 456
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const-string v5, "%s, reconnect in %d ms"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RECONNECT"

    invoke-direct {p0, v5, v3}, Lcom/CCMsgSdk/CCMsgController;->pushErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 458
    iget v3, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    const-string v1, "reconnect: %dth, %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CCMsgSdk]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget v1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinTimes:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const-string v0, "CONNECT_FAIL"

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/CCMsgSdk/CCMsgController;->pushErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    .line 466
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinHandler:Landroid/os/Handler;

    .line 467
    :cond_2
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 468
    new-instance p1, Lcom/CCMsgSdk/CCMsgController$5;

    invoke-direct {p1, p0}, Lcom/CCMsgSdk/CCMsgController$5;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinRunnable:Ljava/lang/Runnable;

    .line 475
    :cond_3
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController;->mRejoinRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendData(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2

    .line 382
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-lez p2, :cond_0

    :try_start_0
    const-string v1, "context"

    .line 386
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "regist"

    .line 388
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "version"

    const-string v1, "1"

    .line 389
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "cmd"

    .line 391
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 392
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p3, "send msg: %s"

    .line 398
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "[CCMsgSdk]"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1}, Lcom/CCMsgSdk/CCMsgController;->sendWebSocketMessage(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private sendWebSocketMessage(Ljava/lang/String;)V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/CCMsgSdk/CCMsgController;->mConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mClient:Lcom/JavaWebsocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/client/WebSocketClient;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startHearBeat(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 423
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 424
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatHandler:Landroid/os/Handler;

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 426
    new-instance p1, Lcom/CCMsgSdk/CCMsgController$4;

    invoke-direct {p1, p0}, Lcom/CCMsgSdk/CCMsgController$4;-><init>(Lcom/CCMsgSdk/CCMsgController;)V

    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatRunnable:Ljava/lang/Runnable;

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 443
    :cond_2
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatRunnable:Ljava/lang/Runnable;

    .line 446
    iput-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHeartBeatHandler:Landroid/os/Handler;

    :cond_3
    :goto_0
    return-void
.end method

.method private unsubscribeAll(I)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "unsubscribeAll"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    iget-object v0, v0, Lcom/CCMsgSdk/SubscribeInfo;->mSubList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mSubInfo:Lcom/CCMsgSdk/SubscribeInfo;

    invoke-virtual {v0}, Lcom/CCMsgSdk/SubscribeInfo;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/CCMsgSdk/CCMsgController;->unsubscribe(Lorg/json/JSONArray;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public control(Lorg/json/JSONObject;I)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/CCMsgSdk/CCMsgController$ControlJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/CCMsgSdk/CCMsgController$ControlJob;-><init>(Lcom/CCMsgSdk/CCMsgController;Lcom/CCMsgSdk/CCMsgController$1;)V

    .line 101
    iput-object p1, v0, Lcom/CCMsgSdk/CCMsgController$ControlJob;->obj:Lorg/json/JSONObject;

    .line 102
    iput p2, v0, Lcom/CCMsgSdk/CCMsgController$ControlJob;->context:I

    .line 103
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mStockJobsList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/CCMsgSdk/CCMsgController;->handleConrolMessage(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized fetchUnreadMsgs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 173
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/CCMsgSdk/CCMsgController;->mCacheMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public regist(Lorg/json/JSONObject;I)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "regist"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 145
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public subscribe(Lorg/json/JSONArray;I)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "subscribe"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 153
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unsubscribe(Lorg/json/JSONArray;I)V
    .locals 2

    const-string v0, "[CCMsgSdk]"

    const-string v1, "unsubscribe"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 159
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 161
    iget-object p1, p0, Lcom/CCMsgSdk/CCMsgController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
