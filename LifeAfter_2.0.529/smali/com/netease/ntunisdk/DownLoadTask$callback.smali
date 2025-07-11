.class public interface abstract Lcom/netease/ntunisdk/DownLoadTask$callback;
.super Ljava/lang/Object;
.source "DownLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/DownLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "callback"
.end annotation


# virtual methods
.method public abstract onFinish(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/ntunisdk/DownLoadTask$DownloadItem;",
            ">;)V"
        }
    .end annotation
.end method
