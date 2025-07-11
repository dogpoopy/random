.class public Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;
.super Ljava/lang/Object;
.source "DefaultSSLWebSocketServerFactory.java"

# interfaces
.implements Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;


# instance fields
.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 31
    iput-object p1, p0, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 32
    iput-object p2, p0, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public bridge synthetic createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;
    .locals 0

    .line 44
    new-instance p3, Lcom/JavaWebsocket/WebSocketImpl;

    invoke-direct {p3, p1, p2}, Lcom/JavaWebsocket/WebSocketImpl;-><init>(Lcom/JavaWebsocket/WebSocketListener;Lcom/JavaWebsocket/drafts/Draft;)V

    return-object p3
.end method

.method public createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JavaWebsocket/WebSocketAdapter;",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/JavaWebsocket/WebSocketImpl;"
        }
    .end annotation

    .line 49
    new-instance p3, Lcom/JavaWebsocket/WebSocketImpl;

    invoke-direct {p3, p1, p2}, Lcom/JavaWebsocket/WebSocketImpl;-><init>(Lcom/JavaWebsocket/WebSocketListener;Ljava/util/List;)V

    return-object p3
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 39
    new-instance v1, Lcom/JavaWebsocket/SSLSocketChannel2;

    iget-object v2, p0, Lcom/JavaWebsocket/server/DefaultSSLWebSocketServerFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/JavaWebsocket/SSLSocketChannel2;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V

    return-object v1
.end method
