.class Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

.field final synthetic val$request:Lcom/netease/ntunisdk/okhttp3/Request;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;Lcom/netease/ntunisdk/okhttp3/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lcom/netease/ntunisdk/okhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/netease/ntunisdk/okhttp3/Response;)V

    return-void
.end method

.method public onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->checkResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/Internal;->streamAllocation(Lcom/netease/ntunisdk/okhttp3/Call;)Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;)Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/netease/ntunisdk/okhttp3/WebSocketListener;

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v2, p2}, Lcom/netease/ntunisdk/okhttp3/WebSocketListener;->onOpen(Lcom/netease/ntunisdk/okhttp3/WebSocket;Lcom/netease/ntunisdk/okhttp3/Response;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lcom/netease/ntunisdk/okhttp3/Request;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, p2, v0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$Streams;)V

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/netease/ntunisdk/okhttp3/Response;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p1, p2}, Lcom/netease/ntunisdk/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/netease/ntunisdk/okhttp3/Response;)V

    invoke-static {p2}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
