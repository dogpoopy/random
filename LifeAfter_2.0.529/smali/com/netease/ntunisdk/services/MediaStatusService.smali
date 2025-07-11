.class public interface abstract Lcom/netease/ntunisdk/services/MediaStatusService;
.super Ljava/lang/Object;
.source "MediaStatusService.java"


# virtual methods
.method public abstract check(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "command"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "media_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/netease/ntunisdk/services/MediaModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://upload.twitter.com/1.1/media/upload.json"
    .end annotation
.end method
