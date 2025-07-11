.class public Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketServerFactory.java"

# interfaces
.implements Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;
    .locals 0

    .line 16
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

    .line 20
    new-instance p3, Lcom/JavaWebsocket/WebSocketImpl;

    invoke-direct {p3, p1, p2}, Lcom/JavaWebsocket/WebSocketImpl;-><init>(Lcom/JavaWebsocket/WebSocketListener;Ljava/util/List;)V

    return-object p3
.end method

.method public bridge synthetic wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/JavaWebsocket/server/DefaultWebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 0

    return-object p1
.end method
