.class public abstract Lcom/netease/ntunisdk/okhttp3/internal/Internal;
.super Ljava/lang/Object;


# static fields
.field public static instance:Lcom/netease/ntunisdk/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/netease/ntunisdk/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/netease/ntunisdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/netease/ntunisdk/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lcom/netease/ntunisdk/okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/Address;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lcom/netease/ntunisdk/okhttp3/Address;Lcom/netease/ntunisdk/okhttp3/Address;)Z
.end method

.method public abstract get(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/Address;Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;Lcom/netease/ntunisdk/okhttp3/Route;)Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;
.end method

.method public abstract isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
.end method

.method public abstract newWebSocketCall(Lcom/netease/ntunisdk/okhttp3/OkHttpClient;Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Call;
.end method

.method public abstract put(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;Lcom/netease/ntunisdk/okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lcom/netease/ntunisdk/okhttp3/ConnectionPool;)Lcom/netease/ntunisdk/okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lcom/netease/ntunisdk/okhttp3/OkHttpClient$Builder;Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lcom/netease/ntunisdk/okhttp3/Call;)Lcom/netease/ntunisdk/okhttp3/internal/connection/StreamAllocation;
.end method

.method public abstract timeoutExit(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
