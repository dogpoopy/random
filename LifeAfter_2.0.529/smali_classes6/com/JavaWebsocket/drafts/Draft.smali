.class public abstract Lcom/JavaWebsocket/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JavaWebsocket/drafts/Draft$CloseHandshakeType;,
        Lcom/JavaWebsocket/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static final FLASH_POLICY_REQUEST:[B

.field public static INITIAL_FAMESIZE:I = 0x40

.field public static MAX_FAME_SIZE:I = 0x3e8


# instance fields
.field protected continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

.field protected role:Lcom/JavaWebsocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<policy-file-request/>\u0000"

    .line 47
    invoke-static {v0}, Lcom/JavaWebsocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/JavaWebsocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->role:Lcom/JavaWebsocket/WebSocket$Role;

    .line 52
    iput-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 64
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 75
    invoke-static {p0}, Lcom/JavaWebsocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/JavaWebsocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/JavaWebsocket/WebSocket$Role;)Lcom/JavaWebsocket/handshake/HandshakeBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;,
            Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lcom/JavaWebsocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, " "

    const/4 v2, 0x3

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v1, v0

    if-ne v1, v2, :cond_4

    .line 91
    sget-object v1, Lcom/JavaWebsocket/WebSocket$Role;->CLIENT:Lcom/JavaWebsocket/WebSocket$Role;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 93
    new-instance p1, Lcom/JavaWebsocket/handshake/HandshakeImpl1Server;

    invoke-direct {p1}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Server;-><init>()V

    .line 94
    move-object v1, p1

    check-cast v1, Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;

    .line 95
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-interface {v1, v4}, Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;->setHttpStatus(S)V

    .line 96
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;

    invoke-direct {p1}, Lcom/JavaWebsocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 100
    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Lcom/JavaWebsocket/handshake/ClientHandshakeBuilder;->setResourceDescriptor(Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-static {p0}, Lcom/JavaWebsocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ":"

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    array-length v1, v0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 109
    aget-object v1, v0, v1

    aget-object v0, v0, v3

    const-string v4, "^ +"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/JavaWebsocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lcom/JavaWebsocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_1
    new-instance p0, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;

    const-string p1, "not an http header"

    invoke-direct {p0, p1}, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    return-object p1

    .line 113
    :cond_3
    new-instance p0, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;

    invoke-direct {p0}, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw p0

    .line 88
    :cond_4
    new-instance p0, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;

    invoke-direct {p0}, Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;-><init>()V

    throw p0

    .line 84
    :cond_5
    new-instance p1, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/lit16 p0, p0, 0x80

    invoke-direct {p1, p0}, Lcom/JavaWebsocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lcom/JavaWebsocket/handshake/ClientHandshake;Lcom/JavaWebsocket/handshake/ServerHandshake;)Lcom/JavaWebsocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lcom/JavaWebsocket/handshake/ClientHandshake;)Lcom/JavaWebsocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method protected basicAccept(Lcom/JavaWebsocket/handshake/Handshakedata;)Z
    .locals 2

    const-string v0, "Upgrade"

    .line 122
    invoke-interface {p1, v0}, Lcom/JavaWebsocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/JavaWebsocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkAlloc(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/LimitExedeedException;,
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation

    if-ltz p1, :cond_0

    return p1

    .line 216
    :cond_0
    new-instance p1, Lcom/JavaWebsocket/exceptions/InvalidDataException;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/JavaWebsocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public continuousFrame(Lcom/JavaWebsocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JavaWebsocket/framing/Framedata$Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/JavaWebsocket/framing/Framedata$Opcode;->BINARY:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/JavaWebsocket/framing/Framedata$Opcode;->TEXT:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/JavaWebsocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    iput-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    goto :goto_1

    .line 139
    :cond_2
    iput-object p1, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    .line 142
    :goto_1
    new-instance v0, Lcom/JavaWebsocket/framing/FramedataImpl1;

    iget-object v1, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    invoke-direct {v0, v1}, Lcom/JavaWebsocket/framing/FramedataImpl1;-><init>(Lcom/JavaWebsocket/framing/Framedata$Opcode;)V

    .line 144
    :try_start_0
    invoke-interface {v0, p2}, Lcom/JavaWebsocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/JavaWebsocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {v0, p3}, Lcom/JavaWebsocket/framing/FrameBuilder;->setFin(Z)V

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    goto :goto_2

    .line 152
    :cond_3
    iput-object p1, p0, Lcom/JavaWebsocket/drafts/Draft;->continuousFrameType:Lcom/JavaWebsocket/framing/Framedata$Opcode;

    .line 154
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract copyInstance()Lcom/JavaWebsocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lcom/JavaWebsocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public createHandshake(Lcom/JavaWebsocket/handshake/Handshakedata;Lcom/JavaWebsocket/WebSocket$Role;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JavaWebsocket/handshake/Handshakedata;",
            "Lcom/JavaWebsocket/WebSocket$Role;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/JavaWebsocket/drafts/Draft;->createHandshake(Lcom/JavaWebsocket/handshake/Handshakedata;Lcom/JavaWebsocket/WebSocket$Role;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createHandshake(Lcom/JavaWebsocket/handshake/Handshakedata;Lcom/JavaWebsocket/WebSocket$Role;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/JavaWebsocket/handshake/Handshakedata;",
            "Lcom/JavaWebsocket/WebSocket$Role;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    instance-of v0, p1, Lcom/JavaWebsocket/handshake/ClientHandshake;

    if-eqz v0, :cond_0

    const-string v0, "GET "

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/JavaWebsocket/handshake/ClientHandshake;

    invoke-interface {v0}, Lcom/JavaWebsocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " HTTP/1.1"

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    instance-of v0, p1, Lcom/JavaWebsocket/handshake/ServerHandshake;

    if-eqz v0, :cond_5

    const-string v0, "HTTP/1.1 101 "

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/JavaWebsocket/handshake/ServerHandshake;

    invoke-interface {v0}, Lcom/JavaWebsocket/handshake/ServerHandshake;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "\r\n"

    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p1}, Lcom/JavaWebsocket/handshake/Handshakedata;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    invoke-interface {p1, v2}, Lcom/JavaWebsocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 180
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/JavaWebsocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_2

    .line 187
    invoke-interface {p1}, Lcom/JavaWebsocket/handshake/Handshakedata;->getContent()[B

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    .line 188
    :cond_3
    array-length p3, p1

    :goto_3
    array-length v0, p2

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 189
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    .line 191
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 172
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unknown role"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public abstract getCloseHandshakeType()Lcom/JavaWebsocket/drafts/Draft$CloseHandshakeType;
.end method

.method public getRole()Lcom/JavaWebsocket/WebSocket$Role;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->role:Lcom/JavaWebsocket/WebSocket$Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lcom/JavaWebsocket/handshake/ClientHandshakeBuilder;)Lcom/JavaWebsocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lcom/JavaWebsocket/handshake/ClientHandshake;Lcom/JavaWebsocket/handshake/ServerHandshakeBuilder;)Lcom/JavaWebsocket/handshake/HandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lcom/JavaWebsocket/WebSocket$Role;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/JavaWebsocket/drafts/Draft;->role:Lcom/JavaWebsocket/WebSocket$Role;

    return-void
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/JavaWebsocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lcom/JavaWebsocket/handshake/Handshakedata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/JavaWebsocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/JavaWebsocket/drafts/Draft;->role:Lcom/JavaWebsocket/WebSocket$Role;

    invoke-static {p1, v0}, Lcom/JavaWebsocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/JavaWebsocket/WebSocket$Role;)Lcom/JavaWebsocket/handshake/HandshakeBuilder;

    move-result-object p1

    return-object p1
.end method
