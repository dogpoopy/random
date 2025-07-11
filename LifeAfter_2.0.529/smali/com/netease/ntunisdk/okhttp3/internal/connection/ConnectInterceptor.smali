.class public final Lcom/netease/ntunisdk/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Interceptor;


# instance fields
.field public final client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/netease/ntunisdk/okhttp3/internal/connection/ConnectInterceptor;->client:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v2, v4, p1, v3}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->newStream(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Lcom/netease/ntunisdk/okhttp3/Interceptor$Chain;Z)Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;

    move-result-object p1

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/netease/ntunisdk/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/netease/ntunisdk/okhttp3/Request;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;Lcom/netease/ntunisdk/okhttp3/internal/http/HttpCodec;Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;)Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
