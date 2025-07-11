.class public Lcom/netease/pharos/netlag/NetworkCheck;
.super Ljava/lang/Object;
.source "NetworkCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkCheck"


# instance fields
.field private mIpInfoCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

.field private mNetworkCheckListener:Lcom/netease/pharos/netlag/NetworkCheckListener;

.field private mReceiveThread:Ljava/lang/Thread;

.field private final mStopCheck:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mStopCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/netlag/NetworkCheck;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/netease/pharos/netlag/NetworkCheck;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/pharos/netlag/NetworkCheck;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mStopCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckListener:Lcom/netease/pharos/netlag/NetworkCheckListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckConfig;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    return-object p0
.end method

.method private start()V
    .locals 17

    move-object/from16 v9, p0

    .line 59
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mIpInfoCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 64
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    .line 65
    iget-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    iget-object v0, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 69
    new-instance v11, Ljava/net/InetSocketAddress;

    iget-object v12, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    iget-object v13, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->port:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v6, v11}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 71
    invoke-virtual {v6, v3, v10}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 72
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v13, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v13}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagPks()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    .line 75
    iget-object v15, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v15, :cond_0

    move-object/from16 v16, v2

    goto :goto_3

    :cond_0
    move-object/from16 v16, v2

    .line 76
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 78
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v15, v10, :cond_1

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v15}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    goto :goto_2

    .line 81
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v15}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v15, "UTF-8"

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 83
    :goto_2
    array-length v4, v10

    .line 84
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 85
    invoke-virtual {v6, v10, v11}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v2

    .line 88
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v13, :cond_3

    .line 89
    iget-object v0, v0, Lcom/netease/pharos/netlag/NetworkCheckConfig$IpInfo;->ip:Ljava/lang/String;

    invoke-virtual {v5, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 92
    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    move-object/from16 v2, v16

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 95
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    const-string v2, "NetLag "

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send cost:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeOut:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagTimeout()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-virtual {v0}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagPks()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/netease/pharos/netlag/NetworkCheck$2;

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/netease/pharos/netlag/NetworkCheck$2;-><init>(Lcom/netease/pharos/netlag/NetworkCheck;Ljava/nio/channels/Selector;ILjava/util/HashMap;IJ)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mReceiveThread:Ljava/lang/Thread;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    iget-object v0, v9, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckListener:Lcom/netease/pharos/netlag/NetworkCheckListener;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 162
    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkResult;->fail(I)Lcom/netease/pharos/netlag/NetworkResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/pharos/netlag/NetworkCheckListener;->callBack(Lcom/netease/pharos/netlag/NetworkResult;)V

    :cond_5
    :goto_6
    return-void
.end method


# virtual methods
.method declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "NetLag "

    const-string v1, "cancel executor"

    .line 171
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mStopCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mIpInfoCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckListener:Lcom/netease/pharos/netlag/NetworkCheckListener;

    .line 175
    iput-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method exec()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/netlag/NetworkCheck$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/netlag/NetworkCheck$1;-><init>(Lcom/netease/pharos/netlag/NetworkCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method getNetworkCheckConfig()Lcom/netease/pharos/netlag/NetworkCheckConfig;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    return-object v0
.end method

.method init(Lorg/json/JSONObject;Lcom/netease/pharos/netlag/NetworkCheckListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iput-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckListener:Lcom/netease/pharos/netlag/NetworkCheckListener;

    .line 41
    new-instance p2, Lcom/netease/pharos/netlag/NetworkCheckConfig;

    invoke-direct {p2}, Lcom/netease/pharos/netlag/NetworkCheckConfig;-><init>()V

    iput-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    .line 42
    invoke-virtual {p2, p1}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->init(Lorg/json/JSONObject;)V

    .line 43
    iget-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheck;->mNetworkCheckConfig:Lcom/netease/pharos/netlag/NetworkCheckConfig;

    iget-object p1, p1, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    return-void
.end method
