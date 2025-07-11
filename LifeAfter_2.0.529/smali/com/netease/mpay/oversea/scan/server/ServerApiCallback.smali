.class public interface abstract Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;
.super Ljava/lang/Object;
.source "ServerApiCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation
.end method
