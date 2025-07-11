.class public abstract Lcom/JavaWebsocket/WebSocketAdapter;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lcom/JavaWebsocket/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lcom/JavaWebsocket/WebSocket;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lcom/JavaWebsocket/WebSocket;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;

    const-string v0, "socket not bound"

    invoke-direct {p1, v0}, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;Lcom/JavaWebsocket/handshake/ServerHandshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/drafts/Draft;Lcom/JavaWebsocket/handshake/ClientHandshake;)Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 28
    new-instance p1, Lcom/JavaWebsocket/handshake/HandshakeImpl1Server;

    invoke-direct {p1}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Server;-><init>()V

    return-object p1
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/handshake/ClientHandshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public onWebsocketPing(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/JavaWebsocket/framing/FramedataImpl1;

    invoke-direct {v0, p2}, Lcom/JavaWebsocket/framing/FramedataImpl1;-><init>(Lcom/JavaWebsocket/framing/Framedata;)V

    .line 62
    sget-object p2, Lcom/JavaWebsocket/framing/Framedata$Opcode;->PONG:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    invoke-virtual {v0, p2}, Lcom/JavaWebsocket/framing/FramedataImpl1;->setOptcode(Lcom/JavaWebsocket/framing/Framedata$Opcode;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/JavaWebsocket/WebSocket;->sendFrame(Lcom/JavaWebsocket/framing/Framedata;)V

    return-void
.end method

.method public onWebsocketPong(Lcom/JavaWebsocket/WebSocket;Lcom/JavaWebsocket/framing/Framedata;)V
    .locals 0

    return-void
.end method
