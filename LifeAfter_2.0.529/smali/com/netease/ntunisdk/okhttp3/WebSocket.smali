.class public interface abstract Lcom/netease/ntunisdk/okhttp3/WebSocket;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/WebSocket$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract close(ILjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract queueSize()J
.end method

.method public abstract request()Lcom/netease/ntunisdk/okhttp3/Request;
.end method

.method public abstract send(Lcom/netease/ntunisdk/okio/ByteString;)Z
.end method

.method public abstract send(Ljava/lang/String;)Z
.end method
