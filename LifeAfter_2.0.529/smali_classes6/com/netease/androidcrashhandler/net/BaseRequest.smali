.class public abstract Lcom/netease/androidcrashhandler/net/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public requestCallback:Lcom/netease/androidcrashhandler/net/RequestCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/netease/androidcrashhandler/net/BaseRequest;->requestCallback:Lcom/netease/androidcrashhandler/net/RequestCallback;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->exec()V

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/androidcrashhandler/net/BaseRequest;->requestCallback:Lcom/netease/androidcrashhandler/net/RequestCallback;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/netease/androidcrashhandler/net/RequestCallback;->onResponse(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public exec()V
    .locals 3

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->printRequestBody(Lcom/netease/ntunisdk/okhttp3/RequestBody;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/netease/androidcrashhandler/thirdparty/okhttp/OkHttpProxy;->exec(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/netease/androidcrashhandler/net/BaseRequest;->handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestBase net [exec] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected printRequestBody(Lcom/netease/ntunisdk/okhttp3/RequestBody;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "trace"

    if-nez p1, :cond_0

    const-string p1, "RequestBase net [showRequestBody] requestBody is null"

    .line 53
    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/util/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :try_start_0
    new-instance v1, Lcom/netease/ntunisdk/okio/Buffer;

    invoke-direct {v1}, Lcom/netease/ntunisdk/okio/Buffer;-><init>()V

    .line 59
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/okhttp3/RequestBody;->writeTo(Lcom/netease/ntunisdk/okio/BufferedSink;)V

    .line 60
    invoke-virtual {v1}, Lcom/netease/ntunisdk/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Length: "

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "RequestBase net [showRequestBody] RequestBody content="

    if-lez v1, :cond_1

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0xa

    .line 63
    :try_start_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerRequestCallback(Lcom/netease/androidcrashhandler/net/RequestCallback;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/netease/androidcrashhandler/net/BaseRequest;->requestCallback:Lcom/netease/androidcrashhandler/net/RequestCallback;

    return-void
.end method
