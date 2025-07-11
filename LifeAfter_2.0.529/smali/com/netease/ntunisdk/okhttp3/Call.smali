.class public interface abstract Lcom/netease/ntunisdk/okhttp3/Call;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/okhttp3/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/netease/ntunisdk/okhttp3/Call;
.end method

.method public abstract enqueue(Lcom/netease/ntunisdk/okhttp3/Callback;)V
.end method

.method public abstract execute()Lcom/netease/ntunisdk/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lcom/netease/ntunisdk/okhttp3/Request;
.end method

.method public abstract timeout()Lcom/netease/ntunisdk/okio/Timeout;
.end method
