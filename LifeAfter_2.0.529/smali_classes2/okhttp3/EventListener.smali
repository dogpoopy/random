.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lokhttp3/EventListener$1;

    invoke-direct {v0}, Lokhttp3/EventListener$1;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;
    .locals 1
    .param p0, "listener"    # Lokhttp3/EventListener;

    .line 63
    new-instance v0, Lokhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lokhttp3/EventListener$2;-><init>(Lokhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 276
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 284
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 79
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .line 157
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .line 111
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .line 166
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .line 177
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 91
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 221
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 213
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "request"    # Lokhttp3/Request;

    .line 200
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 189
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 267
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 256
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 244
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 233
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "handshake"    # Lokhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;

    .line 126
    return-void
.end method
