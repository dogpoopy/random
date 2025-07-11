.class final Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;
.super Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

.field final synthetic this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/okhttp3/RealCall;

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/okhttp3/RealCall;Lcom/netease/ntunisdk/okhttp3/Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/RealCall;->timeout:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->enter()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/RealCall;->getResponseWithInterceptorChain()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    iget-object v3, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-interface {v2, v3, v0}, Lcom/netease/ntunisdk/okhttp3/Callback;->onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/RealCall;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okhttp3/Dispatcher;->finished(Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/RealCall;->cancel()V

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    iget-object v3, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    throw v0

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->get()Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/ntunisdk/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/RealCall;->access$000(Lcom/netease/ntunisdk/okhttp3/RealCall;)Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {v1, v2, v0}, Lcom/netease/ntunisdk/okhttp3/EventListener;->callFailed(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    iget-object v2, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v1, v1, Lcom/netease/ntunisdk/okhttp3/RealCall;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/okhttp3/Dispatcher;->finished(Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-static {p1}, Lcom/netease/ntunisdk/okhttp3/RealCall;->access$000(Lcom/netease/ntunisdk/okhttp3/RealCall;)Lcom/netease/ntunisdk/okhttp3/EventListener;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-virtual {p1, v1, v0}, Lcom/netease/ntunisdk/okhttp3/EventListener;->callFailed(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/netease/ntunisdk/okhttp3/Callback;

    iget-object v1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    invoke-interface {p1, v1, v0}, Lcom/netease/ntunisdk/okhttp3/Callback;->onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/RealCall;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/okhttp3/Dispatcher;->finished(Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/RealCall;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->dispatcher()Lcom/netease/ntunisdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/okhttp3/Dispatcher;->finished(Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;)V

    throw p1
.end method

.method get()Lcom/netease/ntunisdk/okhttp3/RealCall;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/RealCall;->originalRequest:Lcom/netease/ntunisdk/okhttp3/Request;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/netease/ntunisdk/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/netease/ntunisdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/netease/ntunisdk/okhttp3/RealCall;->originalRequest:Lcom/netease/ntunisdk/okhttp3/Request;

    return-object v0
.end method
