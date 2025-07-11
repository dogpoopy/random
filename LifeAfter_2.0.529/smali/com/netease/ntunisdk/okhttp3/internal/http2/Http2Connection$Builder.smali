.class public Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;

.field sink:Lcom/netease/ntunisdk/okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lcom/netease/ntunisdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;->CANCEL:Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;

    iput-boolean p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection;-><init>(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pingIntervalMillis(I)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return-object p0
.end method

.method public pushObserver(Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/netease/ntunisdk/okhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->source(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/netease/ntunisdk/okio/Okio;->sink(Ljava/net/Socket;)Lcom/netease/ntunisdk/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/ntunisdk/okio/Okio;->buffer(Lcom/netease/ntunisdk/okio/Sink;)Lcom/netease/ntunisdk/okio/BufferedSink;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okio/BufferedSink;)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lcom/netease/ntunisdk/okio/BufferedSource;Lcom/netease/ntunisdk/okio/BufferedSink;)Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->source:Lcom/netease/ntunisdk/okio/BufferedSource;

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lcom/netease/ntunisdk/okio/BufferedSink;

    return-object p0
.end method
