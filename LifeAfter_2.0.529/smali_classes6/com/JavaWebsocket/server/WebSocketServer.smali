.class public abstract Lcom/JavaWebsocket/server/WebSocketServer;
.super Lcom/JavaWebsocket/WebSocketAdapter;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;,
        Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DECODERS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/JavaWebsocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field private decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/JavaWebsocket/server/WebSocketServer;->DECODERS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lcom/JavaWebsocket/server/WebSocketServer;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/JavaWebsocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2

    .line 107
    sget v0, Lcom/JavaWebsocket/server/WebSocketServer;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/JavaWebsocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/JavaWebsocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/JavaWebsocket/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/JavaWebsocket/WebSocketAdapter;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queueinvokes:I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v0, Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v0}, Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_0
    iput-object p3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 161
    :goto_0
    iput-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 162
    iput-object p4, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 164
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 167
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    :goto_1
    if-ge v1, p2, :cond_1

    .line 169
    new-instance p1, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {p1, p0}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;-><init>(Lcom/JavaWebsocket/server/WebSocketServer;)V

    .line 170
    iget-object p3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p1}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 121
    sget v0, Lcom/JavaWebsocket/server/WebSocketServer;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/JavaWebsocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/JavaWebsocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/JavaWebsocket/server/WebSocketServer;Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->handleFatal(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method private getSocket(Lcom/JavaWebsocket/WebSocket;)Ljava/net/Socket;
    .locals 0

    .line 645
    check-cast p1, Lcom/JavaWebsocket/WebSocketImpl;

    .line 646
    iget-object p1, p1, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method private handleFatal(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
    .locals 1

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 488
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lcom/JavaWebsocket/WebSocket;Ljava/io/IOException;)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 p1, 0x3ee

    .line 466
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/JavaWebsocket/WebSocket;->closeConnection(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 471
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 475
    :goto_0
    sget-boolean p1, Lcom/JavaWebsocket/WebSocketImpl;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 476
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connection closed because of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private queue(Lcom/JavaWebsocket/WebSocketImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 446
    iget-object v0, p1, Lcom/JavaWebsocket/WebSocketImpl;->workerThread:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queueinvokes:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    iput-object v0, p1, Lcom/JavaWebsocket/WebSocketImpl;->workerThread:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 448
    iget v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queueinvokes:I

    .line 450
    :cond_0
    iget-object v0, p1, Lcom/JavaWebsocket/WebSocketImpl;->workerThread:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {v0, p1}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->put(Lcom/JavaWebsocket/WebSocketImpl;)V

    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lcom/JavaWebsocket/WebSocket;)Z
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 578
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x3e9

    .line 582
    invoke-interface {p1, v0}, Lcom/JavaWebsocket/WebSocket;->close(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected allocateBuffers(Lcom/JavaWebsocket/WebSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 429
    iget-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 433
    iget-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/JavaWebsocket/WebSocket;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 442
    sget v0, Lcom/JavaWebsocket/WebSocketImpl;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFlashSecurityPolicy()Ljava/lang/String;
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" /></cross-domain-policy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->getSocket(Lcom/JavaWebsocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public getPort()I
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->getSocket(Lcom/JavaWebsocket/WebSocket;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    return-object p1
.end method

.method public final getWebSocketFactory()Lcom/JavaWebsocket/WebSocketFactory;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public abstract onMessage(Lcom/JavaWebsocket/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lcom/JavaWebsocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public abstract onOpen(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;)V
.end method

.method public final onWebsocketClose(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 537
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->removeConnection(Lcom/JavaWebsocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/JavaWebsocket/server/WebSocketServer;->onClose(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->releaseBuffers(Lcom/JavaWebsocket/WebSocket;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 542
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->releaseBuffers(Lcom/JavaWebsocket/WebSocket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 544
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 545
    :goto_1
    throw p2
.end method

.method public onWebsocketCloseInitiated(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 609
    invoke-virtual {p0, p1, p2, p3}, Lcom/JavaWebsocket/server/WebSocketServer;->onCloseInitiated(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;)V

    return-void
.end method

.method public onWebsocketClosing(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 614
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/JavaWebsocket/server/WebSocketServer;->onClosing(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V

    return-void
.end method

.method public final onWebsocketError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
    .locals 0

    .line 592
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/drafts/Draft;Lcom/JavaWebsocket/handshake/ClientHandshake;)Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/JavaWebsocket/WebSocketAdapter;->onWebsocketHandshakeReceivedAsServer(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/drafts/Draft;Lcom/JavaWebsocket/handshake/ClientHandshake;)Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onMessage(Lcom/JavaWebsocket/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public final onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 523
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onMessage(Lcom/JavaWebsocket/WebSocket;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V

    return-void
.end method

.method public final onWebsocketOpen(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/Handshakedata;)V
    .locals 1

    .line 528
    invoke-virtual {p0, p1}, Lcom/JavaWebsocket/server/WebSocketServer;->addConnection(Lcom/JavaWebsocket/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    check-cast p2, Lcom/JavaWebsocket/handshake/ClientHandshake;

    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/WebSocketServer;->onOpen(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;)V

    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lcom/JavaWebsocket/WebSocket;)V
    .locals 2

    .line 597
    check-cast p1, Lcom/JavaWebsocket/WebSocketImpl;

    .line 599
    :try_start_0
    iget-object v0, p1, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    iget-object p1, p1, Lcom/JavaWebsocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 604
    :goto_0
    iget-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method protected releaseBuffers(Lcom/JavaWebsocket/WebSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-void
.end method

.method protected removeConnection(Lcom/JavaWebsocket/WebSocket;)Z
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 561
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 561
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 10

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_22

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 270
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebsocketSelector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 276
    :try_start_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 278
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 279
    sget v3, Lcom/JavaWebsocket/WebSocketImpl;->RCVBUF:I

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 280
    iget-object v3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 281
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 282
    iget-object v3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16

    .line 288
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_19

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->select()I

    .line 293
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 294
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    move-object v4, v3

    .line 296
    :goto_1
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 305
    :cond_2
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 306
    invoke-virtual {p0, v5}, Lcom/JavaWebsocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_2

    .line 311
    :cond_3
    iget-object v3, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 315
    :cond_4
    invoke-virtual {v3, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 316
    iget-object v6, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    iget-object v7, p0, Lcom/JavaWebsocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-interface {v6, p0, v7, v8}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;->createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;

    move-result-object v6

    .line 317
    iget-object v7, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3, v7, v4, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    iput-object v4, v6, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    :try_start_6
    iget-object v4, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    iget-object v7, v6, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v4, v3, v7}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v3

    iput-object v3, v6, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 321
    invoke-virtual {p0, v6}, Lcom/JavaWebsocket/server/WebSocketServer;->allocateBuffers(Lcom/JavaWebsocket/WebSocket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    .line 324
    :try_start_7
    iget-object v4, v6, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v4, :cond_5

    .line 325
    iget-object v4, v6, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 327
    :cond_5
    iget-object v4, v6, Lcom/JavaWebsocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-direct {p0, v4, v0, v3}, Lcom/JavaWebsocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/JavaWebsocket/WebSocket;Ljava/io/IOException;)V

    :goto_2
    move-object v4, v0

    :goto_3
    move-object v3, v5

    goto :goto_1

    .line 332
    :cond_6
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 333
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/JavaWebsocket/WebSocketImpl;
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 334
    :try_start_8
    invoke-direct {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 335
    iget-object v7, v3, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    if-nez v7, :cond_8

    if-eqz v5, :cond_7

    .line 337
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 339
    :cond_7
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, v5, v3, v4}, Lcom/JavaWebsocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/JavaWebsocket/WebSocket;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 343
    :cond_8
    :try_start_9
    iget-object v7, v3, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v6, v3, v7}, Lcom/JavaWebsocket/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lcom/JavaWebsocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 344
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 345
    iget-object v7, v3, Lcom/JavaWebsocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 346
    invoke-direct {p0, v3}, Lcom/JavaWebsocket/server/WebSocketServer;->queue(Lcom/JavaWebsocket/WebSocketImpl;)V

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 348
    iget-object v7, v3, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v7, v7, Lcom/JavaWebsocket/WrappedByteChannel;

    if-eqz v7, :cond_c

    .line 349
    iget-object v7, v3, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v7, Lcom/JavaWebsocket/WrappedByteChannel;

    invoke-interface {v7}, Lcom/JavaWebsocket/WrappedByteChannel;->isNeedRead()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 350
    iget-object v7, p0, Lcom/JavaWebsocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 354
    :cond_9
    invoke-direct {p0, v6}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    .line 356
    :cond_a
    invoke-direct {p0, v6}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    .line 359
    :try_start_a
    invoke-direct {p0, v6}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 360
    throw v1

    :cond_b
    move-object v3, v0

    .line 363
    :cond_c
    :goto_4
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 364
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/JavaWebsocket/WebSocketImpl;
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 365
    :try_start_b
    iget-object v3, v6, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v6, v3}, Lcom/JavaWebsocket/SocketChannelIOHelper;->batch(Lcom/JavaWebsocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 366
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 367
    invoke-virtual {v5, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_d
    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_c

    :cond_e
    :goto_5
    move-object v4, v3

    goto/16 :goto_3

    :catch_4
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v4, v0

    :goto_6
    move-object v3, v5

    goto/16 :goto_c

    .line 371
    :cond_f
    :goto_7
    :try_start_c
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JavaWebsocket/WebSocketImpl;
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 373
    :try_start_d
    iget-object v4, v1, Lcom/JavaWebsocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v4, Lcom/JavaWebsocket/WrappedByteChannel;

    .line 374
    invoke-direct {p0}, Lcom/JavaWebsocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 376
    :try_start_e
    invoke-static {v5, v1, v4}, Lcom/JavaWebsocket/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lcom/JavaWebsocket/WebSocketImpl;Lcom/JavaWebsocket/WrappedByteChannel;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 377
    iget-object v4, p0, Lcom/JavaWebsocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_10
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 379
    iget-object v4, v1, Lcom/JavaWebsocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 380
    invoke-direct {p0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->queue(Lcom/JavaWebsocket/WebSocketImpl;)V

    goto :goto_8

    .line 382
    :cond_11
    invoke-direct {p0, v5}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_11
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_8
    move-object v4, v1

    goto :goto_7

    :catch_6
    move-exception v4

    .line 385
    :try_start_f
    invoke-direct {p0, v5}, Lcom/JavaWebsocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 386
    throw v4
    :try_end_f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_7
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    nop

    .line 407
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_12

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 409
    invoke-virtual {v2}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_9

    .line 412
    :cond_12
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_13

    .line 414
    :try_start_10
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 419
    :cond_13
    :goto_a
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_14

    .line 421
    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    :cond_14
    :goto_b
    return-void

    :catch_c
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_c
    if-eqz v3, :cond_15

    .line 396
    :try_start_12
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 397
    :cond_15
    invoke-direct {p0, v3, v4, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/JavaWebsocket/WebSocket;Ljava/io/IOException;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    :catch_d
    nop

    .line 407
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_16

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 409
    invoke-virtual {v2}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_d

    .line 412
    :cond_16
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_17

    .line 414
    :try_start_13
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 419
    :cond_17
    :goto_e
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_18

    .line 421
    :try_start_14
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    :cond_18
    :goto_f
    return-void

    .line 407
    :cond_19
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 409
    invoke-virtual {v2}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_10

    .line 412
    :cond_1a
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1b

    .line 414
    :try_start_15
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_11

    :catch_10
    move-exception v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 419
    :cond_1b
    :goto_11
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1e

    .line 421
    :try_start_16
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13

    goto :goto_14

    :catchall_0
    move-exception v1

    goto :goto_15

    :catch_11
    move-exception v1

    .line 405
    :try_start_17
    invoke-direct {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->handleFatal(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 407
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v1, :cond_1c

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 409
    invoke-virtual {v2}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_12

    .line 412
    :cond_1c
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_1d

    .line 414
    :try_start_18
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    goto :goto_13

    :catch_12
    move-exception v1

    .line 416
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 419
    :cond_1d
    :goto_13
    iget-object v1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1e

    .line 421
    :try_start_19
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13

    goto :goto_14

    :catch_13
    move-exception v1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    :cond_1e
    :goto_14
    return-void

    .line 407
    :goto_15
    iget-object v2, p0, Lcom/JavaWebsocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v2, :cond_1f

    .line 408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;

    .line 409
    invoke-virtual {v3}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    goto :goto_16

    .line 412
    :cond_1f
    iget-object v2, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_20

    .line 414
    :try_start_1a
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_14

    goto :goto_17

    :catch_14
    move-exception v2

    .line 416
    invoke-virtual {p0, v0, v2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 419
    :cond_20
    :goto_17
    iget-object v2, p0, Lcom/JavaWebsocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_21

    .line 421
    :try_start_1b
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_15

    goto :goto_18

    :catch_15
    move-exception v2

    .line 423
    invoke-virtual {p0, v0, v2}, Lcom/JavaWebsocket/server/WebSocketServer;->onError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    .line 424
    :cond_21
    :goto_18
    throw v1

    :catch_16
    move-exception v1

    .line 284
    invoke-direct {p0, v0, v1}, Lcom/JavaWebsocket/server/WebSocketServer;->handleFatal(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V

    return-void

    .line 268
    :cond_22
    :try_start_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 273
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method public final setWebSocketFactory(Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    return-void
.end method

.method public start()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lcom/JavaWebsocket/server/WebSocketServer;->stop(I)V

    return-void
.end method

.method public stop(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/JavaWebsocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/JavaWebsocket/WebSocket;

    const/16 v2, 0x3e9

    .line 215
    invoke-interface {v1, v2}, Lcom/JavaWebsocket/WebSocket;->close(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->wsf:Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;

    invoke-interface {v0}, Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;->close()V

    .line 220
    monitor-enter p0

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 223
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 224
    iget-object v0, p0, Lcom/JavaWebsocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 226
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 212
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
