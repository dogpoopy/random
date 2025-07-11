.class public Lcom/netease/pushservice/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static network:Lcom/netease/pushservice/Network;


# instance fields
.field private HEART_BEAT_TIME:I

.field private heartBeatTask:Ljava/util/TimerTask;

.field private inetAddr:Ljava/net/InetAddress;

.field private isEnable:Z

.field private mHbRecvTime:J

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mTimer:Ljava/util/Timer;

.field private mbConnected:Z

.field private retryCount:I

.field private socket:Ljava/net/Socket;

.field private socketAddr:Ljava/net/SocketAddress;

.field private socketReader:Ljava/io/DataInputStream;

.field private socketWriter:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/pushservice/Network;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/netease/pushservice/Network;->inetAddr:Ljava/net/InetAddress;

    .line 34
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socketAddr:Ljava/net/SocketAddress;

    .line 35
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    .line 36
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    .line 37
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    .line 39
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    iput-boolean v1, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    .line 41
    iput-object v0, p0, Lcom/netease/pushservice/Network;->mTimer:Ljava/util/Timer;

    .line 42
    iput-object v0, p0, Lcom/netease/pushservice/Network;->heartBeatTask:Ljava/util/TimerTask;

    const v0, 0x3a980

    .line 43
    iput v0, p0, Lcom/netease/pushservice/Network;->HEART_BEAT_TIME:I

    .line 44
    iput v1, p0, Lcom/netease/pushservice/Network;->retryCount:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/netease/pushservice/Network;->mHbRecvTime:J

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pushservice/Network;->mTimer:Ljava/util/Timer;

    .line 62
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network constructed, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pushservice/Network;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/pushservice/Network;->connectRetry(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/pushservice/Network;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/pushservice/Network;->mHbRecvTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/netease/pushservice/Network;J)J
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/netease/pushservice/Network;->mHbRecvTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/netease/pushservice/Network;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netease/pushservice/Network;->HEART_BEAT_TIME:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private connectRetry(I)V
    .locals 4

    .line 200
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    if-eqz v0, :cond_0

    .line 203
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v0, "already connected"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    if-nez v0, :cond_1

    .line 208
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v0, "connect not enable"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry connect after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/netease/pushservice/Network$2;

    invoke-direct {v1, p0}, Lcom/netease/pushservice/Network$2;-><init>(Lcom/netease/pushservice/Network;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 219
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private endHeartBeat()V
    .locals 2

    .line 246
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "endHeartBeat"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/netease/pushservice/Network;->heartBeatTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public static getInst()Lcom/netease/pushservice/Network;
    .locals 2

    .line 50
    sget-object v0, Lcom/netease/pushservice/Network;->network:Lcom/netease/pushservice/Network;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/netease/pushservice/Network;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/netease/pushservice/Network;->network:Lcom/netease/pushservice/Network;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/netease/pushservice/Network;

    invoke-direct {v1}, Lcom/netease/pushservice/Network;-><init>()V

    sput-object v1, Lcom/netease/pushservice/Network;->network:Lcom/netease/pushservice/Network;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pushservice/Network;->network:Lcom/netease/pushservice/Network;

    return-object v0
.end method

.method private getRetrySecond()I
    .locals 2

    .line 71
    iget v0, p0, Lcom/netease/pushservice/Network;->retryCount:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 72
    iput v1, p0, Lcom/netease/pushservice/Network;->retryCount:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/netease/pushservice/Network;->retryCount:I

    mul-int/lit8 v1, v0, 0x24

    mul-int v1, v1, v0

    if-gtz v1, :cond_1

    const/4 v1, 0x2

    .line 78
    :cond_1
    iget v0, p0, Lcom/netease/pushservice/Network;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/pushservice/Network;->retryCount:I

    return v1
.end method

.method private onReceive([B)V
    .locals 5

    .line 331
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OnReceive len=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {p1}, Lcom/netease/push/proto/ProtoClientWrapper;->UnmarshalPacket([B)Lcom/netease/push/proto/ProtoClientWrapper$Packet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-byte v2, p1, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "OnReceive, cmdType=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/pushservice/PushServiceHelper;->onReceive(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V

    :cond_0
    return-void
.end method

.method private startHeartBeat()V
    .locals 7

    .line 223
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "startHeartBeat"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/netease/pushservice/Network;->endHeartBeat()V

    .line 225
    new-instance v0, Lcom/netease/pushservice/Network$3;

    invoke-direct {v0, p0}, Lcom/netease/pushservice/Network$3;-><init>(Lcom/netease/pushservice/Network;)V

    iput-object v0, p0, Lcom/netease/pushservice/Network;->heartBeatTask:Ljava/util/TimerTask;

    .line 242
    iget-object v1, p0, Lcom/netease/pushservice/Network;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/netease/pushservice/Network;->heartBeatTask:Ljava/util/TimerTask;

    iget v0, p0, Lcom/netease/pushservice/Network;->HEART_BEAT_TIME:I

    int-to-long v3, v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private upgradeToTls(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;
    .locals 5

    .line 370
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 372
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 374
    invoke-static {v2, v4, v3}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    .line 375
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 378
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    .line 379
    invoke-virtual {p2, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 380
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 383
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeToTls Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/String;I)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string p2, "already connected"

    invoke-static {p1, p2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    if-nez v0, :cond_1

    .line 115
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string p2, "Disabled Network"

    invoke-static {p1, p2}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/pushservice/Network;->inetAddr:Ljava/net/InetAddress;

    .line 121
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/netease/pushservice/Network;->inetAddr:Ljava/net/InetAddress;

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/netease/pushservice/Network;->socketAddr:Ljava/net/SocketAddress;

    .line 122
    new-instance p2, Ljava/net/Socket;

    invoke-direct {p2}, Ljava/net/Socket;-><init>()V

    iput-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    .line 123
    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 124
    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-virtual {p2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 125
    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/netease/pushservice/Network;->socketAddr:Ljava/net/SocketAddress;

    const/16 v3, 0x1388

    invoke-virtual {p2, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    iput-boolean v1, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    .line 127
    sget-object p2, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect success, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-direct {p0, p2, p1}, Lcom/netease/pushservice/Network;->upgradeToTls(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    .line 129
    new-instance p1, Ljava/io/DataInputStream;

    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    .line 130
    new-instance p1, Ljava/io/DataOutputStream;

    iget-object p2, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    .line 131
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 133
    invoke-direct {p0}, Lcom/netease/pushservice/Network;->startHeartBeat()V

    .line 134
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/pushservice/PushServiceHelper;->onConnectSuccess()V

    .line 135
    iput v0, p0, Lcom/netease/pushservice/Network;->retryCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    sget-object p2, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_0
    iget-boolean p1, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    if-nez p1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnectRetry()V

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public connectAuto(Landroid/content/Context;)V
    .locals 6

    .line 83
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAuto, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pushservice/PushServiceHelper;->getNotificationServiceInfo()Lcom/netease/pushservice/PushServiceInfo;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/netease/pushservice/PushServiceInfo;->getConnectUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 91
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unipush addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    sget-object v4, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object p1, v5, v3

    const-string p1, "connect to unipush %s:%s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v2, v0}, Lcom/netease/pushservice/Network;->connect(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    .line 162
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    .line 163
    iput-object v0, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    .line 165
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/netease/pushservice/Network;->endHeartBeat()V

    .line 167
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 168
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public disconnectRetry()V
    .locals 3

    .line 181
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "disconnectRetry"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "connect not enable"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnect()V

    .line 187
    invoke-direct {p0}, Lcom/netease/pushservice/Network;->getRetrySecond()I

    move-result v0

    .line 189
    :try_start_0
    invoke-static {}, Lcom/netease/pushservice/PushServiceHelper;->getInstance()Lcom/netease/pushservice/PushServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pushservice/PushServiceHelper;->getTaskSubmitter()Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;

    move-result-object v1

    new-instance v2, Lcom/netease/pushservice/Network$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/pushservice/Network$1;-><init>(Lcom/netease/pushservice/Network;I)V

    invoke-virtual {v1, v2}, Lcom/netease/pushservice/PushServiceHelper$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 280
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 286
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 296
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 297
    sget-object v3, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v2, v0, :cond_1

    .line 299
    new-array v1, v2, [B

    :cond_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 302
    sget-object v2, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v3, "receive heartbeat reply"

    invoke-static {v2, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/pushservice/Network;->mHbRecvTime:J

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 306
    invoke-static {v1, v4, v2}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    .line 307
    iget-object v5, p0, Lcom/netease/pushservice/Network;->socketReader:Ljava/io/DataInputStream;

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v5, v1, v3, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 308
    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/pushservice/Network;->onReceive([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run, this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnectRetry()V

    return-void

    .line 287
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public sendData(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)V
    .locals 3

    .line 325
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData, cmdType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {p1, p2}, Lcom/netease/push/proto/ProtoClientWrapper;->MarshalObject(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;)[B

    move-result-object p1

    .line 327
    invoke-virtual {p0, p1}, Lcom/netease/pushservice/Network;->sendData([B)V

    return-void
.end method

.method public sendData(Lcom/netease/push/proto/ProtoClientWrapper$Packet;)V
    .locals 0

    .line 320
    invoke-virtual {p1}, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->Marshal()[B

    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/netease/pushservice/Network;->sendData([B)V

    return-void
.end method

.method public sendData([B)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    iget-boolean v0, p0, Lcom/netease/pushservice/Network;->mbConnected:Z

    if-nez v0, :cond_0

    .line 257
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v0, "not connected"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    sget-object p1, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v0, "socket not connected"

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 267
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/pushservice/Network;->socketWriter:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnect()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 269
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnect()V

    .line 275
    :goto_0
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected setEnable(Z)V
    .locals 3

    .line 340
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 344
    iput-boolean p1, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    .line 345
    iget-boolean p1, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    if-nez p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnect()V

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setHeartBeatTime(I)V
    .locals 3

    .line 66
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeartBeatTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput p1, p0, Lcom/netease/pushservice/Network;->HEART_BEAT_TIME:I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 172
    sget-object v0, Lcom/netease/pushservice/Network;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    invoke-virtual {p0}, Lcom/netease/pushservice/Network;->disconnect()V

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/netease/pushservice/Network;->isEnable:Z

    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/netease/pushservice/Network;->network:Lcom/netease/pushservice/Network;

    .line 177
    iget-object v0, p0, Lcom/netease/pushservice/Network;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
