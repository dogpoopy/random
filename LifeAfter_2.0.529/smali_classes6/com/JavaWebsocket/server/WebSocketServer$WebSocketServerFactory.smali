.class public interface abstract Lcom/JavaWebsocket/server/WebSocketServer$WebSocketServerFactory;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Lcom/JavaWebsocket/WebSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JavaWebsocket/server/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebSocketServerFactory"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;
.end method

.method public abstract createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocketImpl;
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
.end method

.method public abstract wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
