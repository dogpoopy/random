.class public interface abstract Lcom/JavaWebsocket/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract getFlashPolicy(Lcom/JavaWebsocket/WebSocket;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract getLocalSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lcom/JavaWebsocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lcom/JavaWebsocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lcom/JavaWebsocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;Lcom/JavaWebsocket/handshake/ServerHandshake;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/drafts/Draft;Lcom/JavaWebsocket/handshake/ClientHandshake;)Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lcom/JavaWebsocket/WebSocket;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketOpen(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/Handshakedata;)V
.end method

.method public abstract onWebsocketPing(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketPong(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
.end method

.method public abstract onWriteDemand(Lcom/JavaWebsocket/WebSocket;)V
.end method
