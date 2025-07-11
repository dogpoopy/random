.class public interface abstract Lcom/netease/ntunisdk/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract get(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lcom/netease/ntunisdk/okhttp3/Response;)Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lcom/netease/ntunisdk/okhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lcom/netease/ntunisdk/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lcom/netease/ntunisdk/okhttp3/Response;Lcom/netease/ntunisdk/okhttp3/Response;)V
.end method
