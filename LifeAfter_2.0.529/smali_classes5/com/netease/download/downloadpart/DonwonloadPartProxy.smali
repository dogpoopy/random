.class public Lcom/netease/download/downloadpart/DonwonloadPartProxy;
.super Ljava/lang/Object;
.source "DonwonloadPartProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DonwonloadPartProxy"


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mParamsList:[Lcom/netease/download/downloader/DownloadParams;

.field private mState:Lcom/netease/download/Const$Stage;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mType:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mState:Lcom/netease/download/Const$Stage;

    .line 32
    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 33
    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mAl:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public init([Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    .line 38
    iput p3, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mType:I

    .line 39
    iput-object p2, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mState:Lcom/netease/download/Const$Stage;

    return-void
.end method

.method public start()I
    .locals 8

    const-string v0, "DonwonloadPartProxy [start] \u5206\u7247\u4e0b\u8f7d\u6a21\u5757"

    .line 43
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DonwonloadPartProxy [start]  \u5206\u7247\u6570="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DonwonloadPartProxy"

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 47
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mAl:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 53
    new-instance v6, Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;-><init>()V

    .line 54
    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    .line 55
    invoke-virtual {v6, v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 56
    iget-object v5, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mAl:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mAl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/16 v4, 0xb

    .line 63
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DonwonloadPartProxy Exception e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DonwonloadPartProxy InterruptedException e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v2

    .line 68
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DonwonloadPartProxy ExecutionException e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v3, 0xb

    goto :goto_1

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DonwonloadPartProxy [start]  \u5206\u7247\u603b\u4e0b\u8f7d\u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    :cond_4
    return v3
.end method
