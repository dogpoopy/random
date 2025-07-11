.class public Lcom/netease/download/downloader/DownloadParamsQueueManager;
.super Ljava/lang/Object;
.source "DownloadParamsQueueManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskManager"

.field private static sTaskManager:Lcom/netease/download/downloader/DownloadParamsQueueManager;


# instance fields
.field private mHasStart:Z

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mHasStart:Z

    .line 24
    iput-boolean v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mPause:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/download/downloader/DownloadParamsQueueManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->sTaskManager:Lcom/netease/download/downloader/DownloadParamsQueueManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/download/downloader/DownloadParamsQueueManager;

    invoke-direct {v0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->sTaskManager:Lcom/netease/download/downloader/DownloadParamsQueueManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->sTaskManager:Lcom/netease/download/downloader/DownloadParamsQueueManager;

    return-object v0
.end method


# virtual methods
.method public TaskSortAddToParamsList(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    const-string v1, "TaskManager"

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v0, "priority"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority_task"

    .line 76
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 80
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_1

    const/16 v5, 0x9

    if-le v2, v5, :cond_2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DownloadProxy [downloadFunc] Exception1 ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DownloadProxy [downloadFunc] priority\u53c2\u6570\u8bbe\u7f6e\u9519\u8bef\uff0c\u9ed8\u8ba4\u5c06\u8be5\u4efb\u52a1\u4f18\u5148\u7ea7\u8bbe\u7f6e\u4e3a0"

    .line 88
    invoke-static {v1, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadProxy [downloadFunc] JSONException1 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "DownloadProxy [downloadFunc] Exception2 ="

    if-nez v5, :cond_3

    .line 103
    :try_start_2
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 v4, 0x0

    .line 112
    :goto_3
    :try_start_3
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadProxy [downloadFunc] JSONException2 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    if-eqz v2, :cond_7

    .line 119
    iget-object v3, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_6

    .line 124
    :cond_4
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v4, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v6, :cond_5

    if-le v2, v8, :cond_5

    .line 131
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 135
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 138
    :cond_6
    iput-object v3, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 120
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    return-object p1

    :cond_8
    :goto_8
    const-string v0, "TaskManager [TaskSortAddToParamsList] \u53c2\u6570\u9519\u8bef"

    .line 70
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public clear()V
    .locals 4

    const-string v0, "TaskManager"

    const-string v1, "TaskManager [clear] start"

    .line 222
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mPause:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskManager [clear] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatch()V
    .locals 4

    const-string v0, "TaskManager"

    const-string v1, "TaskManager [dispatch] start"

    .line 194
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mPause:Z

    if-eqz v1, :cond_1

    const-string v1, "TaskManager [dispatch] \u4efb\u52a1\u961f\u5217, \u5df2\u5904\u4e8e\u6682\u505c\u72b6\u6001"

    .line 203
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 209
    iget-object v3, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->getInstance()Lcom/netease/download/downloader/DownloadProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/download/downloader/DownloadProxy;->dispachMethod(Lorg/json/JSONObject;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskManager [dispatch] mParamsList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskManager [dispatch] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v1, "TaskManager [dispatch] \u4efb\u52a1\u961f\u5217\u4e2d\uff0c\u5df2\u7ecf\u5168\u90e8\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u5173\u95ed\u4efb\u52a1\u961f\u5217\u5904\u7406"

    .line 197
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iput-boolean v2, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mHasStart:Z

    return-void
.end method

.method public getParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mPause:Z

    :cond_1
    return-void
.end method

.method public put(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "TaskManager"

    const-string v1, "TaskManager [put] start"

    .line 39
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskManager [put] pre mParamsList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mParamsList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->TaskSortAddToParamsList(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskManager [put] after mParamsList size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->start(Lorg/json/JSONObject;)V

    return-void
.end method

.method public start(Lorg/json/JSONObject;)V
    .locals 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskManager [start] mParamsList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskManager"

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "priority"

    .line 155
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "priority_task"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 157
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "downloadid"

    .line 160
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ORBIT] New Task downloadid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " priority="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " priority_task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->getPriority()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v3, "TaskManager [start] \u76ee\u524d\u5df2\u6709\u4efb\u52a1\u6b63\u5728\u4e0b\u8f7d"

    .line 164
    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->getPriority()I

    move-result v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "TaskManager [start] \u76ee\u524d\u5df2\u6709\u4efb\u52a1\u6b63\u5728\u4e0b\u8f7d\uff0c\u6b63\u5728\u4e0b\u8f7d\u7684\u662f\u666e\u901a\u4efb\u52a1\uff0c\u65b0\u6dfb\u52a0\u8fdb\u6765\u7684\u662f\u4f18\u5148\u4efb\u52a1\uff0c\u4e14\u6307\u5b9a\u8981\u53d6\u6d88\u5f53\u524d\u4efb\u52a1\uff0c\u5219\u53d6\u6d88\u6389\u5f53\u524d\u4efb\u52a1"

    .line 167
    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ORBIT] Cancel Task downloadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->getInstance()Lcom/netease/download/downloader/DownloadProxy;

    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    goto :goto_1

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ORBIT] Retain Task downloadid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TaskManager [start] \u76ee\u524d\u5df2\u6709\u4efb\u52a1\u6b63\u5728\u4e0b\u8f7d\uff0c\u6b63\u5728\u4e0b\u8f7d\u7684\u662f\u4f18\u5148\u7ea7\u4efb\u52a1\uff0c\u6216\u8005\u65b0\u589e\u52a0\u8fdb\u6765\u7684\u662f\u666e\u901a\u4efb\u52a1\uff0c\u6216\u8005\u6307\u5b9a\u4e0d\u9700\u8981\u53d6\u6d88\u5f53\u524d\u4efb\u52a1\uff0c\u5219\u65e0\u9700\u53d6\u6d88\u5f53\u524d\u4efb\u52a1"

    .line 175
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "TaskManager [start] \u76ee\u524d\u6ca1\u6709\u4efb\u52a1\u6b63\u5728\u4e0b\u8f7d"

    .line 179
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_1
    iget-boolean p1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mHasStart:Z

    if-eqz p1, :cond_3

    const-string p1, "TaskManager [start] \u4efb\u52a1\u961f\u5217\u5df2\u7ecf\u542f\u52a8\u4e2d\uff0c\u65e0\u6cd5\u518d\u6b21\u542f\u52a8"

    .line 184
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParamsQueueManager;->mHasStart:Z

    .line 190
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParamsQueueManager;->dispatch()V

    return-void
.end method
