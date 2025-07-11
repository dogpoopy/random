.class public abstract Lcom/JavaWebsocket/client/WebSocketClient;
.super Lcom/JavaWebsocket/WebSocketAdapter;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/JavaWebsocket/WebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JavaWebsocket/client/WebSocketClient$WebsocketWriteThread;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lcom/JavaWebsocket/drafts/Draft;

.field private engine:Lcom/JavaWebsocket/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private istream:Ljava/io/InputStream;

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/JavaWebsocket/drafts/Draft_17;

    invoke-direct {v0}, Lcom/JavaWebsocket/drafts/Draft_17;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/JavaWebsocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/JavaWebsocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/JavaWebsocket/drafts/Draft;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/JavaWebsocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/JavaWebsocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/JavaWebsocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/JavaWebsocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/JavaWebsocket/WebSocketAdapter;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    .line 41
    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 47
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectTimeout:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 81
    iput-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 82
    iput-object p2, p0, Lcom/JavaWebsocket/client/WebSocketClient;->draft:Lcom/JavaWebsocket/drafts/Draft;

    .line 83
    iput-object p3, p0, Lcom/JavaWebsocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 84
    iput p4, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectTimeout:I

    .line 85
    new-instance p1, Lcom/JavaWebsocket/WebSocketImpl;

    invoke-direct {p1, p0, p2}, Lcom/JavaWebsocket/WebSocketImpl;-><init>(Lcom/JavaWebsocket/WebSocketListener;Lcom/JavaWebsocket/drafts/Draft;)V

    iput-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$100(Lcom/JavaWebsocket/client/WebSocketClient;)Lcom/JavaWebsocket/WebSocketImpl;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/JavaWebsocket/client/WebSocketClient;)Ljava/io/OutputStream;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    return-object p0
.end method

.method private getPort()I
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 200
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    :cond_0
    const-string v1, "ws"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    return v0

    .line 206
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private sendHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->getPort()I

    move-result v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;

    invoke-direct {v2}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 226
    invoke-virtual {v2, v0}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    const-string v0, "Host"

    .line 227
    invoke-virtual {v2, v0, v1}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 229
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, v2}, Lcom/JavaWebsocket/WebSocketImpl;->startHandshake(Lcom/JavaWebsocket/handshake/ClientHandshakeBuilder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/JavaWebsocket/WebSocketImpl;->close(I)V

    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {p1}, Lcom/JavaWebsocket/WebSocketImpl;->close()V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/JavaWebsocket/WebSocketImpl;->close(ILjava/lang/String;)V

    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->close()V

    .line 135
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/JavaWebsocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->connect()V

    .line 119
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 120
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public getConnection()Lcom/JavaWebsocket/WebSocket;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    return-object v0
.end method

.method public getDraft()Lcom/JavaWebsocket/drafts/Draft;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->draft:Lcom/JavaWebsocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReadyState()Lcom/JavaWebsocket/WebSocket$READYSTATE;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->getReadyState()Lcom/JavaWebsocket/WebSocket$READYSTATE;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/JavaWebsocket/handshake/ServerHandshake;)V
.end method

.method public final onWebsocketClose(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 277
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 280
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p0, p0, p1}, Lcom/JavaWebsocket/client/WebSocketClient;->onWebsocketError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 285
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/JavaWebsocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

.method public onWebsocketCloseInitiated(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 303
    invoke-virtual {p0, p2, p3}, Lcom/JavaWebsocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 308
    invoke-virtual {p0, p2, p3, p4}, Lcom/JavaWebsocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 293
    invoke-virtual {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 248
    invoke-virtual {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0

    .line 258
    invoke-virtual {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;->onFragment(Lcom/JavaWebsocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/Handshakedata;)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 267
    check-cast p2, Lcom/JavaWebsocket/handshake/ServerHandshake;

    invoke-virtual {p0, p2}, Lcom/JavaWebsocket/client/WebSocketClient;->onOpen(Lcom/JavaWebsocket/handshake/ServerHandshake;)V

    return-void
.end method

.method public final onWriteDemand(Lcom/JavaWebsocket/WebSocket;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, -0x1

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/JavaWebsocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/JavaWebsocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lcom/JavaWebsocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->istream:Ljava/io/InputStream;

    .line 168
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 170
    invoke-direct {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 177
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/JavaWebsocket/client/WebSocketClient$WebsocketWriteThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/JavaWebsocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lcom/JavaWebsocket/client/WebSocketClient;Lcom/JavaWebsocket/client/WebSocketClient$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 180
    sget v1, Lcom/JavaWebsocket/WebSocketImpl;->RCVBUF:I

    new-array v1, v1, [B

    .line 184
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->isClosing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/JavaWebsocket/client/WebSocketClient;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/JavaWebsocket/client/WebSocketClient;->istream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 185
    iget-object v3, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/JavaWebsocket/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->eot()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/JavaWebsocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 193
    iget-object v1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/JavaWebsocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_2

    .line 189
    :catch_1
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0}, Lcom/JavaWebsocket/WebSocketImpl;->eot()V

    :goto_2
    return-void

    .line 163
    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v1

    .line 172
    iget-object v2, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {p0, v2, v1}, Lcom/JavaWebsocket/client/WebSocketClient;->onWebsocketError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 173
    iget-object v2, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/JavaWebsocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/WebSocketImpl;->send(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/WebSocketImpl;->send([B)V

    return-void
.end method

.method public sendFragmentedFrame(Lcom/JavaWebsocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/JavaWebsocket/WebSocketImpl;->sendFragmentedFrame(Lcom/JavaWebsocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public sendFrame(Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->engine:Lcom/JavaWebsocket/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/WebSocketImpl;->sendFrame(Lcom/JavaWebsocket/framing/Framedata;)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 366
    iput-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 378
    iput-object p1, p0, Lcom/JavaWebsocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-void

    .line 376
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "socket has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
