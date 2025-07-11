.class public abstract Lcom/netease/ntunisdk/unilogger/network/BaseRequest;
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
.field public netCallback:Lcom/netease/ntunisdk/unilogger/network/NetCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->netCallback:Lcom/netease/ntunisdk/unilogger/network/NetCallback;

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

    .line 43
    invoke-virtual {p0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->exec()V

    const/4 v0, 0x1

    .line 44
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

    .line 10
    invoke-virtual {p0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public callback(ILjava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->netCallback:Lcom/netease/ntunisdk/unilogger/network/NetCallback;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/unilogger/network/NetCallback;->onNetCallback(ILjava/lang/String;)V

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

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->createRequestBody()Lcom/netease/ntunisdk/okhttp3/RequestBody;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->createRequest(Lcom/netease/ntunisdk/okhttp3/RequestBody;)Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/network/OkHttpProxy;->exec(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->handleResponse(Lcom/netease/ntunisdk/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestBase net  [exec] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniLogger"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

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

.method public registerNetCallback(Lcom/netease/ntunisdk/unilogger/network/NetCallback;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/network/BaseRequest;->netCallback:Lcom/netease/ntunisdk/unilogger/network/NetCallback;

    return-void
.end method
