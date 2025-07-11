.class public interface abstract Lcom/JavaWebsocket/WebSocketFactory;
.super Ljava/lang/Object;
.source "WebSocketFactory.java"


# virtual methods
.method public abstract createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Lcom/JavaWebsocket/drafts/Draft;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
.end method

.method public abstract createWebSocket(Lcom/JavaWebsocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/JavaWebsocket/WebSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JavaWebsocket/WebSocketAdapter;",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/JavaWebsocket/WebSocket;"
        }
    .end annotation
.end method
