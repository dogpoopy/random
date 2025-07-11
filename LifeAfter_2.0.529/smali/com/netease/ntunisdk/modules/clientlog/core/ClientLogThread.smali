.class public Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;
.super Ljava/lang/Thread;
.source "ClientLogThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientLogThread"


# instance fields
.field private final databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

.field public volatile isExistData:Z


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->isExistData:Z

    .line 26
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    return-void
.end method

.method private declared-synchronized startPatchSubmit()V
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->isExistData:Z

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllRecord()Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->submitPatch(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ClientLogModule"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSubmitTasks Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized startSingleSubmit()V
    .locals 12

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->getInstance()Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogThreadPool;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-string v0, "ClientLogModule"

    const-string v1, "ConsumerThread is interrupted, shutdown ThreadPool"

    .line 43
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->isExistData:Z

    if-eqz v1, :cond_4

    .line 48
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllCount()I

    move-result v1

    const/16 v2, 0x32

    const/16 v3, 0x14

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 56
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->queryAllNoSubmitRecord()Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {v4}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    new-instance v5, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;

    iget-object v6, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    invoke-direct {v5, v4, v6}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogTask;-><init>(Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;)V

    .line 59
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "status"

    const/4 v8, 0x1

    .line 60
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    iget-object v7, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    const-string v9, "ID"

    new-array v8, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v1

    invoke-virtual {v7, v6, v9, v8}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->update(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ClientLogModule"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSingleSubmit Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    sget-object v0, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->SUBMIT_MODULE:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    sget-object v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;->MODEL_PATCH:Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant$SubmitModel;

    if-ne v0, v1, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->startPatchSubmit()V

    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->startSingleSubmit()V

    :goto_0
    return-void
.end method

.method public submitPatch(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :try_start_0
    sget v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->EB_TAG:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "https://sigma-adclientlog-g0.proxima.nie.netease.com"

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string v3, "https://sigma-adclientlog-g0.proxima.nie.easebar.com"

    goto :goto_0

    .line 99
    :cond_0
    sget v1, Lcom/netease/ntunisdk/modules/clientlog/constant/ClientLogConstant;->EB_TAG:I

    .line 102
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    .line 104
    invoke-virtual {v5}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getJsonString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    const-string v5, "X-Content-Type"

    const-string v6, "application/list"

    invoke-static {v3, v1, v4, v5, v6}, Lcom/netease/ntunisdk/modules/clientlog/utils/HttpUtil;->postData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;

    .line 111
    iget-object v4, p0, Lcom/netease/ntunisdk/modules/clientlog/core/ClientLogThread;->databaseManager:Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;

    const-string v5, "ID"

    new-array v6, v2, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/modules/clientlog/database/ClientLogTable;->getID()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/netease/ntunisdk/modules/clientlog/database/DatabaseManager;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    return v1

    :catch_0
    move-exception p1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ClientLogModule"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/modules/base/utils/LogModule;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
